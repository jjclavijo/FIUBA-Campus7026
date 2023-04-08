(package-initialize)

(require 'htmlize)
(require 'ox-publish)

(setq org-publish-project-alist
  (list
    (list "org-hidro"
            ;; Path to your org files.
            :base-directory "/opt/OrgFiles/org_based_pages"
            :base-extension "org"

            ;; Path to your Jekyll project.
            :publishing-directory "/opt/OrgFiles/sitio"
            :recursive t
            :publishing-function 'org-html-publish-to-html
            :headline-levels 4
            :html-extension "html"
            :body-only t ;; Only export section between <body> </body>
            )

    (list "org-hidro-static"
          :base-directory "/opt/OrgFiles/org_based_pages"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php\\|jpeg"
          :publishing-directory "/opt/OrgFiles/sitio"
          :recursive t
          :publishing-function 'org-publish-attachment
          )

    ;;(list "hidro" :components (list "org-hidro" "org-hidro-static"))
    ;;(list "hidro" :components (list "org-hidro" "org-hidro-static"))

  ))

;; Generate the site output
(org-publish-all t)
