;; Type section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\02\01\00"                 ;; Import section with zero entries
      "\01\01\00"                 ;; Type section with zero entries
  )
  "unexpected content after last section"
)
