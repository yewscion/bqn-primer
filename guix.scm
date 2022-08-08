(use-modules
 ;;; These are my commonly needed modules; remove unneeded ones.
 (guix packages)
 ((guix licenses) #:prefix license:)
 (guix download)
 (guix build-system gnu)
 (gnu packages autotools)
 (gnu packages pkg-config)
 (gnu packages texinfo)
 (gnu packages tex)
 (guix gexp))

(package
  (name "bqn-primer")
  (version "0.0.1")
  (source (local-file (string-append "./"
                                     name
                                     "-"
                                     version
                                     ".tar.bz2")))
  (build-system gnu-build-system)
  (arguments
   `(#:tests? #f))
  (native-inputs (list autoconf
                       automake
                       pkg-config
                       texinfo
                       texlive-amsfonts
                       texlive-bin
                       texlive-latex-pdftexcmds
                       texlive-latex-base
                       texlive-tex-texinfo
                       texlive-kpathsea
                       texlive-cm
                       texlive-metafont))
  (synopsis "Guide to BQN.")
  (description
   (string-append
    "This is a longer description of the project, which is wrapped using the "
    "string-append function and trailing spaces.."))
  (home-page
   "https://sr.ht/~yewscion/bqn-primer/")
  (license license:fdl1.3+))
;; Local Variables:
;; mode: scheme
;; End:
