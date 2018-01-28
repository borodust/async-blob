(asdf:defsystem async-blob
  :author "Pavel Korolev"
  :description "UV foreign library collection"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :libraries (((:darwin :x86-64) "libuv.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libuv.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libuv.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libuv.so.bodged" "x86/")
              ((:windows :x86-64) "libuv.dll.bodged" "x86_64/")
              ((:windows :x86) "libuv.dll.bodged" "x86/")))
