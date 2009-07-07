(add-test! 'file-name-sans-extension 'string-and-chars
	   (lambda ()
	     (and (string=? (file-name-sans-extension ".scm") ".scm")
		  (string=? (file-name-sans-extension "/.scm") "/.scm")
		  (string=? (file-name-sans-extension "a/.scm") "a/.scm")
		  (string=? (file-name-sans-extension "t.scm") "t")
		  (string=? (file-name-sans-extension "a/t.scm") "a/t")
		  (string=? (file-name-sans-extension "/a/t.scm") "/a/t")
		  (string=? (file-name-sans-extension "/a/b.c/t.scm") "/a/b.c/t")
		  (string=? (file-name-sans-extension "") "")
		  (string=? (file-name-sans-extension "t") "t")
		  (string=? (file-name-sans-extension "a/t") "a/t")
		  (string=? (file-name-sans-extension "/a/t") "/a/t")
		  (string=? (file-name-sans-extension "/a/b.c/t") "/a/b.c/t"))))
	     