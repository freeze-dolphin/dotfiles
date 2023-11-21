# install-bspwm:
# 	cp alacritty/alacritty.yml ~/.config/alacritty.yml
# 	cp -r bspwm/ ~/.config/bspwm/
# 	cp -r picom/ ~/.config/picom/
# 	cp -r sxhkd/ ~/.config/sxhkd/
# 	cp -r polybar/ ~/.config/polybar/

# install-cinnamon:
# 	dconf load /org/cinnamon/ < dconf/cinnamon_desktop_backup
# 	echo Load system-monitor config from `./cinnamon/applets/system-monitor.json`

# install-emacs:
# 	@if [ -e ~/.emacs.d/spacemacs.mk ]; then (cp emacs/spacemacs ~/.spacemacs); fi

all:
		>&2 echo "Try install manually according to this Makefile."
