(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7c\7c\01\7f\03\82\80\80\80\00\01\00\05\83\80"
  "\80\80\00\01\00\01\07\85\80\80\80\00\01\01\66\00"
  "\00\0a\95\81\80\80\00\01\8f\81\80\80\00\01\01\7f"
  "\41\00\28\02\00\41\01\28\02\00\41\02\28\02\00\41"
  "\03\28\02\00\41\04\28\02\00\41\05\28\02\00\41\06"
  "\28\02\00\41\07\28\02\00\41\08\28\02\00\41\09\28"
  "\02\00\41\0a\28\02\00\41\0b\28\02\00\41\0c\28\02"
  "\00\41\0d\28\02\00\41\0e\28\02\00\41\0f\28\02\00"
  "\41\10\28\02\00\41\11\28\02\00\41\12\28\02\00\41"
  "\13\28\02\00\04\40\20\00\20\01\65\21\02\05\20\00"
  "\20\01\65\21\02\0b\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a"
  "\6a\6a\6a\6a\6a\6a\6a\6a\20\02\6a\0b\0b\a0\80\80"
  "\80\00\01\00\41\00\0b\1a\61\62\63\64\65\66\67\68"
  "\69\6a\6b\6c\6d\6e\6f\70\71\72\73\74\75\76\77\78"
  "\79\7a"
)
(assert_return
  (invoke "f"
    (f64.const 0x1.1999_9999_9999_ap+0)
    (f64.const 0x1.1999_9999_9999_ap+1)
  )
  (i32.const 0x1f0b_f8df)
)
(assert_return
  (invoke "f"
    (f64.const 0x1.8ccc_cccc_cccc_dp+1)
    (f64.const 0x1.1999_9999_9999_ap+1)
  )
  (i32.const 0x1f0b_f8de)
)
(assert_return
  (invoke "f"
    (f64.const 0x1.8ccc_cccc_cccc_dp+1)
    (f64.const nan:0x8_0000_0000_0000)
  )
  (i32.const 0x1f0b_f8de)
)
