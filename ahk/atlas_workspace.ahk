#SingleInstance Force
#Requires AutoHotkey v2.0

if !InStr(A_OSVersion, "10.0.") {
    MsgBox "Windows 10 supported only, current OS:" A_OSVersion
    ExitApp
}

;; PRELUDE END

{ ; Disable taskbar W-1 ~ W-9 shortcuts
    #1::
    #2::
    #3::
    #4::
    #5::
    #6::
    #7::
    #8::
    #9::
    {
        return
    }
}

{ ; Terminal Shortcuts

    #Enter::
    {
        Run "wt", EnvGet("UserProfile")

        WinWait "ahk_class CASCADIA_HOSTING_WINDOW_CLASS", , 4

        try {
            WinWait "ahk_class CASCADIA_HOSTING_WINDOW_CLASS", , 4
            if WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS") {
                WinRestore
                Sleep 80
                WinActivate
            }
        } catch {
        }
        return
    }

    #+Enter::
    {
        Run "wt -p Gentoo"

        WinWait "ahk_class CASCADIA_HOSTING_WINDOW_CLASS", , 4

        try {
            WinWait "ahk_class CASCADIA_HOSTING_WINDOW_CLASS", , 4
            if WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS") {
                WinRestore
                Sleep 80
                WinActivate
            }
        } catch {
        }
        return
    }
}

{ ; close window shortcuts

    {
        windowBlacklist := [
            "Flow.Launcher.exe"
        ]

        IsBlacklistedWindow(hwnd) {
            global windowBlacklist

            processName := WinGetProcessName("A")
            className := WinGetClass(hwnd)

            for exe in windowBlacklist {
                if (processName = exe) {
                    return true
                }
            }

            if (processName = "Rainmeter.exe" && className = "RainmeterMeterWindow") {
                return true
            }

            return false
        }

        IsDesktopWindow(hwnd) {
            processName := WinGetProcessName(hwnd)
            className := WinGetClass(hwnd)

            return processName = "explorer.exe"
                && className ~= "^(Progman|WorkerW)$"
        }

        CloseActiveWindow() {
            hwnd := WinExist("A")

            if hwnd
                && !IsBlacklistedWindow(hwnd)
                && !IsDesktopWindow(hwnd) {
                WinClose(hwnd)
            }
        }

        !F4:: CloseActiveWindow()
        #q:: CloseActiveWindow()
    }

    {
        ; DiscordAltF4
        ; Version: 0.0.4
        ; https://github.com/asheroto/DiscordAltF4
        ; AutoHotkey v2

        #HotIf WinActive("ahk_exe Discord.exe")
        !F4:: WinClose()
        #q:: WinClose()
        #HotIf
    }
}

{ ; Explorer Modifications

    ;; C-H toggle whether to show hidden files
    ^h:: {
        regKey := "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

        winClass := WinGetClass("A")
        if (winClass != "CabinetWClass" && winClass != "ExplorerWClass") {
            return
        }

        hiddenStatus := RegRead(regKey, "Hidden")

        if (hiddenStatus = 2) {
            RegWrite(1, "REG_DWORD", regKey, "Hidden")
        } else {
            RegWrite(2, "REG_DWORD", regKey, "Hidden")
        }

        PostMessage(0x111, 41504, , , "ahk_class CabinetWClass")
    }

}

{ ; total commander

    ; #e::
    ; {
    ;     Run "C:\Users\Administrator\AppData\Local\TotalCMD64\TotalCMD64.exe"
    ; }

}

{ ; taskmgr

    ^+Esc::
    {
        if WinExist("ahk_exe SystemInformer.exe") {
            WinActivate
        }
        else {
            Run "C:\Program Files\SystemInformer\SystemInformer.exe"
        }
    }

}
