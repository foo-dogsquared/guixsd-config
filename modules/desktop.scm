; My desktop environment that helps me to be "productive".
(define-module (modules desktop)
  #:use-module (gnu packages)
  #:use-module ((modules _utils) #:prefix utils:
                                 #:select (create-pkg-interface)))


; With the free and libre browsers here, it's asking me to be a heretic with this one.
; TODO: Create Brave and Firefox package (ooh, a big task...).
(utils:create-pkg-interface
  pkgs-browsers
  '(
     (firefox . ("icecat"))
     (nyxt . ("nyxt"))
     (chromium . ("ungoogled-chromium"))))


; Ah, the CAD programs...
; Welp, it's mostly enough anyways (aside from brl-cad).
; TODO: Create a package for brl-cad (maybe contribute it to the official package archive).
(utils:create-pkg-interface
  pkgs-cad
  '(
     (default . ("freecad"
                 "leocad"))
     (kicad . ("kicad"
               "kicad-symbols"
               "kicad-packages3d"))))


; All of the file-related packages.
(utils:create-pkg-interface
  pkgs-files
  '(
      (default . ("magic-wormhole"           ; Magically transfer stuff between your wormholes!
                  "perl-image-exiftool"      ; A file metadata reader/writer/manager/helicopter.
                  "syncthing"                ; A peer-to-peer synchro summoning tool.
                  "thunar"                   ; My go-to graphical file manager.
                  "thunar-volman"            ; Manage your volumes.
                  "transmission"             ; One way to sail the high seas from the terminal.
                  "udiskie"                  ; Manage them automatic automounting.
                  "unison"                   ; Unifying your archives.
                 ))))


; Fonts? Fonts.
; TODO: Package Stix.
(utils:create-pkg-interface
  pkgs-fonts
  '(
     (default . ("emacs-all-the-icons"
                 "emacs-all-the-icons-dired"
                 "font-adobe-source-code-pro"
                 "font-adobe-source-sans-pro"
                 "font-adobe-source-serif-pro"
                 "font-fira-code"
                 "font-google-noto"
                 "font-ibm-plex"
                 "font-iosevka"
                 "font-jetbrains-mono"
                ))))


; Libre graphics workflow.
; TODO: Package goxel and the unfree version of aseprite.
(utils:create-pkg-interface
  pkgs-graphics
  '(
     (default . ("imagemagick"              ; A image manipulation library for hipsters.
                  ))

     (raster . ("gimp"                      ; Adobe Photoshop for libre!
                "gimp-resynthesizer"        ; A texture creation plugin for GIMP.
                "krita"                     ; A good painting program.
               ))

     (vector . ("inkscape@1.0"              ; Adobe Illustrator (or Affinity Designer) substitute.
                     ))

     (3d . ("blender"                       ; A tool to mix your ideas together into 3D.
            "goxel"                         ; Pixel except 3D!
           ))))


; Muh consumer applications...
(utils:create-pkg-interface
  pkgs-multimedia
  '(
     (default . ("ffmpeg"                   ; Muh codecs.
                 "hexchat"                  ; One of the gateways of hipster communication.
                 "kdenlive"                 ; Adobe Premiere replacement.
                 "mpv"                      ; The embeddable video player.
                 "newsboat"                 ; The RSS reader for your comfort at $HOME.
                 "obs"                      ; Finally! The package name is not 'obs-studio'.
                 "icedove"                  ; Mozilla Thunderbird replacement (for now, anyways).
                 "zathura"                  ; The PDF reader for ricers.
                 "zathura-cb"               ; I can read comic books in Zathura?
                 "zathura-djvu"             ; Zathura DJVU document plugin.
                 "zathura-pdf-poppler"      ; Zathura PDF document plugin.
                 "zathura-ps"               ; Zathura Postscript document plugin.
                ))))


; I'm not in academia but I like managing my "research".
(utils:create-pkg-interface
  pkgs-research
  '(
    (default . ("exiftool"                  ; A file metadata reader/writer/helicopter/whatever.
                ;"zotero"                   ; An academic's best friend for literature management.
               ))))


; I create "music" (with no formal experience whatsoever) so here's my "music" workflow.
(utils:create-pkg-interface
  pkgs-music
  '(
     (composition . ("lilypond"             ; Prevent your compositions from being lost by the time you're at your grave, engrave NOW!
                     "musescore"            ; A music composer, soon-to-be a complete music composition workflow tool.
                     "fluid-3"              ; A soundfont for something.
                     "supercollider"        ; Programming platform for them algorithmic raves.
                      ))

     (production . ("ardour"                ; A DAW for hardware recording.
                    "audacity"              ; Belongs in the great city of "Simple tools for short audio samples".
                    "carla"                 ; A plugin host useful for a consistent hub for your instruments.
                    "fluidsynth"            ; Synth for fluid sounds.
                    "helm"                  ; A very cool polyphonic synthesizer plugin.
                    "hydrogen"              ; Kickass programmable drum machine.
                    "yoshimi"               ; Another synthesizer to try.
                    "zynaddsubfx"           ; ZE most advanced synthesizer (or so I've heard).
                   ))))

