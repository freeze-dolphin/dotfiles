(provide 'utils)

(defun slurp (f)
  (with-temp-buffer
    (insert-file-contents f)
    (buffer-substring-no-properties    
     (point-min)
     (point-max))))
