(component
  (type (;0;) (list u8))
  (type (;1;) (option (type 0)))
  (type (;2;) (func (param "key" string) (result (type 1))))
  (type (;3;) (func (param "key" string) (param "value" (type 0))))
  (type (;4;) 
    (instance
      (alias outer 1 2 (type (;0;)))
      (export "get" (type 0))
      (alias outer 1 3 (type (;1;)))
      (export "put" (type 1))
    )
  )
  (type (;5;) (func (param "url" string) (result (type 0))))
  (type (;6;) 
    (instance
      (alias outer 1 5 (type (;0;)))
      (export "fetch" (type 0))
    )
  )
  (module (;0;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32 i32 i32) (result i32)))
    (type (;2;) (func (param i32 i32) (result i32)))
    (type (;3;) (func (param i32 i32 i32)))
    (type (;4;) (func (param i32 i32 i32 i32)))
    (type (;5;) (func))
    (type (;6;) (func (param i32) (result i32)))
    (type (;7;) (func (param i32)))
    (type (;8;) (func (param i32 i32 i32 i32 i32)))
    (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32)))
    (type (;11;) (func (param i32) (result i64)))
    (type (;12;) (func (result i32)))
    (type (;13;) (func (param i32 i32 i32 i32 i32) (result i32)))
    (type (;14;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
    (type (;15;) (func (param i32 i32 i32) (result i64)))
    (type (;16;) (func (param i64 i32 i32) (result i32)))
    (import "backend-0.1.0" "fetch" (func $_ZN6origin5fetch10wit_import17h013cec6c970ebfacE (type 3)))
    (import "cache-0.1.0" "get" (func $_ZN5cache3get10wit_import17h5968e0566bff2a5bE (type 3)))
    (import "cache-0.1.0" "put" (func $_ZN5cache3put10wit_import17h057e18890376b7a0E (type 4)))
    (func $_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h09521dd7e5675452E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN5alloc11collections15TryReserveError4kind17hfae5d58b5b98a898E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 1
      call $_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17he50687423783e996E
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 4
      i32.load
      local.set 6
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      i32.const 16
      local.set 7
      local.get 4
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      return
    )
    (func $_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17he50687423783e996E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=20
      local.get 4
      local.get 1
      i32.store offset=16
      local.get 4
      i32.load offset=16
      local.set 5
      local.get 5
      i32.load offset=4
      local.set 6
      i32.const 0
      local.set 7
      local.get 6
      local.get 7
      i32.ne
      local.set 8
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 8
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          i32.const 0
          local.set 9
          local.get 4
          local.get 9
          i32.store offset=12
          br 1 (;@1;)
        end
        local.get 4
        i32.load offset=16
        local.set 10
        local.get 4
        local.get 10
        i32.store offset=24
        local.get 4
        i32.load offset=16
        local.set 11
        local.get 4
        local.get 11
        i32.store offset=28
        local.get 4
        local.get 10
        call $_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17hc0054ed3c3db3b5dE
        local.get 4
        i32.load offset=4
        local.set 12
        local.get 4
        i32.load
        local.set 13
        local.get 11
        call $_ZN4core5clone5Clone5clone17hc99e05eb59e77c65E
        local.get 4
        local.get 13
        i32.store offset=8
        local.get 4
        local.get 12
        i32.store offset=12
      end
      local.get 4
      i32.load offset=8
      local.set 14
      local.get 4
      i32.load offset=12
      local.set 15
      local.get 0
      local.get 15
      i32.store offset=4
      local.get 0
      local.get 14
      i32.store
      i32.const 32
      local.set 16
      local.get 4
      local.get 16
      i32.add
      local.set 17
      local.get 17
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN4core3ptr8metadata14from_raw_parts17he6b5c5f88818e159E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 6
      local.get 5
      i32.load offset=20
      local.set 7
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 5
      local.get 7
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 8
      local.get 5
      i32.load offset=12
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      return
    )
    (func $_ZN4core3ptr8metadata18from_raw_parts_mut17hb8b7c4f008eb88dfE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 6
      local.get 5
      i32.load offset=20
      local.set 7
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 5
      local.get 7
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 8
      local.get 5
      i32.load offset=12
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      return
    )
    (func $_ZN4core3ptr8metadata18from_raw_parts_mut17hfa8dd298a6445667E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 6
      local.get 5
      i32.load offset=20
      local.set 7
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 5
      local.get 7
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 8
      local.get 5
      i32.load offset=12
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      return
    )
    (func $_ZN4core3ptr8metadata8metadata17h64ff0f9e6085de78E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store
      local.get 4
      local.get 1
      i32.store offset=4
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 5
      return
    )
    (func $_ZN4core3mem6forget17hc5144766be392e24E (type 0) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=24
      local.get 4
      local.get 1
      i32.store offset=28
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      return
    )
    (func $_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h9df9fa6a474509daE (type 5)
      (local i32 i32)
      global.get $__stack_pointer
      local.set 0
      i32.const 16
      local.set 1
      local.get 0
      local.get 1
      i32.sub
      drop
      return
    )
    (func $_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h12374d677c463b4fE (type 6) (param i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN55_$LT$service..Component$u20$as$u20$backend..Backend$GT$5fetch17h9ba26aca743a916dE (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 80
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      i32.const 24
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.get 1
      call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99cc1660949c5904E
      local.get 4
      i32.load offset=28
      local.set 7
      local.get 4
      i32.load offset=24
      local.set 8
      i32.const 32
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 11
      local.get 8
      local.get 7
      call $_ZN5cache3get17heeb15c6bc9e6bb76E
      local.get 4
      i32.load offset=32
      local.set 12
      i32.const 0
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.set 15
      local.get 14
      local.get 15
      i32.eq
      local.set 16
      i32.const 0
      local.set 17
      i32.const 1
      local.set 18
      i32.const 1
      local.set 19
      local.get 16
      local.get 19
      i32.and
      local.set 20
      local.get 17
      local.get 18
      local.get 20
      select
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.set 23
      local.get 22
      local.set 24
      local.get 23
      local.get 24
      i32.eq
      local.set 25
      i32.const 1
      local.set 26
      local.get 25
      local.get 26
      i32.and
      local.set 27
      block  ;; label = @1
        block  ;; label = @2
          local.get 27
          i32.eqz
          br_if 0 (;@2;)
          i32.const 32
          local.set 28
          local.get 4
          local.get 28
          i32.add
          local.set 29
          local.get 29
          local.set 30
          i32.const 48
          local.set 31
          local.get 4
          local.get 31
          i32.add
          local.set 32
          local.get 32
          local.set 33
          local.get 30
          i64.load align=4
          local.set 34
          local.get 33
          local.get 34
          i64.store align=4
          i32.const 8
          local.set 35
          local.get 33
          local.get 35
          i32.add
          local.set 36
          local.get 30
          local.get 35
          i32.add
          local.set 37
          local.get 37
          i32.load
          local.set 38
          local.get 36
          local.get 38
          i32.store
          i32.const 48
          local.set 39
          local.get 4
          local.get 39
          i32.add
          local.set 40
          local.get 40
          local.set 41
          local.get 41
          i64.load align=4
          local.set 42
          local.get 0
          local.get 42
          i64.store align=4
          i32.const 8
          local.set 43
          local.get 0
          local.get 43
          i32.add
          local.set 44
          local.get 41
          local.get 43
          i32.add
          local.set 45
          local.get 45
          i32.load
          local.set 46
          local.get 44
          local.get 46
          i32.store
          local.get 1
          call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8626a616aa78d3b4E
          br 1 (;@1;)
        end
        i32.const 32
        local.set 47
        local.get 4
        local.get 47
        i32.add
        local.set 48
        local.get 48
        local.set 49
        local.get 49
        call $_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h60f74507083c9b40E
        i32.const 16
        local.set 50
        local.get 4
        local.get 50
        i32.add
        local.set 51
        local.get 51
        local.get 1
        call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99cc1660949c5904E
        local.get 4
        i32.load offset=20
        local.set 52
        local.get 4
        i32.load offset=16
        local.set 53
        i32.const 64
        local.set 54
        local.get 4
        local.get 54
        i32.add
        local.set 55
        local.get 55
        local.set 56
        local.get 56
        local.get 53
        local.get 52
        call $_ZN6origin5fetch17h801138fbf4732735E
        i32.const 8
        local.set 57
        local.get 4
        local.get 57
        i32.add
        local.set 58
        local.get 58
        local.get 1
        call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99cc1660949c5904E
        local.get 4
        i32.load offset=12
        local.set 59
        local.get 4
        i32.load offset=8
        local.set 60
        i32.const 64
        local.set 61
        local.get 4
        local.get 61
        i32.add
        local.set 62
        local.get 4
        local.get 62
        call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbb125c52d17c204aE
        local.get 4
        i32.load offset=4
        local.set 63
        local.get 4
        i32.load
        local.set 64
        local.get 60
        local.get 59
        local.get 64
        local.get 63
        call $_ZN5cache3put17h9433ec1a5666185bE
        i32.const 64
        local.set 65
        local.get 4
        local.get 65
        i32.add
        local.set 66
        local.get 66
        local.set 67
        local.get 67
        i64.load align=4
        local.set 68
        local.get 0
        local.get 68
        i64.store align=4
        i32.const 8
        local.set 69
        local.get 0
        local.get 69
        i32.add
        local.set 70
        local.get 67
        local.get 69
        i32.add
        local.set 71
        local.get 71
        i32.load
        local.set 72
        local.get 70
        local.get 72
        i32.store
        local.get 1
        call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8626a616aa78d3b4E
      end
      i32.const 80
      local.set 73
      local.get 4
      local.get 73
      i32.add
      local.set 74
      local.get 74
      global.set $__stack_pointer
      return
    )
    (func $backend-0.1.0#fetch (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 128
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=92
      local.get 4
      local.get 1
      i32.store offset=96
      local.get 4
      local.get 1
      i32.store offset=100
      i32.const 64
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      local.get 0
      local.get 1
      local.get 1
      call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h6624a16553a7462bE
      i32.const 40
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.set 10
      i32.const 64
      local.set 11
      local.get 4
      local.get 11
      i32.add
      local.set 12
      local.get 12
      local.set 13
      local.get 10
      local.get 13
      call $_ZN5alloc6string6String9from_utf817h49de864fc168e0ccE
      i32.const 24
      local.set 14
      local.get 4
      local.get 14
      i32.add
      local.set 15
      local.get 15
      local.set 16
      i32.const 40
      local.set 17
      local.get 4
      local.get 17
      i32.add
      local.set 18
      local.get 18
      local.set 19
      i32.const 1048588
      local.set 20
      local.get 20
      local.set 21
      local.get 16
      local.get 19
      local.get 21
      call $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h19410c8cf6de8cc8E
      i32.const 8
      local.set 22
      local.get 4
      local.get 22
      i32.add
      local.set 23
      local.get 23
      local.set 24
      i32.const 24
      local.set 25
      local.get 4
      local.get 25
      i32.add
      local.set 26
      local.get 26
      local.set 27
      local.get 24
      local.get 27
      call $_ZN55_$LT$service..Component$u20$as$u20$backend..Backend$GT$5fetch17h9ba26aca743a916dE
      i32.const 80
      local.set 28
      local.get 4
      local.get 28
      i32.add
      local.set 29
      local.get 29
      local.set 30
      i32.const 8
      local.set 31
      local.get 4
      local.get 31
      i32.add
      local.set 32
      local.get 32
      local.set 33
      local.get 33
      i64.load align=4
      local.set 34
      local.get 30
      local.get 34
      i64.store align=4
      i32.const 8
      local.set 35
      local.get 30
      local.get 35
      i32.add
      local.set 36
      local.get 33
      local.get 35
      i32.add
      local.set 37
      local.get 37
      i32.load
      local.set 38
      local.get 36
      local.get 38
      i32.store
      i32.const 80
      local.set 39
      local.get 4
      local.get 39
      i32.add
      local.set 40
      local.get 4
      local.get 40
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hcb67c2a37ad6d421E
      local.get 4
      i32.load offset=4
      local.set 41
      local.get 4
      i32.load
      local.set 42
      local.get 4
      local.get 42
      i32.store offset=104
      local.get 4
      local.get 41
      i32.store offset=108
      local.get 42
      local.get 41
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h654cd659a18199f5E
      local.set 43
      local.get 4
      local.get 43
      i32.store offset=116
      local.get 4
      local.get 41
      i32.store offset=120
      local.get 42
      local.get 41
      call $_ZN4core3mem6forget17hc5144766be392e24E
      i32.const 1053336
      local.set 44
      local.get 44
      local.set 45
      i32.const 2
      local.set 46
      local.get 45
      local.get 46
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h059d165916a9d67eE
      local.set 47
      local.get 4
      local.get 47
      i32.store offset=124
      i32.const 8
      local.set 48
      local.get 47
      local.get 48
      i32.add
      local.set 49
      local.get 49
      local.get 47
      i32.lt_s
      local.set 50
      i32.const 1
      local.set 51
      local.get 50
      local.get 51
      i32.and
      local.set 52
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 52
            br_if 0 (;@3;)
            local.get 49
            local.get 41
            i32.store
            i32.const 0
            local.set 53
            local.get 47
            local.set 54
            i32.const 1
            local.set 55
            local.get 53
            local.get 55
            i32.and
            local.set 56
            local.get 56
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          i32.const 1048608
          local.set 57
          local.get 57
          local.set 58
          i32.const 28
          local.set 59
          i32.const 1048588
          local.set 60
          local.get 60
          local.set 61
          local.get 58
          local.get 59
          local.get 61
          call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
          unreachable
        end
        local.get 54
        local.get 43
        i32.store
        i32.const 128
        local.set 62
        local.get 4
        local.get 62
        i32.add
        local.set 63
        local.get 63
        global.set $__stack_pointer
        local.get 47
        return
      end
      i32.const 1048608
      local.set 64
      local.get 64
      local.set 65
      i32.const 28
      local.set 66
      i32.const 1048588
      local.set 67
      local.get 67
      local.set 68
      local.get 65
      local.get 66
      local.get 68
      call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
      unreachable
    )
    (func $_ZN4core3str8converts19from_utf8_unchecked17h5856094f892494d3E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 6
      local.get 5
      i32.load offset=12
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN4core5slice3raw14from_raw_parts17h19432f05c8034d9cE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 1
      local.get 2
      call $_ZN4core5slice3raw20debug_check_data_len17h3db9741f8a0d602aE
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core3ptr20slice_from_raw_parts17hf8c26972a4eb865dE
      local.get 5
      i32.load offset=4
      local.set 6
      local.get 5
      i32.load
      local.set 7
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 16
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5slice3raw20debug_check_data_len17h3db9741f8a0d602aE (type 0) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      return
    )
    (func $_ZN4core5slice3raw18from_raw_parts_mut17hebd524b5e1758c88E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 1
      local.get 2
      call $_ZN4core5slice3raw20debug_check_data_len17h06c7c2a0b90c2df0E
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core3ptr24slice_from_raw_parts_mut17h1e2bbdc57fbc5710E
      local.get 5
      i32.load offset=4
      local.set 6
      local.get 5
      i32.load
      local.set 7
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 16
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5slice3raw20debug_check_data_len17h06c7c2a0b90c2df0E (type 0) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      return
    )
    (func $_ZN4core10intrinsics19copy_nonoverlapping17he70ca57f6c35f8bbE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=4
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      i32.const 0
      local.set 6
      local.get 2
      local.get 6
      i32.shl
      local.set 7
      local.get 1
      local.get 0
      local.get 7
      call $memcpy
      drop
      i32.const 16
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17ha9292c56e6074bb7E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      i32.const 16
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 7
      local.get 9
      call $_ZN5alloc11collections15TryReserveError4kind17hfae5d58b5b98a898E
      local.get 5
      i32.load offset=12
      local.set 10
      local.get 5
      i32.load offset=8
      local.set 11
      local.get 0
      local.get 10
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store
      i32.const 32
      local.set 12
      local.get 5
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h5b16bb300ec5d197E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=24
      local.get 4
      local.get 1
      i32.store offset=28
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      local.get 0
      local.get 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17hb24992b47d8634a3E
      i32.const 8
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.set 10
      local.get 10
      call $_ZN5alloc7raw_vec14handle_reserve17h9264f8db6d1a0e74E
      i32.const 32
      local.set 11
      local.get 4
      local.get 11
      i32.add
      local.set 12
      local.get 12
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17hb24992b47d8634a3E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 160
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=112
      local.get 5
      local.get 2
      i32.store offset=116
      local.get 5
      local.get 1
      i32.store offset=156
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=152
      local.get 5
      i32.load offset=152
      local.set 7
      local.get 2
      local.set 8
      local.get 7
      local.set 9
      local.get 8
      local.get 9
      i32.le_u
      local.set 10
      i32.const -1
      local.set 11
      local.get 10
      local.get 11
      i32.xor
      local.set 12
      i32.const 1
      local.set 13
      local.get 12
      local.get 13
      i32.and
      local.set 14
      block  ;; label = @1
        block  ;; label = @2
          local.get 14
          br_if 0 (;@2;)
          i32.const 40
          local.set 15
          local.get 5
          local.get 15
          i32.add
          local.set 16
          local.get 16
          local.set 17
          local.get 17
          local.get 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h846260aa0bc3b077E
          br 1 (;@1;)
        end
        i32.const 1048761
        local.set 18
        local.get 18
        local.set 19
        i32.const 36
        local.set 20
        i32.const 1048800
        local.set 21
        local.get 21
        local.set 22
        local.get 19
        local.get 20
        local.get 22
        call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
        unreachable
      end
      local.get 5
      i32.load offset=40
      local.set 23
      i32.const 0
      local.set 24
      local.get 23
      local.set 25
      local.get 24
      local.set 26
      local.get 25
      local.get 26
      i32.eq
      local.set 27
      i32.const 0
      local.set 28
      i32.const 1
      local.set 29
      i32.const 1
      local.set 30
      local.get 27
      local.get 30
      i32.and
      local.set 31
      local.get 28
      local.get 29
      local.get 31
      select
      local.set 32
      i32.const 1
      local.set 33
      local.get 32
      local.set 34
      local.get 33
      local.set 35
      local.get 34
      local.get 35
      i32.eq
      local.set 36
      i32.const 1
      local.set 37
      local.get 36
      local.get 37
      i32.and
      local.set 38
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 38
            i32.eqz
            br_if 0 (;@3;)
            i32.const 40
            local.set 39
            local.get 5
            local.get 39
            i32.add
            local.set 40
            local.get 40
            local.set 41
            i32.const 56
            local.set 42
            local.get 5
            local.get 42
            i32.add
            local.set 43
            local.get 43
            local.set 44
            local.get 41
            i64.load align=4
            local.set 45
            local.get 44
            local.get 45
            i64.store align=4
            i32.const 8
            local.set 46
            local.get 44
            local.get 46
            i32.add
            local.set 47
            local.get 41
            local.get 46
            i32.add
            local.set 48
            local.get 48
            i32.load
            local.set 49
            local.get 47
            local.get 49
            i32.store
            i32.const 24
            local.set 50
            local.get 5
            local.get 50
            i32.add
            local.set 51
            local.get 51
            local.set 52
            i32.const 56
            local.set 53
            local.get 5
            local.get 53
            i32.add
            local.set 54
            local.get 54
            local.set 55
            local.get 55
            i64.load align=4
            local.set 56
            local.get 52
            local.get 56
            i64.store align=4
            i32.const 8
            local.set 57
            local.get 52
            local.get 57
            i32.add
            local.set 58
            local.get 55
            local.get 57
            i32.add
            local.set 59
            local.get 59
            i32.load
            local.set 60
            local.get 58
            local.get 60
            i32.store
            local.get 5
            i32.load offset=24
            local.set 61
            local.get 5
            local.get 61
            i32.store offset=120
            local.get 5
            i32.load offset=28
            local.set 62
            local.get 5
            i32.load offset=32
            local.set 63
            local.get 5
            local.get 62
            i32.store offset=16
            local.get 5
            local.get 63
            i32.store offset=20
            br 1 (;@2;)
          end
          i32.const 0
          local.set 64
          local.get 0
          local.get 64
          i32.store
          br 1 (;@1;)
        end
        i32.const 0
        local.set 65
        local.get 2
        local.get 65
        i32.shl
        local.set 66
        local.get 5
        local.get 66
        i32.store offset=124
        i32.const 16
        local.set 67
        local.get 5
        local.get 67
        i32.add
        local.set 68
        local.get 68
        local.set 69
        local.get 69
        call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
        local.set 70
        i32.const 8
        local.set 71
        local.get 5
        local.get 71
        i32.add
        local.set 72
        local.get 72
        local.get 66
        local.get 70
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7494b5cdf28ef151E
        local.get 5
        i32.load offset=8
        local.set 73
        local.get 5
        i32.load offset=12
        local.set 74
        local.get 5
        local.get 74
        i32.store offset=76
        local.get 5
        local.get 73
        i32.store offset=72
        local.get 5
        i32.load offset=16
        local.set 75
        local.get 5
        i32.load offset=20
        local.set 76
        local.get 5
        i32.load offset=72
        local.set 77
        local.get 5
        i32.load offset=76
        local.set 78
        local.get 5
        local.get 1
        local.get 61
        local.get 75
        local.get 76
        local.get 77
        local.get 78
        call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hed7b3ef212ca96d8E
        local.get 5
        i32.load offset=4
        local.set 79
        local.get 5
        i32.load
        local.set 80
        i32.const 72
        local.set 81
        local.get 5
        local.get 81
        i32.add
        local.set 82
        local.get 82
        local.set 83
        local.get 5
        local.get 83
        i32.store offset=108
        local.get 5
        i32.load offset=108
        local.set 84
        i32.const 96
        local.set 85
        local.get 5
        local.get 85
        i32.add
        local.set 86
        local.get 86
        local.set 87
        local.get 87
        local.get 80
        local.get 79
        local.get 84
        call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hcc731cc2130c6e48E
        i32.const 80
        local.set 88
        local.get 5
        local.get 88
        i32.add
        local.set 89
        local.get 89
        local.set 90
        i32.const 96
        local.set 91
        local.get 5
        local.get 91
        i32.add
        local.set 92
        local.get 92
        local.set 93
        local.get 90
        local.get 93
        call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf0758f21f97476baE
        local.get 5
        i32.load offset=80
        local.set 94
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 94
              br_table 0 (;@4;) 1 (;@3;) 0 (;@4;)
            end
            local.get 5
            i32.load offset=84
            local.set 95
            local.get 5
            i32.load offset=88
            local.set 96
            local.get 5
            local.get 95
            i32.store offset=136
            local.get 5
            local.get 96
            i32.store offset=140
            local.get 5
            local.get 95
            i32.store offset=144
            local.get 5
            local.get 96
            i32.store offset=148
            local.get 1
            local.get 95
            local.get 96
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7set_ptr17hece19202ebc56f37E
            br 1 (;@2;)
          end
          local.get 5
          i32.load offset=84
          local.set 97
          local.get 5
          i32.load offset=88
          local.set 98
          local.get 5
          local.get 97
          i32.store offset=128
          local.get 5
          local.get 98
          i32.store offset=132
          local.get 0
          local.get 97
          local.get 98
          call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h784e64c07f6ff1beE
          br 1 (;@1;)
        end
        i32.const 0
        local.set 99
        local.get 0
        local.get 99
        i32.store
      end
      i32.const 160
      local.set 100
      local.get 5
      local.get 100
      i32.add
      local.set 101
      local.get 101
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h846260aa0bc3b077E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 48
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=28
      i32.const 1
      local.set 5
      block  ;; label = @1
        block  ;; label = @2
          local.get 5
          br_if 0 (;@2;)
          i32.const 1
          local.set 6
          local.get 4
          local.get 6
          i32.store8 offset=15
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.set 7
        i32.const 0
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.get 10
        i32.eq
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 4
        local.get 13
        i32.store8 offset=15
      end
      local.get 4
      i32.load8_u offset=15
      local.set 14
      i32.const 1
      local.set 15
      local.get 14
      local.get 15
      i32.and
      local.set 16
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 16
            br_if 0 (;@3;)
            i32.const 1
            local.set 17
            local.get 4
            local.get 17
            i32.store offset=32
            br 1 (;@2;)
          end
          i32.const 0
          local.set 18
          local.get 0
          local.get 18
          i32.store
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.set 19
        i32.const 0
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 4
        local.get 21
        i32.store offset=36
        i32.const 1
        local.set 22
        local.get 4
        local.get 21
        local.get 22
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7494b5cdf28ef151E
        local.get 4
        i32.load offset=4
        local.set 23
        local.get 4
        i32.load
        local.set 24
        local.get 4
        local.get 24
        i32.store offset=40
        local.get 4
        local.get 23
        i32.store offset=44
        local.get 1
        i32.load
        local.set 25
        local.get 25
        call $_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h09b81849a0d6abddE
        local.set 26
        local.get 26
        call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8dcefbf403739ff4E
        local.set 27
        local.get 4
        local.get 27
        i32.store offset=16
        local.get 4
        local.get 24
        i32.store offset=20
        local.get 4
        local.get 23
        i32.store offset=24
        i32.const 16
        local.set 28
        local.get 4
        local.get 28
        i32.add
        local.set 29
        local.get 29
        local.set 30
        local.get 30
        i64.load align=4
        local.set 31
        local.get 0
        local.get 31
        i64.store align=4
        i32.const 8
        local.set 32
        local.get 0
        local.get 32
        i32.add
        local.set 33
        local.get 30
        local.get 32
        i32.add
        local.set 34
        local.get 34
        i32.load
        local.set 35
        local.get 33
        local.get 35
        i32.store
      end
      i32.const 48
      local.set 36
      local.get 4
      local.get 36
      i32.add
      local.set 37
      local.get 37
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17h73a123262463796fE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 1
      local.set 4
      i32.const 0
      local.set 5
      local.get 4
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.get 7
      i32.eq
      local.set 8
      i32.const 1
      local.set 9
      local.get 8
      local.get 9
      i32.and
      local.set 10
      block  ;; label = @1
        local.get 10
        br_if 0 (;@1;)
        i32.const 0
        local.set 11
        local.get 0
        local.get 11
        i32.shr_u
        local.set 12
        i32.const 16
        local.set 13
        local.get 3
        local.get 13
        i32.add
        local.set 14
        local.get 14
        global.set $__stack_pointer
        local.get 12
        return
      end
      i32.const 1048736
      local.set 15
      local.get 15
      local.set 16
      i32.const 25
      local.set 17
      i32.const 1048712
      local.set 18
      local.get 18
      local.set 19
      local.get 16
      local.get 17
      local.get 19
      call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
      unreachable
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h532271613057cc00E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load
      local.set 4
      local.get 4
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h796f01ecd9953865E
      local.set 5
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7set_ptr17hece19202ebc56f37E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=4
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 1
      local.get 2
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3d30505ea2bf08c0E
      local.set 6
      local.get 6
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E
      local.set 7
      local.get 7
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha8d9575081c84967E
      local.set 8
      local.get 0
      local.get 8
      i32.store
      local.get 1
      local.get 2
      call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$3len17h633180a3059dcc72E
      local.set 9
      local.get 9
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17h73a123262463796fE
      local.set 10
      local.get 0
      local.get 10
      i32.store offset=4
      i32.const 16
      local.set 11
      local.get 5
      local.get 11
      i32.add
      local.set 12
      local.get 12
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink28_$u7b$$u7b$closure$u7d$$u7d$17h9cb0c9b96788fcd0E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 1
      i32.store offset=20
      local.get 1
      i32.load
      local.set 5
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 4
      local.get 5
      i32.store offset=8
      local.get 4
      local.get 6
      i32.store offset=12
      local.get 4
      i32.load offset=8
      local.set 7
      local.get 4
      i32.load offset=12
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17ha112fdadc5242347E (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 80
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=32
      local.get 6
      local.get 2
      i32.store offset=36
      local.get 6
      local.get 3
      i32.store offset=44
      local.get 6
      local.get 1
      i32.store offset=64
      local.get 6
      local.get 2
      i32.store offset=68
      local.get 6
      local.get 1
      i32.store offset=56
      local.get 6
      local.get 2
      i32.store offset=60
      local.get 6
      i32.load offset=56
      local.set 7
      local.get 6
      i32.load offset=60
      local.set 8
      local.get 6
      local.get 8
      i32.store offset=28
      local.get 6
      local.get 7
      i32.store offset=24
      i32.const 24
      local.set 9
      local.get 6
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 6
      local.get 11
      i32.store offset=76
      i32.const 24
      local.set 12
      local.get 6
      local.get 12
      i32.add
      local.set 13
      local.get 13
      local.set 14
      local.get 14
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h532271613057cc00E
      local.set 15
      i32.const 16
      local.set 16
      local.get 6
      local.get 16
      i32.add
      local.set 17
      local.get 17
      local.get 15
      local.get 3
      call $_ZN4core5slice3raw18from_raw_parts_mut17hebd524b5e1758c88E
      local.get 6
      i32.load offset=20
      local.set 18
      local.get 6
      i32.load offset=16
      local.set 19
      local.get 6
      local.get 19
      i32.store offset=48
      local.get 6
      local.get 18
      i32.store offset=52
      i32.const 24
      local.set 20
      local.get 6
      local.get 20
      i32.add
      local.set 21
      local.get 21
      local.set 22
      local.get 6
      local.get 22
      i32.store offset=72
      i32.const 24
      local.set 23
      local.get 6
      local.get 23
      i32.add
      local.set 24
      local.get 24
      local.set 25
      local.get 25
      call $_ZN4core3ptr4read17h2d44350d870e19deE
      i32.const 8
      local.set 26
      local.get 6
      local.get 26
      i32.add
      local.set 27
      local.get 27
      local.get 19
      local.get 18
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hd9797f45b3f13abbE
      local.get 6
      i32.load offset=12
      local.set 28
      local.get 6
      i32.load offset=8
      local.set 29
      local.get 0
      local.get 28
      i32.store offset=4
      local.get 0
      local.get 29
      i32.store
      i32.const 80
      local.set 30
      local.get 6
      local.get 30
      i32.add
      local.set 31
      local.get 31
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec14handle_reserve17h9264f8db6d1a0e74E (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 48
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      i32.const 24
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      local.set 6
      local.get 0
      i64.load align=4
      local.set 7
      local.get 6
      local.get 7
      i64.store align=4
      i32.const 8
      local.set 8
      local.get 6
      local.get 8
      i32.add
      local.set 9
      local.get 0
      local.get 8
      i32.add
      local.set 10
      local.get 10
      i32.load
      local.set 11
      local.get 9
      local.get 11
      i32.store
      i32.const 8
      local.set 12
      local.get 3
      local.get 12
      i32.add
      local.set 13
      local.get 13
      local.set 14
      i32.const 24
      local.set 15
      local.get 3
      local.get 15
      i32.add
      local.set 16
      local.get 16
      local.set 17
      local.get 14
      local.get 17
      call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17ha4a92d7643286d8aE
      local.get 3
      i32.load offset=8
      local.set 18
      block  ;; label = @1
        block  ;; label = @2
          local.get 18
          br_table 0 (;@2;) 1 (;@1;) 0 (;@2;)
        end
        i32.const 48
        local.set 19
        local.get 3
        local.get 19
        i32.add
        local.set 20
        local.get 20
        global.set $__stack_pointer
        return
      end
      i32.const 16
      local.set 21
      local.get 3
      local.get 21
      i32.add
      local.set 22
      local.get 22
      i32.load
      local.set 23
      i32.const 0
      local.set 24
      local.get 23
      local.get 24
      i32.ne
      local.set 25
      block  ;; label = @1
        block  ;; label = @2
          local.get 25
          br_table 0 (;@2;) 1 (;@1;) 0 (;@2;)
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17hdfce08dd2d1c6df1E
        unreachable
      end
      local.get 3
      i32.load offset=12
      local.set 26
      local.get 3
      i32.load offset=16
      local.set 27
      local.get 3
      local.get 26
      i32.store offset=40
      local.get 3
      local.get 27
      i32.store offset=44
      local.get 26
      local.get 27
      call $_ZN5alloc5alloc18handle_alloc_error17hfc3a3c0bb5c92416E
      unreachable
      unreachable
    )
    (func $_ZN5alloc5alloc12alloc_zeroed17hce7c801ef2fe40f9E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 8
      i32.const 8
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 11
      call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
      local.set 12
      local.get 8
      local.get 12
      call $__rust_alloc_zeroed
      local.set 13
      i32.const 16
      local.set 14
      local.get 4
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      local.get 13
      return
    )
    (func $_ZN5alloc5alloc5alloc17h66c7257f7af03963E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 8
      i32.const 8
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 11
      call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
      local.set 12
      local.get 8
      local.get 12
      call $__rust_alloc
      local.set 13
      i32.const 16
      local.set 14
      local.get 4
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      local.get 13
      return
    )
    (func $_ZN5alloc5alloc6Global10alloc_impl17h6c0060753d25a644E (type 8) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 80
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 2
      i32.store offset=32
      local.get 7
      local.get 3
      i32.store offset=36
      local.get 7
      local.get 1
      i32.store offset=56
      local.get 4
      local.set 8
      local.get 7
      local.get 8
      i32.store8 offset=63
      i32.const 32
      local.set 9
      local.get 7
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 11
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 12
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 12
                br_if 0 (;@5;)
                i32.const 32
                local.set 13
                local.get 7
                local.get 13
                i32.add
                local.set 14
                local.get 14
                local.set 15
                local.get 15
                call $_ZN4core5alloc6layout6Layout8dangling17h7daec3e9921c7d1cE
                local.set 16
                br 1 (;@4;)
              end
              local.get 7
              local.get 12
              i32.store offset=68
              local.get 4
              local.set 17
              block  ;; label = @5
                block  ;; label = @6
                  local.get 17
                  br_if 0 (;@6;)
                  local.get 7
                  i32.load offset=32
                  local.set 18
                  local.get 7
                  i32.load offset=36
                  local.set 19
                  local.get 18
                  local.get 19
                  call $_ZN5alloc5alloc5alloc17h66c7257f7af03963E
                  local.set 20
                  local.get 7
                  local.get 20
                  i32.store offset=48
                  br 1 (;@5;)
                end
                local.get 7
                i32.load offset=32
                local.set 21
                local.get 7
                i32.load offset=36
                local.set 22
                local.get 21
                local.get 22
                call $_ZN5alloc5alloc12alloc_zeroed17hce7c801ef2fe40f9E
                local.set 23
                local.get 7
                local.get 23
                i32.store offset=48
                br 2 (;@3;)
              end
              br 1 (;@3;)
            end
            i32.const 0
            local.set 24
            i32.const 8
            local.set 25
            local.get 7
            local.get 25
            i32.add
            local.set 26
            local.get 26
            local.get 16
            local.get 24
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h50868425216aa021E
            local.get 7
            i32.load offset=12
            local.set 27
            local.get 7
            i32.load offset=8
            local.set 28
            local.get 7
            local.get 28
            i32.store offset=40
            local.get 7
            local.get 27
            i32.store offset=44
            br 1 (;@2;)
          end
          local.get 7
          i32.load offset=48
          local.set 29
          local.get 29
          call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h6b1cec20f7396af5E
          local.set 30
          local.get 30
          call $_ZN4core6option15Option$LT$T$GT$5ok_or17h710a9d2be7a91c22E
          local.set 31
          local.get 31
          call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h300858e24b416679E
          local.set 32
          local.get 7
          local.get 32
          i32.store offset=52
          local.get 7
          i32.load offset=52
          local.set 33
          local.get 33
          i32.eqz
          local.set 34
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 34
                br_table 0 (;@5;) 1 (;@4;) 0 (;@5;)
              end
              local.get 7
              i32.load offset=52
              local.set 35
              local.get 7
              local.get 35
              i32.store offset=72
              local.get 7
              local.get 35
              i32.store offset=76
              i32.const 16
              local.set 36
              local.get 7
              local.get 36
              i32.add
              local.set 37
              local.get 37
              local.get 35
              local.get 12
              call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h50868425216aa021E
              local.get 7
              i32.load offset=20
              local.set 38
              local.get 7
              i32.load offset=16
              local.set 39
              br 1 (;@3;)
            end
            i32.const 24
            local.set 40
            local.get 7
            local.get 40
            i32.add
            local.set 41
            local.get 41
            call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h800b2cda7e2c0dd0E
            local.get 7
            i32.load offset=24
            local.set 42
            local.get 7
            i32.load offset=28
            local.set 43
            local.get 7
            local.get 43
            i32.store offset=44
            local.get 7
            local.get 42
            i32.store offset=40
            br 2 (;@1;)
          end
          local.get 7
          local.get 39
          i32.store offset=40
          local.get 7
          local.get 38
          i32.store offset=44
        end
      end
      local.get 7
      i32.load offset=40
      local.set 44
      local.get 7
      i32.load offset=44
      local.set 45
      local.get 0
      local.get 45
      i32.store offset=4
      local.get 0
      local.get 44
      i32.store
      i32.const 80
      local.set 46
      local.get 7
      local.get 46
      i32.add
      local.set 47
      local.get 47
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN5alloc5alloc7dealloc17h53cc634adc0ab7a0E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      local.set 6
      local.get 6
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 7
      local.get 5
      local.set 8
      local.get 8
      call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
      local.set 9
      local.get 0
      local.get 7
      local.get 9
      call $__rust_dealloc
      i32.const 16
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5alloc7realloc17h2de44f1b44bcb5e2E (type 9) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 16
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store
      local.get 6
      local.get 2
      i32.store offset=4
      local.get 6
      local.get 0
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 6
      local.set 7
      local.get 7
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 8
      local.get 6
      local.set 9
      local.get 9
      call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
      local.set 10
      local.get 0
      local.get 8
      local.get 10
      local.get 3
      call $__rust_realloc
      local.set 11
      i32.const 16
      local.set 12
      local.get 6
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      local.get 11
      return
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5e8c91aa3d286490E (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 16
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 2
      i32.store
      local.get 6
      local.get 3
      i32.store offset=4
      local.get 6
      local.get 0
      i32.store offset=8
      local.get 6
      local.get 1
      i32.store offset=12
      local.get 6
      local.set 7
      local.get 7
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 8
      block  ;; label = @1
        block  ;; label = @2
          local.get 8
          br_if 0 (;@2;)
          br 1 (;@1;)
        end
        local.get 1
        call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E
        local.set 9
        local.get 6
        i32.load
        local.set 10
        local.get 6
        i32.load offset=4
        local.set 11
        local.get 9
        local.get 10
        local.get 11
        call $_ZN5alloc5alloc7dealloc17h53cc634adc0ab7a0E
      end
      i32.const 16
      local.set 12
      local.get 6
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hed7b3ef212ca96d8E (type 10) (param i32 i32 i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 7
      i32.const 160
      local.set 8
      local.get 7
      local.get 8
      i32.sub
      local.set 9
      local.get 9
      global.set $__stack_pointer
      local.get 9
      local.get 3
      i32.store offset=56
      local.get 9
      local.get 4
      i32.store offset=60
      local.get 9
      local.get 5
      i32.store offset=64
      local.get 9
      local.get 6
      i32.store offset=68
      local.get 9
      local.get 1
      i32.store offset=96
      local.get 9
      local.get 2
      i32.store offset=100
      i32.const 64
      local.set 10
      local.get 9
      local.get 10
      i32.add
      local.set 11
      local.get 11
      local.set 12
      local.get 12
      call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
      local.set 13
      local.get 9
      local.get 13
      i32.store offset=80
      local.get 9
      i32.load offset=80
      local.set 14
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 14
                br_if 0 (;@5;)
                local.get 9
                i32.load offset=56
                local.set 15
                local.get 9
                i32.load offset=60
                local.set 16
                local.get 1
                local.get 2
                local.get 15
                local.get 16
                call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5e8c91aa3d286490E
                br 1 (;@4;)
              end
              i32.const 80
              local.set 17
              local.get 9
              local.get 17
              i32.add
              local.set 18
              local.get 18
              local.set 19
              local.get 9
              local.get 19
              i32.store offset=120
              i32.const 56
              local.set 20
              local.get 9
              local.get 20
              i32.add
              local.set 21
              local.get 21
              local.set 22
              local.get 22
              call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
              local.set 23
              i32.const 64
              local.set 24
              local.get 9
              local.get 24
              i32.add
              local.set 25
              local.get 25
              local.set 26
              local.get 26
              call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
              local.set 27
              local.get 23
              local.set 28
              local.get 27
              local.set 29
              local.get 28
              local.get 29
              i32.eq
              local.set 30
              i32.const 1
              local.set 31
              local.get 30
              local.get 31
              i32.and
              local.set 32
              block  ;; label = @5
                block  ;; label = @6
                  local.get 32
                  br_if 0 (;@6;)
                  local.get 9
                  i32.load offset=80
                  local.set 33
                  local.get 9
                  local.get 33
                  i32.store offset=140
                  local.get 9
                  i32.load offset=64
                  local.set 34
                  local.get 9
                  i32.load offset=68
                  local.set 35
                  i32.const 48
                  local.set 36
                  local.get 9
                  local.get 36
                  i32.add
                  local.set 37
                  local.get 37
                  local.get 1
                  local.get 34
                  local.get 35
                  call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h901cf5410e46d7baE
                  local.get 9
                  i32.load offset=52
                  local.set 38
                  local.get 9
                  i32.load offset=48
                  local.set 39
                  br 1 (;@5;)
                end
                local.get 9
                i32.load offset=80
                local.set 40
                local.get 9
                local.get 40
                i32.store offset=124
                i32.const 56
                local.set 41
                local.get 9
                local.get 41
                i32.add
                local.set 42
                local.get 42
                local.set 43
                local.get 43
                call $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE
                drop
                local.get 2
                call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E
                local.set 44
                local.get 9
                i32.load offset=56
                local.set 45
                local.get 9
                i32.load offset=60
                local.set 46
                local.get 44
                local.get 45
                local.get 46
                local.get 40
                call $_ZN5alloc5alloc7realloc17h2de44f1b44bcb5e2E
                local.set 47
                local.get 9
                local.get 47
                i32.store offset=128
                local.get 47
                call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h6b1cec20f7396af5E
                local.set 48
                local.get 48
                call $_ZN4core6option15Option$LT$T$GT$5ok_or17h710a9d2be7a91c22E
                local.set 49
                local.get 49
                call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h300858e24b416679E
                local.set 50
                local.get 9
                local.get 50
                i32.store offset=84
                local.get 9
                i32.load offset=84
                local.set 51
                local.get 51
                i32.eqz
                local.set 52
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      local.get 52
                      br_table 0 (;@8;) 1 (;@7;) 0 (;@8;)
                    end
                    local.get 9
                    i32.load offset=84
                    local.set 53
                    local.get 9
                    local.get 53
                    i32.store offset=132
                    local.get 9
                    local.get 53
                    i32.store offset=136
                    i32.const 16
                    local.set 54
                    local.get 9
                    local.get 54
                    i32.add
                    local.set 55
                    local.get 55
                    local.get 53
                    local.get 40
                    call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h50868425216aa021E
                    local.get 9
                    i32.load offset=20
                    local.set 56
                    local.get 9
                    i32.load offset=16
                    local.set 57
                    br 1 (;@6;)
                  end
                  i32.const 24
                  local.set 58
                  local.get 9
                  local.get 58
                  i32.add
                  local.set 59
                  local.get 59
                  call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h800b2cda7e2c0dd0E
                  local.get 9
                  i32.load offset=24
                  local.set 60
                  local.get 9
                  i32.load offset=28
                  local.set 61
                  local.get 9
                  local.get 61
                  i32.store offset=76
                  local.get 9
                  local.get 60
                  i32.store offset=72
                  br 4 (;@2;)
                end
                local.get 9
                local.get 57
                i32.store offset=72
                local.get 9
                local.get 56
                i32.store offset=76
                br 2 (;@3;)
              end
              i32.const 40
              local.set 62
              local.get 9
              local.get 62
              i32.add
              local.set 63
              local.get 63
              local.get 39
              local.get 38
              call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h59f01a06133da97eE
              local.get 9
              i32.load offset=40
              local.set 64
              local.get 9
              i32.load offset=44
              local.set 65
              local.get 9
              local.get 65
              i32.store offset=92
              local.get 9
              local.get 64
              i32.store offset=88
              local.get 9
              i32.load offset=88
              local.set 66
              local.get 66
              i32.eqz
              local.set 67
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 67
                    br_table 0 (;@7;) 1 (;@6;) 0 (;@7;)
                  end
                  local.get 9
                  i32.load offset=88
                  local.set 68
                  local.get 9
                  i32.load offset=92
                  local.set 69
                  local.get 9
                  local.get 68
                  i32.store offset=144
                  local.get 9
                  local.get 69
                  i32.store offset=148
                  local.get 9
                  local.get 68
                  i32.store offset=152
                  local.get 9
                  local.get 69
                  i32.store offset=156
                  local.get 2
                  call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E
                  local.set 70
                  br 1 (;@5;)
                end
                i32.const 32
                local.set 71
                local.get 9
                local.get 71
                i32.add
                local.set 72
                local.get 72
                call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h800b2cda7e2c0dd0E
                local.get 9
                i32.load offset=32
                local.set 73
                local.get 9
                i32.load offset=36
                local.set 74
                local.get 9
                local.get 74
                i32.store offset=76
                local.get 9
                local.get 73
                i32.store offset=72
                br 3 (;@2;)
              end
              local.get 68
              local.get 69
              call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17he1e9f9eb33787820E
              local.set 75
              local.get 70
              local.get 75
              local.get 33
              call $_ZN4core10intrinsics19copy_nonoverlapping17he70ca57f6c35f8bbE
              local.get 9
              i32.load offset=56
              local.set 76
              local.get 9
              i32.load offset=60
              local.set 77
              local.get 1
              local.get 2
              local.get 76
              local.get 77
              call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5e8c91aa3d286490E
              local.get 9
              local.get 68
              i32.store offset=72
              local.get 9
              local.get 69
              i32.store offset=76
              br 1 (;@3;)
            end
            i32.const 64
            local.set 78
            local.get 9
            local.get 78
            i32.add
            local.set 79
            local.get 79
            local.set 80
            local.get 80
            call $_ZN4core5alloc6layout6Layout8dangling17h7daec3e9921c7d1cE
            local.set 81
            i32.const 0
            local.set 82
            i32.const 8
            local.set 83
            local.get 9
            local.get 83
            i32.add
            local.set 84
            local.get 84
            local.get 81
            local.get 82
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h50868425216aa021E
            local.get 9
            i32.load offset=12
            local.set 85
            local.get 9
            i32.load offset=8
            local.set 86
            local.get 9
            local.get 86
            i32.store offset=72
            local.get 9
            local.get 85
            i32.store offset=76
          end
          br 1 (;@1;)
        end
      end
      local.get 9
      i32.load offset=72
      local.set 87
      local.get 9
      i32.load offset=76
      local.set 88
      local.get 0
      local.get 88
      i32.store offset=4
      local.get 0
      local.get 87
      i32.store
      i32.const 160
      local.set 89
      local.get 9
      local.get 89
      i32.add
      local.set 90
      local.get 90
      global.set $__stack_pointer
      return
      unreachable
      unreachable
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h901cf5410e46d7baE (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 32
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=20
      local.get 6
      local.get 2
      i32.store offset=24
      local.get 6
      local.get 3
      i32.store offset=28
      i32.const 0
      local.set 7
      i32.const 8
      local.set 8
      local.get 6
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.get 1
      local.get 2
      local.get 3
      local.get 7
      call $_ZN5alloc5alloc6Global10alloc_impl17h6c0060753d25a644E
      local.get 6
      i32.load offset=12
      local.set 10
      local.get 6
      i32.load offset=8
      local.set 11
      local.get 0
      local.get 10
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store
      i32.const 32
      local.set 12
      local.get 6
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h272c4d907e383246E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha975ce09ed8c39d4E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h09b81849a0d6abddE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h796f01ecd9953865E
      local.set 4
      local.get 4
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha8d9575081c84967E
      local.set 5
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h1ab80aafe42def48E (type 3) (param i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    )
    (func $_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h70611256cd07c9ceE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN4core6option15Option$LT$T$GT$5ok_or17h710a9d2be7a91c22E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 0
      local.set 4
      local.get 3
      local.get 4
      i32.store8 offset=23
      i32.const 1
      local.set 5
      local.get 3
      local.get 5
      i32.store8 offset=23
      local.get 3
      i32.load offset=12
      local.set 6
      local.get 6
      local.get 4
      i32.ne
      local.set 7
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 7
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          i32.const 0
          local.set 8
          local.get 3
          local.get 8
          i32.store8 offset=23
          i32.const 0
          local.set 9
          local.get 3
          local.get 9
          i32.store offset=16
          br 1 (;@1;)
        end
        local.get 3
        i32.load offset=12
        local.set 10
        local.get 3
        local.get 10
        i32.store offset=28
        local.get 3
        local.get 10
        i32.store offset=16
      end
      local.get 3
      i32.load8_u offset=23
      local.set 11
      i32.const 1
      local.set 12
      local.get 11
      local.get 12
      i32.and
      local.set 13
      block  ;; label = @1
        local.get 13
        i32.eqz
        br_if 0 (;@1;)
      end
      local.get 3
      i32.load offset=16
      local.set 14
      local.get 14
      return
      unreachable
    )
    (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8626a616aa78d3b4E (type 7) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12fd0429913e848eE
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12fd0429913e848eE (type 7) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8654edccc055a29E
      local.get 0
      call $_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0bdef7f9c5a249b2E
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8654edccc055a29E (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hde7d7feeb92feb47E
      local.set 4
      local.get 0
      i32.load offset=8
      local.set 5
      local.get 3
      local.get 4
      local.get 5
      call $_ZN4core3ptr24slice_from_raw_parts_mut17h0487a22a78aec17cE
      local.get 3
      i32.load offset=4
      drop
      local.get 3
      i32.load
      drop
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h0bdef7f9c5a249b2E (type 7) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1eea851eb9412a4fE
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h461df62acf84f6eeE (type 7) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12fd0429913e848eE
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1eea851eb9412a4fE (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.set 4
      local.get 4
      local.get 0
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h846260aa0bc3b077E
      local.get 3
      i32.load
      local.set 5
      i32.const 0
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.set 8
      local.get 7
      local.get 8
      i32.eq
      local.set 9
      i32.const 0
      local.set 10
      i32.const 1
      local.set 11
      i32.const 1
      local.set 12
      local.get 9
      local.get 12
      i32.and
      local.set 13
      local.get 10
      local.get 11
      local.get 13
      select
      local.set 14
      i32.const 1
      local.set 15
      local.get 14
      local.set 16
      local.get 15
      local.set 17
      local.get 16
      local.get 17
      i32.eq
      local.set 18
      i32.const 1
      local.set 19
      local.get 18
      local.get 19
      i32.and
      local.set 20
      block  ;; label = @1
        local.get 20
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.load
        local.set 21
        local.get 3
        local.get 21
        i32.store offset=20
        local.get 3
        i32.load offset=4
        local.set 22
        local.get 3
        i32.load offset=8
        local.set 23
        local.get 3
        local.get 22
        i32.store offset=24
        local.get 3
        local.get 23
        i32.store offset=28
        local.get 0
        local.get 21
        local.get 22
        local.get 23
        call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5e8c91aa3d286490E
      end
      i32.const 32
      local.set 24
      local.get 3
      local.get 24
      i32.add
      local.set 25
      local.get 25
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h60f74507083c9b40E (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load
      local.set 4
      i32.const 0
      local.set 5
      local.get 4
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.get 7
      i32.eq
      local.set 8
      i32.const 0
      local.set 9
      i32.const 1
      local.set 10
      i32.const 1
      local.set 11
      local.get 8
      local.get 11
      i32.and
      local.set 12
      local.get 9
      local.get 10
      local.get 12
      select
      local.set 13
      block  ;; label = @1
        local.get 13
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12fd0429913e848eE
      end
      i32.const 16
      local.set 14
      local.get 3
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5clone5Clone5clone17hc99e05eb59e77c65E (type 7) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      return
    )
    (func $_ZN5alloc6string6String9from_utf817h49de864fc168e0ccE (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 112
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbb125c52d17c204aE
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 4
      i32.load
      local.set 6
      i32.const 8
      local.set 7
      local.get 4
      local.get 7
      i32.add
      local.set 8
      local.get 8
      local.set 9
      local.get 9
      local.get 6
      local.get 5
      call $_ZN4core3str8converts9from_utf817h0bab9265e4f36d8eE
      local.get 4
      i32.load offset=8
      local.set 10
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 10
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          i32.const 40
          local.set 11
          local.get 4
          local.get 11
          i32.add
          local.set 12
          local.get 12
          local.set 13
          local.get 1
          i64.load align=4
          local.set 14
          local.get 13
          local.get 14
          i64.store align=4
          i32.const 8
          local.set 15
          local.get 13
          local.get 15
          i32.add
          local.set 16
          local.get 1
          local.get 15
          i32.add
          local.set 17
          local.get 17
          i32.load
          local.set 18
          local.get 16
          local.get 18
          i32.store
          i32.const 24
          local.set 19
          local.get 4
          local.get 19
          i32.add
          local.set 20
          local.get 20
          local.set 21
          i32.const 40
          local.set 22
          local.get 4
          local.get 22
          i32.add
          local.set 23
          local.get 23
          local.set 24
          local.get 24
          i64.load align=4
          local.set 25
          local.get 21
          local.get 25
          i64.store align=4
          i32.const 8
          local.set 26
          local.get 21
          local.get 26
          i32.add
          local.set 27
          local.get 24
          local.get 26
          i32.add
          local.set 28
          local.get 28
          i32.load
          local.set 29
          local.get 27
          local.get 29
          i32.store
          i32.const 4
          local.set 30
          local.get 0
          local.get 30
          i32.add
          local.set 31
          i32.const 24
          local.set 32
          local.get 4
          local.get 32
          i32.add
          local.set 33
          local.get 33
          local.set 34
          local.get 34
          i64.load align=4
          local.set 35
          local.get 31
          local.get 35
          i64.store align=4
          i32.const 8
          local.set 36
          local.get 31
          local.get 36
          i32.add
          local.set 37
          local.get 34
          local.get 36
          i32.add
          local.set 38
          local.get 38
          i32.load
          local.set 39
          local.get 37
          local.get 39
          i32.store
          i32.const 0
          local.set 40
          local.get 0
          local.get 40
          i32.store
          br 1 (;@1;)
        end
        i32.const 8
        local.set 41
        local.get 4
        local.get 41
        i32.add
        local.set 42
        local.get 42
        local.set 43
        i32.const 4
        local.set 44
        local.get 43
        local.get 44
        i32.add
        local.set 45
        i32.const 56
        local.set 46
        local.get 4
        local.get 46
        i32.add
        local.set 47
        local.get 47
        local.set 48
        local.get 45
        i64.load align=4
        local.set 49
        local.get 48
        local.get 49
        i64.store align=4
        i32.const 88
        local.set 50
        local.get 4
        local.get 50
        i32.add
        local.set 51
        local.get 51
        local.set 52
        local.get 1
        i64.load align=4
        local.set 53
        local.get 52
        local.get 53
        i64.store align=4
        i32.const 8
        local.set 54
        local.get 52
        local.get 54
        i32.add
        local.set 55
        local.get 1
        local.get 54
        i32.add
        local.set 56
        local.get 56
        i32.load
        local.set 57
        local.get 55
        local.get 57
        i32.store
        i32.const 104
        local.set 58
        local.get 4
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.set 60
        i32.const 56
        local.set 61
        local.get 4
        local.get 61
        i32.add
        local.set 62
        local.get 62
        local.set 63
        local.get 63
        i64.load align=4
        local.set 64
        local.get 60
        local.get 64
        i64.store align=4
        i32.const 64
        local.set 65
        local.get 4
        local.get 65
        i32.add
        local.set 66
        local.get 66
        local.set 67
        i32.const 88
        local.set 68
        local.get 4
        local.get 68
        i32.add
        local.set 69
        local.get 69
        local.set 70
        local.get 70
        i64.load align=4
        local.set 71
        local.get 67
        local.get 71
        i64.store align=4
        i32.const 8
        local.set 72
        local.get 67
        local.get 72
        i32.add
        local.set 73
        local.get 70
        local.get 72
        i32.add
        local.set 74
        local.get 74
        i32.load
        local.set 75
        local.get 73
        local.get 75
        i32.store
        i32.const 64
        local.set 76
        local.get 4
        local.get 76
        i32.add
        local.set 77
        local.get 77
        local.set 78
        i32.const 12
        local.set 79
        local.get 78
        local.get 79
        i32.add
        local.set 80
        i32.const 104
        local.set 81
        local.get 4
        local.get 81
        i32.add
        local.set 82
        local.get 82
        local.set 83
        local.get 83
        i64.load align=4
        local.set 84
        local.get 80
        local.get 84
        i64.store align=4
        i32.const 4
        local.set 85
        local.get 0
        local.get 85
        i32.add
        local.set 86
        i32.const 64
        local.set 87
        local.get 4
        local.get 87
        i32.add
        local.set 88
        local.get 88
        local.set 89
        local.get 89
        i64.load align=4
        local.set 90
        local.get 86
        local.get 90
        i64.store align=4
        i32.const 16
        local.set 91
        local.get 86
        local.get 91
        i32.add
        local.set 92
        local.get 89
        local.get 91
        i32.add
        local.set 93
        local.get 93
        i32.load
        local.set 94
        local.get 92
        local.get 94
        i32.store
        i32.const 8
        local.set 95
        local.get 86
        local.get 95
        i32.add
        local.set 96
        local.get 89
        local.get 95
        i32.add
        local.set 97
        local.get 97
        i64.load align=4
        local.set 98
        local.get 96
        local.get 98
        i64.store align=4
        i32.const 1
        local.set 99
        local.get 0
        local.get 99
        i32.store
      end
      i32.const 112
      local.set 100
      local.get 4
      local.get 100
      i32.add
      local.set 101
      local.get 101
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h99cc1660949c5904E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=28
      i32.const 16
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.get 1
      call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbb125c52d17c204aE
      local.get 4
      i32.load offset=20
      local.set 7
      local.get 4
      i32.load offset=16
      local.set 8
      i32.const 8
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.get 8
      local.get 7
      call $_ZN4core3str8converts19from_utf8_unchecked17h5856094f892494d3E
      local.get 4
      i32.load offset=12
      local.set 11
      local.get 4
      i32.load offset=8
      local.set 12
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 12
      i32.store
      i32.const 32
      local.set 13
      local.get 4
      local.get 13
      i32.add
      local.set 14
      local.get 14
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7494b5cdf28ef151E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 2
      call $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h81ee5340f7c36c46E
      local.set 6
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 6
      i32.store offset=4
      local.get 5
      i32.load
      local.set 7
      local.get 5
      i32.load offset=4
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 16
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5alloc6layout6Layout4size17hb7d263b74e4788eeE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load
      local.set 4
      local.get 4
      return
    )
    (func $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 4
      call $_ZN4core3num7nonzero12NonZeroUsize3get17h802f8d9a4aeaaa54E
      local.set 5
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $_ZN4core5alloc6layout6Layout8dangling17h7daec3e9921c7d1cE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core5alloc6layout6Layout5align17hd9bab666fad94f00E
      local.set 4
      local.get 4
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc24ba6d3a3e246c7E
      local.set 5
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17hc0054ed3c3db3b5dE (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 1
      i32.load
      local.set 5
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      return
    )
    (func $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h784e64c07f6ff1beE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 6
      local.get 5
      i32.load offset=20
      local.set 7
      local.get 5
      local.get 6
      i32.store offset=24
      local.get 5
      local.get 7
      i32.store offset=28
      i32.const 8
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.get 6
      local.get 7
      call $_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h09521dd7e5675452E
      local.get 5
      i32.load offset=12
      local.set 10
      local.get 5
      i32.load offset=8
      local.set 11
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store offset=8
      i32.const 1
      local.set 12
      local.get 0
      local.get 12
      i32.store
      i32.const 32
      local.set 13
      local.get 5
      local.get 13
      i32.add
      local.set 14
      local.get 14
      global.set $__stack_pointer
      return
    )
    (func $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h800b2cda7e2c0dd0E (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      call $_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h9df9fa6a474509daE
      i32.const 0
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 5
      local.get 3
      i32.load offset=12
      local.set 6
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      i32.const 32
      local.set 7
      local.get 3
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h19410c8cf6de8cc8E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 1
      i32.load
      local.set 6
      block  ;; label = @1
        block  ;; label = @2
          local.get 6
          br_table 0 (;@2;) 1 (;@1;) 0 (;@2;)
        end
        i32.const 4
        local.set 7
        local.get 1
        local.get 7
        i32.add
        local.set 8
        local.get 8
        i64.load align=4
        local.set 9
        local.get 0
        local.get 9
        i64.store align=4
        i32.const 8
        local.set 10
        local.get 0
        local.get 10
        i32.add
        local.set 11
        local.get 8
        local.get 10
        i32.add
        local.set 12
        local.get 12
        i32.load
        local.set 13
        local.get 11
        local.get 13
        i32.store
        i32.const 32
        local.set 14
        local.get 5
        local.get 14
        i32.add
        local.set 15
        local.get 15
        global.set $__stack_pointer
        return
      end
      i32.const 4
      local.set 16
      local.get 1
      local.get 16
      i32.add
      local.set 17
      i32.const 8
      local.set 18
      local.get 5
      local.get 18
      i32.add
      local.set 19
      local.get 19
      local.set 20
      local.get 17
      i64.load align=4
      local.set 21
      local.get 20
      local.get 21
      i64.store align=4
      i32.const 16
      local.set 22
      local.get 20
      local.get 22
      i32.add
      local.set 23
      local.get 17
      local.get 22
      i32.add
      local.set 24
      local.get 24
      i32.load
      local.set 25
      local.get 23
      local.get 25
      i32.store
      i32.const 8
      local.set 26
      local.get 20
      local.get 26
      i32.add
      local.set 27
      local.get 17
      local.get 26
      i32.add
      local.set 28
      local.get 28
      i64.load align=4
      local.set 29
      local.get 27
      local.get 29
      i64.store align=4
      i32.const 8
      local.set 30
      local.get 5
      local.get 30
      i32.add
      local.set 31
      local.get 31
      local.set 32
      i32.const 1048816
      local.set 33
      local.get 33
      local.set 34
      i32.const 43
      local.set 35
      i32.const 1048860
      local.set 36
      local.get 36
      local.set 37
      local.get 34
      local.get 35
      local.get 32
      local.get 37
      local.get 2
      call $_ZN4core6result13unwrap_failed17he5c411e7d753a069E
      unreachable
      unreachable
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17ha4a92d7643286d8aE (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 48
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      i32.const 0
      local.set 5
      local.get 4
      local.get 5
      i32.store8 offset=23
      i32.const 1
      local.set 6
      local.get 4
      local.get 6
      i32.store8 offset=23
      local.get 1
      i32.load
      local.set 7
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 7
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          i32.const 0
          local.set 8
          local.get 0
          local.get 8
          i32.store
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.set 9
        local.get 1
        i32.load offset=8
        local.set 10
        local.get 4
        local.get 9
        i32.store offset=40
        local.get 4
        local.get 10
        i32.store offset=44
        i32.const 0
        local.set 11
        local.get 4
        local.get 11
        i32.store8 offset=23
        local.get 4
        local.get 9
        i32.store offset=8
        local.get 4
        local.get 10
        i32.store offset=12
        local.get 4
        i32.load offset=8
        local.set 12
        local.get 4
        i32.load offset=12
        local.set 13
        local.get 4
        local.get 12
        local.get 13
        call $_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17ha9292c56e6074bb7E
        local.get 4
        i32.load offset=4
        local.set 14
        local.get 4
        i32.load
        local.set 15
        local.get 0
        local.get 15
        i32.store offset=4
        local.get 0
        local.get 14
        i32.store offset=8
        i32.const 1
        local.set 16
        local.get 0
        local.get 16
        i32.store
      end
      local.get 4
      i32.load8_u offset=23
      local.set 17
      i32.const 1
      local.set 18
      local.get 17
      local.get 18
      i32.and
      local.set 19
      block  ;; label = @1
        local.get 19
        i32.eqz
        br_if 0 (;@1;)
      end
      i32.const 48
      local.set 20
      local.get 4
      local.get 20
      i32.add
      local.set 21
      local.get 21
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hcc731cc2130c6e48E (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 48
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 6
      local.get 3
      i32.store offset=28
      i32.const 0
      local.set 7
      local.get 6
      local.get 7
      i32.store8 offset=27
      i32.const 1
      local.set 8
      local.get 6
      local.get 8
      i32.store8 offset=27
      local.get 6
      i32.load offset=16
      local.set 9
      local.get 9
      i32.eqz
      local.set 10
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 10
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          local.get 6
          i32.load offset=16
          local.set 11
          local.get 6
          i32.load offset=20
          local.set 12
          local.get 6
          local.get 11
          i32.store offset=40
          local.get 6
          local.get 12
          i32.store offset=44
          local.get 0
          local.get 11
          i32.store offset=4
          local.get 0
          local.get 12
          i32.store offset=8
          i32.const 0
          local.set 13
          local.get 0
          local.get 13
          i32.store
          br 1 (;@1;)
        end
        i32.const 0
        local.set 14
        local.get 6
        local.get 14
        i32.store8 offset=27
        i32.const 8
        local.set 15
        local.get 6
        local.get 15
        i32.add
        local.set 16
        local.get 16
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink28_$u7b$$u7b$closure$u7d$$u7d$17h9cb0c9b96788fcd0E
        local.get 6
        i32.load offset=12
        local.set 17
        local.get 6
        i32.load offset=8
        local.set 18
        local.get 0
        local.get 18
        i32.store offset=4
        local.get 0
        local.get 17
        i32.store offset=8
        i32.const 1
        local.set 19
        local.get 0
        local.get 19
        i32.store
      end
      local.get 6
      i32.load8_u offset=27
      local.set 20
      i32.const 1
      local.set 21
      local.get 20
      local.get 21
      i32.and
      local.set 22
      block  ;; label = @1
        local.get 22
        i32.eqz
        br_if 0 (;@1;)
      end
      i32.const 48
      local.set 23
      local.get 6
      local.get 23
      i32.add
      local.set 24
      local.get 24
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h300858e24b416679E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 4
      i32.eqz
      local.set 5
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 5
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 6
          local.get 3
          local.get 6
          i32.store offset=28
          local.get 3
          local.get 6
          i32.store offset=12
          br 1 (;@1;)
        end
        i32.const 0
        local.set 7
        local.get 3
        local.get 7
        i32.store offset=12
      end
      local.get 3
      i32.load offset=12
      local.set 8
      local.get 8
      return
      unreachable
    )
    (func $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h59f01a06133da97eE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 6
      local.get 6
      i32.eqz
      local.set 7
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 7
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.set 8
          local.get 5
          i32.load offset=12
          local.set 9
          local.get 5
          local.get 8
          i32.store offset=40
          local.get 5
          local.get 9
          i32.store offset=44
          local.get 5
          local.get 8
          i32.store offset=16
          local.get 5
          local.get 9
          i32.store offset=20
          br 1 (;@1;)
        end
        i32.const 0
        local.set 10
        local.get 5
        local.get 10
        i32.store offset=16
      end
      local.get 5
      i32.load offset=16
      local.set 11
      local.get 5
      i32.load offset=20
      local.set 12
      local.get 0
      local.get 12
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store
      return
      unreachable
    )
    (func $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hf0758f21f97476baE (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 1
      i32.load
      local.set 5
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 5
            br_table 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          local.get 1
          i32.load offset=4
          local.set 6
          local.get 1
          i32.load offset=8
          local.set 7
          local.get 4
          local.get 6
          i32.store offset=24
          local.get 4
          local.get 7
          i32.store offset=28
          local.get 0
          local.get 6
          i32.store offset=4
          local.get 0
          local.get 7
          i32.store offset=8
          i32.const 0
          local.set 8
          local.get 0
          local.get 8
          i32.store
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.set 9
        local.get 1
        i32.load offset=8
        local.set 10
        local.get 4
        local.get 9
        i32.store offset=16
        local.get 4
        local.get 10
        i32.store offset=20
        local.get 4
        local.get 9
        i32.store offset=8
        local.get 4
        local.get 10
        i32.store offset=12
        local.get 4
        i32.load offset=8
        local.set 11
        local.get 4
        i32.load offset=12
        local.set 12
        local.get 0
        local.get 11
        i32.store offset=4
        local.get 0
        local.get 12
        i32.store offset=8
        i32.const 1
        local.set 13
        local.get 0
        local.get 13
        i32.store
      end
      return
      unreachable
    )
    (func $_ZN4core3ptr20slice_from_raw_parts17hf8c26972a4eb865dE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 1
      call $_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h12374d677c463b4fE
      local.set 6
      local.get 5
      local.get 6
      local.get 2
      call $_ZN4core3ptr8metadata14from_raw_parts17he6b5c5f88818e159E
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 5
      i32.load
      local.set 8
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      i32.const 16
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr24slice_from_raw_parts_mut17h0487a22a78aec17cE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=20
      local.get 5
      local.get 2
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=28
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 1
      local.get 2
      call $_ZN4core3ptr8metadata18from_raw_parts_mut17hfa8dd298a6445667E
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 5
      i32.load offset=8
      local.set 9
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 9
      i32.store
      i32.const 32
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr24slice_from_raw_parts_mut17h1e2bbdc57fbc5710E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=20
      local.get 5
      local.get 2
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=28
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 1
      local.get 2
      call $_ZN4core3ptr8metadata18from_raw_parts_mut17hb8b7c4f008eb88dfE
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 5
      i32.load offset=8
      local.set 9
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 9
      i32.store
      i32.const 32
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr4read17h2d44350d870e19deE (type 7) (param i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 3
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 3
      drop
      return
    )
    (func $_ZN4core3ptr4read17he4f7101cd336d9d5E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i64 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 48
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      i32.load offset=16
      local.set 5
      local.get 4
      i32.load offset=20
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=4
      local.get 4
      local.get 5
      i32.store
      local.get 4
      local.set 7
      local.get 4
      local.get 7
      i32.store offset=44
      local.get 1
      i64.load align=4
      local.set 8
      local.get 4
      local.get 8
      i64.store
      local.get 4
      i32.load
      local.set 9
      local.get 4
      i32.load offset=4
      local.set 10
      local.get 4
      local.get 9
      i32.store offset=24
      local.get 4
      local.get 10
      i32.store offset=28
      local.get 4
      local.get 9
      i32.store offset=32
      local.get 4
      local.get 10
      i32.store offset=36
      local.get 0
      local.get 10
      i32.store offset=4
      local.get 0
      local.get 9
      i32.store
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hde7d7feeb92feb47E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 0
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h532271613057cc00E
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 4
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hecdef426be9fe013E
      drop
      i32.const 16
      local.set 5
      local.get 3
      local.get 5
      i32.add
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 4
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h414996b28a9c94fbE (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17h97dc1ea8c8385f63E
      local.set 4
      local.get 0
      i32.load offset=8
      local.set 5
      local.get 4
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.get 7
      i32.gt_u
      local.set 8
      i32.const 1
      local.set 9
      local.get 8
      local.get 9
      i32.and
      local.set 10
      block  ;; label = @1
        local.get 10
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=8
        local.set 11
        local.get 0
        local.get 11
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h5b16bb300ec5d197E
      end
      i32.const 16
      local.set 12
      local.get 3
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17h97dc1ea8c8385f63E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 5
      local.get 5
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hcb67c2a37ad6d421E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 96
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 1
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h414996b28a9c94fbE
      i32.const 40
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 1
      i64.load align=4
      local.set 8
      local.get 7
      local.get 8
      i64.store align=4
      i32.const 8
      local.set 9
      local.get 7
      local.get 9
      i32.add
      local.set 10
      local.get 1
      local.get 9
      i32.add
      local.set 11
      local.get 11
      i32.load
      local.set 12
      local.get 10
      local.get 12
      i32.store
      i32.const 72
      local.set 13
      local.get 4
      local.get 13
      i32.add
      local.set 14
      local.get 14
      local.set 15
      i32.const 40
      local.set 16
      local.get 4
      local.get 16
      i32.add
      local.set 17
      local.get 17
      local.set 18
      local.get 18
      i64.load align=4
      local.set 19
      local.get 15
      local.get 19
      i64.store align=4
      i32.const 8
      local.set 20
      local.get 15
      local.get 20
      i32.add
      local.set 21
      local.get 18
      local.get 20
      i32.add
      local.set 22
      local.get 22
      i32.load
      local.set 23
      local.get 21
      local.get 23
      i32.store
      i32.const 24
      local.set 24
      local.get 4
      local.get 24
      i32.add
      local.set 25
      local.get 25
      local.set 26
      i32.const 72
      local.set 27
      local.get 4
      local.get 27
      i32.add
      local.set 28
      local.get 28
      local.set 29
      local.get 29
      i64.load align=4
      local.set 30
      local.get 26
      local.get 30
      i64.store align=4
      i32.const 8
      local.set 31
      local.get 26
      local.get 31
      i32.add
      local.set 32
      local.get 29
      local.get 31
      i32.add
      local.set 33
      local.get 33
      i32.load
      local.set 34
      local.get 32
      local.get 34
      i32.store
      i32.const 24
      local.set 35
      local.get 4
      local.get 35
      i32.add
      local.set 36
      local.get 36
      local.set 37
      local.get 4
      local.get 37
      i32.store offset=88
      i32.const 24
      local.set 38
      local.get 4
      local.get 38
      i32.add
      local.set 39
      local.get 39
      local.set 40
      i32.const 16
      local.set 41
      local.get 4
      local.get 41
      i32.add
      local.set 42
      local.get 42
      local.get 40
      call $_ZN4core3ptr4read17he4f7101cd336d9d5E
      local.get 4
      i32.load offset=20
      local.set 43
      local.get 4
      i32.load offset=16
      local.set 44
      local.get 4
      local.get 44
      i32.store offset=56
      local.get 4
      local.get 43
      i32.store offset=60
      i32.const 24
      local.set 45
      local.get 4
      local.get 45
      i32.add
      local.set 46
      local.get 46
      local.set 47
      local.get 4
      local.get 47
      i32.store offset=92
      i32.const 24
      local.set 48
      local.get 4
      local.get 48
      i32.add
      local.set 49
      local.get 49
      local.set 50
      local.get 50
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h9647b09485e54d6eE
      local.set 51
      local.get 4
      local.get 51
      i32.store offset=68
      i32.const 8
      local.set 52
      local.get 4
      local.get 52
      i32.add
      local.set 53
      local.get 53
      local.get 44
      local.get 43
      local.get 51
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17ha112fdadc5242347E
      local.get 4
      i32.load offset=12
      local.set 54
      local.get 4
      i32.load offset=8
      local.set 55
      local.get 4
      local.get 55
      local.get 54
      call $_ZN5alloc5boxed70Box$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$C$A$GT$11assume_init17h611fcc3333d2de5eE
      local.get 4
      i32.load offset=4
      local.set 56
      local.get 4
      i32.load
      local.set 57
      local.get 0
      local.get 56
      i32.store offset=4
      local.get 0
      local.get 57
      i32.store
      i32.const 96
      local.set 58
      local.get 4
      local.get 58
      i32.add
      local.set 59
      local.get 59
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h9647b09485e54d6eE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load offset=8
      local.set 4
      local.get 4
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h1a61e128631e621fE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 0
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h532271613057cc00E
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 4
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hecdef426be9fe013E
      drop
      i32.const 16
      local.set 5
      local.get 3
      local.get 5
      i32.add
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 4
      return
    )
    (func $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hbb125c52d17c204aE (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 1
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h1a61e128631e621fE
      local.set 5
      local.get 1
      i32.load offset=8
      local.set 6
      local.get 4
      local.get 5
      local.get 6
      call $_ZN4core5slice3raw14from_raw_parts17h19432f05c8034d9cE
      local.get 4
      i32.load offset=4
      local.set 7
      local.get 4
      i32.load
      local.set 8
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      i32.const 16
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h21753f9d3ab3a54cE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha975ce09ed8c39d4E
      local.get 5
      i32.load offset=4
      local.set 6
      local.get 5
      i32.load
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=8
      local.get 5
      local.get 6
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 8
      local.get 5
      i32.load offset=12
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      i32.const 32
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hd9797f45b3f13abbE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h272c4d907e383246E
      local.get 5
      i32.load offset=4
      local.set 6
      local.get 5
      i32.load
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=8
      local.get 5
      local.get 6
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 8
      local.get 5
      i32.load offset=12
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      i32.const 32
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h174706835af7f311E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      i32.const 24
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.set 8
      local.get 8
      call $_ZN4core3ptr4read17h2d44350d870e19deE
      local.get 5
      i32.load offset=24
      local.set 9
      local.get 5
      i32.load offset=28
      local.set 10
      i32.const 16
      local.set 11
      local.get 5
      local.get 11
      i32.add
      local.set 12
      local.get 12
      local.get 9
      local.get 10
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h46d3e36f18a53620E
      local.get 5
      i32.load offset=20
      local.set 13
      local.get 5
      i32.load offset=16
      local.set 14
      i32.const 8
      local.set 15
      local.get 5
      local.get 15
      i32.add
      local.set 16
      local.get 16
      local.get 14
      local.get 13
      call $_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h70611256cd07c9ceE
      local.get 5
      i32.load offset=12
      local.set 17
      local.get 5
      i32.load offset=8
      local.set 18
      local.get 5
      local.get 18
      i32.store offset=32
      local.get 5
      local.get 17
      i32.store offset=36
      local.get 5
      i32.load offset=32
      local.set 19
      local.get 5
      i32.load offset=36
      local.set 20
      local.get 0
      local.get 20
      i32.store offset=4
      local.get 0
      local.get 19
      i32.store
      i32.const 48
      local.set 21
      local.get 5
      local.get 21
      i32.add
      local.set 22
      local.get 22
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h46d3e36f18a53620E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 1
      i32.store offset=32
      local.get 5
      local.get 2
      i32.store offset=36
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      i32.load offset=24
      local.set 6
      local.get 5
      i32.load offset=28
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=12
      local.get 5
      local.get 6
      i32.store offset=8
      i32.const 8
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.set 10
      local.get 5
      local.get 10
      i32.store offset=44
      i32.const 8
      local.set 11
      local.get 5
      local.get 11
      i32.add
      local.set 12
      local.get 12
      local.set 13
      local.get 13
      i32.load
      local.set 14
      local.get 13
      i32.load offset=4
      local.set 15
      local.get 5
      local.get 14
      local.get 15
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h1ab80aafe42def48E
      local.get 5
      i32.load offset=4
      local.set 16
      local.get 5
      i32.load
      local.set 17
      local.get 0
      local.get 16
      i32.store offset=4
      local.get 0
      local.get 17
      i32.store
      i32.const 48
      local.set 18
      local.get 5
      local.get 18
      i32.add
      local.set 19
      local.get 19
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h674513e27194b2c7E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 1
      local.get 2
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h174706835af7f311E
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 5
      i32.load offset=8
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=40
      local.get 5
      local.get 8
      i32.store offset=44
      local.get 5
      local.get 9
      local.get 8
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h1ab80aafe42def48E
      local.get 5
      i32.load offset=4
      local.set 10
      local.get 5
      i32.load
      local.set 11
      local.get 5
      local.get 11
      i32.store offset=16
      local.get 5
      local.get 10
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 12
      local.get 5
      i32.load offset=20
      local.set 13
      local.get 0
      local.get 13
      i32.store offset=4
      local.get 0
      local.get 12
      i32.store
      i32.const 48
      local.set 14
      local.get 5
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed70Box$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$C$A$GT$11assume_init17h611fcc3333d2de5eE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      i32.const 16
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 1
      local.get 2
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h674513e27194b2c7E
      local.get 5
      i32.load offset=20
      local.set 8
      local.get 5
      i32.load offset=16
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=40
      local.get 5
      local.get 8
      i32.store offset=44
      i32.const 8
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      local.get 9
      local.get 8
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h21753f9d3ab3a54cE
      local.get 5
      i32.load offset=12
      local.set 12
      local.get 5
      i32.load offset=8
      local.set 13
      local.get 0
      local.get 12
      i32.store offset=4
      local.get 0
      local.get 13
      i32.store
      i32.const 48
      local.set 14
      local.get 5
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h81ee5340f7c36c46E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 4
      return
    )
    (func $_ZN4core3num7nonzero12NonZeroUsize3get17h802f8d9a4aeaaa54E (type 6) (param i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1c21ff869daca444E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h6b1cec20f7396af5E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hecdef426be9fe013E
      local.set 4
      i32.const -1
      local.set 5
      local.get 4
      local.get 5
      i32.xor
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.and
      local.set 8
      block  ;; label = @1
        block  ;; label = @2
          local.get 8
          br_if 0 (;@2;)
          i32.const 0
          local.set 9
          local.get 3
          local.get 9
          i32.store offset=8
          br 1 (;@1;)
        end
        local.get 0
        call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc24ba6d3a3e246c7E
        local.set 10
        local.get 3
        local.get 10
        i32.store offset=8
      end
      local.get 3
      i32.load offset=8
      local.set 11
      i32.const 16
      local.set 12
      local.get 3
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      local.get 11
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3d30505ea2bf08c0E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 0
      local.get 1
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4d25ff3d72dcc324E
      local.get 4
      i32.load offset=4
      drop
      local.get 4
      i32.load
      local.set 5
      local.get 5
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc24ba6d3a3e246c7E
      local.set 6
      i32.const 16
      local.set 7
      local.get 4
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      local.get 6
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4d25ff3d72dcc324E (type 3) (param i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    )
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17he1e9f9eb33787820E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 1
      call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17he02ed0cf9d9a85ebE
      local.set 5
      local.get 5
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E
      local.set 6
      i32.const 16
      local.set 7
      local.get 4
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      local.get 6
      return
    )
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17he02ed0cf9d9a85ebE (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.get 0
      local.get 1
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4d25ff3d72dcc324E
      local.get 4
      i32.load offset=12
      local.set 7
      local.get 4
      i32.load offset=8
      local.set 8
      local.get 4
      local.get 8
      i32.store offset=24
      local.get 4
      local.get 7
      i32.store offset=28
      local.get 8
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc24ba6d3a3e246c7E
      local.set 9
      i32.const 32
      local.set 10
      local.get 4
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      local.get 9
      return
    )
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h50868425216aa021E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 1
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E
      local.set 6
      i32.const 16
      local.set 7
      local.get 5
      local.get 7
      i32.add
      local.set 8
      local.get 8
      local.get 6
      local.get 2
      call $_ZN4core3ptr24slice_from_raw_parts_mut17h0487a22a78aec17cE
      local.get 5
      i32.load offset=20
      local.set 9
      local.get 5
      i32.load offset=16
      local.set 10
      i32.const 8
      local.set 11
      local.get 5
      local.get 11
      i32.add
      local.set 12
      local.get 12
      local.get 10
      local.get 9
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1c21ff869daca444E
      local.get 5
      i32.load offset=12
      local.set 13
      local.get 5
      i32.load offset=8
      local.set 14
      local.get 0
      local.get 13
      i32.store offset=4
      local.get 0
      local.get 14
      i32.store
      i32.const 32
      local.set 15
      local.get 5
      local.get 15
      i32.add
      local.set 16
      local.get 16
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$3len17h633180a3059dcc72E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.get 0
      local.get 1
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4d25ff3d72dcc324E
      local.get 4
      i32.load offset=12
      local.set 7
      local.get 4
      i32.load offset=8
      local.set 8
      local.get 4
      local.get 8
      i32.store offset=24
      local.get 4
      local.get 7
      i32.store offset=28
      local.get 8
      local.get 7
      call $_ZN4core3ptr8metadata8metadata17h64ff0f9e6085de78E
      local.set 9
      i32.const 32
      local.set 10
      local.get 4
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      local.get 9
      return
    )
    (func $__rust_alloc (type 2) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc
      local.set 2
      local.get 2
      return
    )
    (func $__rust_dealloc (type 3) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      call $__rdl_dealloc
      return
    )
    (func $__rust_realloc (type 9) (param i32 i32 i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $__rdl_realloc
      local.set 4
      local.get 4
      return
    )
    (func $__rust_alloc_zeroed (type 2) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc_zeroed
      local.set 2
      local.get 2
      return
    )
    (func $__rust_alloc_error_handler (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $__rg_oom
      return
    )
    (func $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17ha5b9b1bb326946b4E (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 16
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=4
      local.get 6
      local.get 2
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hbd7dbb2b87829290E
      i32.const 16
      local.set 7
      local.get 6
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hbd7dbb2b87829290E (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 32
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=12
      local.get 6
      local.get 2
      i32.store offset=16
      local.get 6
      local.get 3
      i32.store offset=20
      local.get 6
      local.get 1
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hccfb7d2d028a2748E
      local.get 6
      i32.load offset=4
      local.set 7
      local.get 6
      i32.load
      local.set 8
      local.get 0
      local.get 8
      i32.store
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store offset=8
      i32.const 32
      local.set 9
      local.get 6
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN6origin5fetch17h801138fbf4732735E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h48a893b0ceb05fecE
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=16
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h171a27622d370960E
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=20
      i32.const 1053352
      local.set 8
      local.get 8
      local.set 9
      i32.const 2
      local.set 10
      local.get 9
      local.get 10
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h7a4252bd15ff5545E
      local.set 11
      local.get 5
      local.get 11
      i32.store offset=24
      local.get 6
      local.get 7
      local.get 11
      call $_ZN6origin5fetch10wit_import17h013cec6c970ebfacE
      i32.const 8
      local.set 12
      local.get 11
      local.get 12
      i32.add
      local.set 13
      local.get 13
      local.get 11
      i32.lt_s
      local.set 14
      i32.const 1
      local.set 15
      local.get 14
      local.get 15
      i32.and
      local.set 16
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 16
              br_if 0 (;@4;)
              local.get 13
              i32.load
              local.set 17
              local.get 5
              local.get 17
              i32.store offset=28
              i32.const 0
              local.set 18
              local.get 11
              local.set 19
              i32.const 1
              local.set 20
              local.get 18
              local.get 20
              i32.and
              local.set 21
              local.get 21
              br_if 2 (;@2;)
              br 1 (;@3;)
            end
            i32.const 1048928
            local.set 22
            local.get 22
            local.set 23
            i32.const 28
            local.set 24
            i32.const 1048908
            local.set 25
            local.get 25
            local.set 26
            local.get 23
            local.get 24
            local.get 26
            call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
            unreachable
          end
          local.get 19
          i32.load
          local.set 27
          local.get 0
          local.get 27
          local.get 17
          local.get 17
          call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17ha5b9b1bb326946b4E
          br 1 (;@1;)
        end
        i32.const 1048928
        local.set 28
        local.get 28
        local.set 29
        i32.const 28
        local.set 30
        i32.const 1048956
        local.set 31
        local.get 31
        local.set 32
        local.get 29
        local.get 30
        local.get 32
        call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
        unreachable
      end
      i32.const 32
      local.set 33
      local.get 5
      local.get 33
      i32.add
      local.set 34
      local.get 34
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h3f5ea4b5cbc9cb1eE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 4
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hccfb7d2d028a2748E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 1
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h3f5ea4b5cbc9cb1eE
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 7
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 32
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h171a27622d370960E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      local.get 4
      local.get 0
      i32.store offset=24
      local.get 4
      local.get 1
      i32.store offset=28
      local.get 4
      i32.load offset=24
      drop
      local.get 4
      i32.load offset=28
      local.set 5
      local.get 5
      return
    )
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h48a893b0ceb05fecE (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h7a4252bd15ff5545E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h6624a16553a7462bE (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 16
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=4
      local.get 6
      local.get 2
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hf46ddc7ca443849eE
      i32.const 16
      local.set 7
      local.get 6
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17hf46ddc7ca443849eE (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 32
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=12
      local.get 6
      local.get 2
      i32.store offset=16
      local.get 6
      local.get 3
      i32.store offset=20
      local.get 6
      local.get 1
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h39c123d0c5afef22E
      local.get 6
      i32.load offset=4
      local.set 7
      local.get 6
      i32.load
      local.set 8
      local.get 0
      local.get 8
      i32.store
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store offset=8
      i32.const 32
      local.set 9
      local.get 6
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1e030769e78e0282E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      local.get 4
      local.get 0
      i32.store offset=24
      local.get 4
      local.get 1
      i32.store offset=28
      local.get 4
      i32.load offset=24
      drop
      local.get 4
      i32.load offset=28
      local.set 5
      local.get 5
      return
    )
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h16f29b64f3a52451E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN5cache3get17heeb15c6bc9e6bb76E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 80
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=40
      local.get 5
      local.get 2
      i32.store offset=44
      local.get 5
      local.get 1
      i32.store offset=56
      local.get 5
      local.get 2
      i32.store offset=60
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h16f29b64f3a52451E
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=64
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1e030769e78e0282E
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=68
      i32.const 1053368
      local.set 8
      local.get 8
      local.set 9
      i32.const 3
      local.set 10
      local.get 9
      local.get 10
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h059d165916a9d67eE
      local.set 11
      local.get 5
      local.get 11
      i32.store offset=72
      local.get 6
      local.get 7
      local.get 11
      call $_ZN5cache3get10wit_import17h5968e0566bff2a5bE
      i32.const 0
      local.set 12
      local.get 11
      local.set 13
      i32.const 1
      local.set 14
      local.get 12
      local.get 14
      i32.and
      local.set 15
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            local.get 15
                            br_if 0 (;@11;)
                            local.get 13
                            i32.load
                            local.set 16
                            i32.const 1
                            local.set 17
                            local.get 16
                            local.get 17
                            i32.gt_u
                            drop
                            local.get 16
                            br_table 2 (;@9;) 3 (;@8;) 1 (;@10;)
                          end
                          i32.const 1049024
                          local.set 18
                          local.get 18
                          local.set 19
                          i32.const 28
                          local.set 20
                          i32.const 1049004
                          local.set 21
                          local.get 21
                          local.set 22
                          local.get 19
                          local.get 20
                          local.get 22
                          call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
                          unreachable
                        end
                        i32.const 16
                        local.set 23
                        local.get 5
                        local.get 23
                        i32.add
                        local.set 24
                        local.get 24
                        local.set 25
                        i32.const 1049080
                        local.set 26
                        local.get 26
                        local.set 27
                        i32.const 1
                        local.set 28
                        i32.const 1049088
                        local.set 29
                        local.get 29
                        local.set 30
                        i32.const 0
                        local.set 31
                        local.get 25
                        local.get 27
                        local.get 28
                        local.get 30
                        local.get 31
                        call $_ZN4core3fmt9Arguments6new_v117h0ce8c6c3267d62beE
                        br 2 (;@7;)
                      end
                      i32.const 0
                      local.set 32
                      local.get 0
                      local.get 32
                      i32.store
                      br 7 (;@1;)
                    end
                    i32.const 16
                    local.set 33
                    local.get 11
                    local.get 33
                    i32.add
                    local.set 34
                    local.get 34
                    local.get 11
                    i32.lt_s
                    local.set 35
                    i32.const 1
                    local.set 36
                    local.get 35
                    local.get 36
                    i32.and
                    local.set 37
                    local.get 37
                    br_if 2 (;@5;)
                    br 1 (;@6;)
                  end
                  i32.const 16
                  local.set 38
                  local.get 5
                  local.get 38
                  i32.add
                  local.set 39
                  local.get 39
                  local.set 40
                  i32.const 1049088
                  local.set 41
                  local.get 41
                  local.set 42
                  local.get 40
                  local.get 42
                  call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
                  unreachable
                end
                local.get 34
                i32.load
                local.set 43
                local.get 5
                local.get 43
                i32.store offset=76
                i32.const 8
                local.set 44
                local.get 11
                local.get 44
                i32.add
                local.set 45
                local.get 45
                local.get 11
                i32.lt_s
                local.set 46
                i32.const 1
                local.set 47
                local.get 46
                local.get 47
                i32.and
                local.set 48
                local.get 48
                br_if 2 (;@3;)
                br 1 (;@4;)
              end
              i32.const 1049024
              local.set 49
              local.get 49
              local.set 50
              i32.const 28
              local.set 51
              i32.const 1049104
              local.set 52
              local.get 52
              local.set 53
              local.get 50
              local.get 51
              local.get 53
              call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
              unreachable
            end
            local.get 45
            i32.load
            local.set 54
            local.get 5
            local.set 55
            local.get 55
            local.get 54
            local.get 43
            local.get 43
            call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h6624a16553a7462bE
            br 1 (;@2;)
          end
          i32.const 1049024
          local.set 56
          local.get 56
          local.set 57
          i32.const 28
          local.set 58
          i32.const 1049120
          local.set 59
          local.get 59
          local.set 60
          local.get 57
          local.get 58
          local.get 60
          call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
          unreachable
        end
        local.get 5
        local.set 61
        local.get 61
        i64.load align=4
        local.set 62
        local.get 0
        local.get 62
        i64.store align=4
        i32.const 8
        local.set 63
        local.get 0
        local.get 63
        i32.add
        local.set 64
        local.get 61
        local.get 63
        i32.add
        local.set 65
        local.get 65
        i32.load
        local.set 66
        local.get 64
        local.get 66
        i32.store
      end
      i32.const 80
      local.set 67
      local.get 5
      local.get 67
      i32.add
      local.set 68
      local.get 68
      global.set $__stack_pointer
      return
    )
    (func $_ZN5cache3put17h9433ec1a5666185bE (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 48
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 0
      i32.store
      local.get 6
      local.get 1
      i32.store offset=4
      local.get 6
      local.get 2
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 6
      local.get 0
      i32.store offset=16
      local.get 6
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      call $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h16f29b64f3a52451E
      local.set 7
      local.get 6
      local.get 7
      i32.store offset=24
      local.get 0
      local.get 1
      call $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h1e030769e78e0282E
      local.set 8
      local.get 6
      local.get 8
      i32.store offset=28
      local.get 6
      local.get 2
      i32.store offset=32
      local.get 6
      local.get 3
      i32.store offset=36
      local.get 2
      local.get 3
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h654cd659a18199f5E
      local.set 9
      local.get 6
      local.get 9
      i32.store offset=40
      local.get 6
      local.get 3
      i32.store offset=44
      local.get 7
      local.get 8
      local.get 9
      local.get 3
      call $_ZN5cache3put10wit_import17h057e18890376b7a0E
      i32.const 48
      local.set 10
      local.get 6
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha8d9575081c84967E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 4
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h39c123d0c5afef22E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 1
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha8d9575081c84967E
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 7
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 32
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3fmt9Arguments6new_v117h0ce8c6c3267d62beE (type 8) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 32
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=16
      local.get 7
      local.get 2
      i32.store offset=20
      local.get 7
      local.get 3
      i32.store offset=24
      local.get 7
      local.get 4
      i32.store offset=28
      local.get 2
      local.set 8
      local.get 4
      local.set 9
      local.get 8
      local.get 9
      i32.lt_u
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      block  ;; label = @1
        block  ;; label = @2
          local.get 12
          br_if 0 (;@2;)
          i32.const 1
          local.set 13
          local.get 4
          local.get 13
          i32.add
          local.set 14
          local.get 2
          local.set 15
          local.get 14
          local.set 16
          local.get 15
          local.get 16
          i32.gt_u
          local.set 17
          i32.const 1
          local.set 18
          local.get 17
          local.get 18
          i32.and
          local.set 19
          local.get 7
          local.get 19
          i32.store8 offset=7
          br 1 (;@1;)
        end
        i32.const 1
        local.set 20
        local.get 7
        local.get 20
        i32.store8 offset=7
      end
      local.get 7
      i32.load8_u offset=7
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block  ;; label = @1
        local.get 23
        br_if 0 (;@1;)
        i32.const 0
        local.set 24
        local.get 7
        local.get 24
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 7
        i32.load offset=8
        local.set 25
        local.get 7
        i32.load offset=12
        local.set 26
        local.get 0
        local.get 25
        i32.store offset=8
        local.get 0
        local.get 26
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=16
        local.get 0
        local.get 4
        i32.store offset=20
        i32.const 32
        local.set 27
        local.get 7
        local.get 27
        i32.add
        local.set 28
        local.get 28
        global.set $__stack_pointer
        return
      end
      i32.const 1049136
      local.set 29
      local.get 29
      local.set 30
      i32.const 12
      local.set 31
      i32.const 1049224
      local.set 32
      local.get 32
      local.set 33
      local.get 30
      local.get 31
      local.get 33
      call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
      unreachable
    )
    (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h059d165916a9d67eE (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h654cd659a18199f5E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h796f01ecd9953865E (type 6) (param i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8dcefbf403739ff4E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h76813add11105b8eE
      local.set 4
      i32.const 16
      local.set 5
      local.get 3
      local.get 5
      i32.add
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 4
      return
    )
    (func $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17he248883860e6a92aE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 4
      return
    )
    (func $_ZN4core3num7nonzero12NonZeroUsize3get17hb285180ea94b32fdE (type 6) (param i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hed53456a110f687fE (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=4
      local.get 4
      local.get 1
      i32.store offset=8
      local.get 0
      local.set 5
      local.get 1
      local.set 6
      local.get 5
      local.get 6
      i32.eq
      local.set 7
      i32.const 1
      local.set 8
      local.get 7
      local.get 8
      i32.and
      local.set 9
      local.get 4
      local.get 9
      i32.store8 offset=15
      local.get 4
      i32.load8_u offset=15
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      local.get 12
      return
    )
    (func $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hecdef426be9fe013E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 0
      local.set 4
      local.get 0
      local.get 4
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hed53456a110f687fE
      local.set 5
      i32.const 1
      local.set 6
      local.get 5
      local.get 6
      i32.and
      local.set 7
      i32.const 16
      local.set 8
      local.get 3
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      local.get 7
      return
    )
    (func $_ZN5alloc5alloc5alloc17h8d79e1c215c6c2d1E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      call $_ZN4core5alloc6layout6Layout4size17h69d0109636cc7050E
      local.set 8
      i32.const 8
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 11
      call $_ZN4core5alloc6layout6Layout5align17hd02aaccb50e88507E
      local.set 12
      local.get 8
      local.get 12
      call $__rust_alloc
      local.set 13
      i32.const 16
      local.set 14
      local.get 4
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      local.get 13
      return
    )
    (func $_ZN5alloc5alloc7dealloc17h079cbd57a47cebfbE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      local.set 6
      local.get 6
      call $_ZN4core5alloc6layout6Layout4size17h69d0109636cc7050E
      local.set 7
      local.get 5
      local.set 8
      local.get 8
      call $_ZN4core5alloc6layout6Layout5align17hd02aaccb50e88507E
      local.set 9
      local.get 0
      local.get 7
      local.get 9
      call $__rust_dealloc
      i32.const 16
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5alloc7realloc17h757f3f5b5e172a33E (type 9) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 16
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store
      local.get 6
      local.get 2
      i32.store offset=4
      local.get 6
      local.get 0
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 6
      local.set 7
      local.get 7
      call $_ZN4core5alloc6layout6Layout4size17h69d0109636cc7050E
      local.set 8
      local.get 6
      local.set 9
      local.get 9
      call $_ZN4core5alloc6layout6Layout5align17hd02aaccb50e88507E
      local.set 10
      local.get 0
      local.get 8
      local.get 10
      local.get 3
      call $__rust_realloc
      local.set 11
      i32.const 16
      local.set 12
      local.get 6
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      local.get 11
      return
    )
    (func $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb554ac380dd7ad24E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 2
      call $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17he248883860e6a92aE
      local.set 6
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 6
      i32.store offset=4
      local.get 5
      i32.load
      local.set 7
      local.get 5
      i32.load offset=4
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 16
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5alloc6layout6Layout4size17h69d0109636cc7050E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load
      local.set 4
      local.get 4
      return
    )
    (func $_ZN4core5alloc6layout6Layout5align17hd02aaccb50e88507E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 4
      call $_ZN4core3num7nonzero12NonZeroUsize3get17hb285180ea94b32fdE
      local.set 5
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h76813add11105b8eE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h796f01ecd9953865E
      local.set 4
      local.get 4
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc24ba6d3a3e246c7E
      local.set 5
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc24ba6d3a3e246c7E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 4
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc447358796de7283E (type 6) (param i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      return
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h546a951093a215e1E (type 11) (param i32) (result i64)
      i64.const 9147559743429524724
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf445004df805b183E (type 11) (param i32) (result i64)
      i64.const 7021966103922166811
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h8431deac2f92990dE (type 3) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block  ;; label = @1
        local.get 1
        local.get 2
        i32.add
        local.tee 2
        local.get 1
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.const 1
        i32.shl
        local.tee 4
        local.get 2
        local.get 4
        local.get 2
        i32.gt_u
        select
        local.tee 2
        i32.const 8
        local.get 2
        i32.const 8
        i32.gt_u
        select
        local.set 2
        block  ;; label = @2
          block  ;; label = @3
            local.get 1
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            i32.const 1
            i32.store
            local.get 3
            local.get 1
            i32.store offset=20
            local.get 3
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@2;)
          end
          local.get 3
          i32.const 0
          i32.store offset=16
        end
        local.get 3
        local.get 2
        i32.const 1
        local.get 3
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h3bd40c6cb5581129E
        block  ;; label = @2
          local.get 3
          i32.load
          i32.const 1
          i32.ne
          br_if 0 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 1 (;@1;)
          local.get 3
          i32.load offset=4
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17hfc3a3c0bb5c92416E
          unreachable
        end
        local.get 0
        local.get 3
        i64.load offset=4 align=4
        i64.store align=4
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hdfce08dd2d1c6df1E
      unreachable
    )
    (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd6c44c8aad833069E (type 7) (param i32))
    (func $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$GT$17hb7ebe08b18c9eae7E (type 7) (param i32)
      (local i32)
      block  ;; label = @1
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h026e818ddc338470E (type 7) (param i32)
      (local i32)
      block  ;; label = @1
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        local.get 0
        i32.const 1
        call $__rust_dealloc
      end
    )
    (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h5d1c8037972eed83E (type 2) (param i32 i32) (result i32)
      block  ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        i32.const 1049264
        i32.const 43
        local.get 1
        call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
        unreachable
      end
      local.get 0
    )
    (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hf9bbc9ac2bde1a3cE (type 6) (param i32) (result i32)
      block  ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        i32.const 1049264
        i32.const 43
        i32.const 1049360
        call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
        unreachable
      end
      local.get 0
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h432834db7addc189E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      block  ;; label = @1
        block  ;; label = @2
          local.get 1
          i32.const 127
          i32.gt_u
          br_if 0 (;@2;)
          block  ;; label = @3
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            local.get 3
            i32.const 1
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h8431deac2f92990dE
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load
          local.get 3
          i32.add
          local.get 1
          i32.store8
          br 1 (;@1;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        block  ;; label = @2
          block  ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block  ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 4
              local.set 1
              br 2 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 1 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
        end
        block  ;; label = @2
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 0
          i32.const 8
          i32.add
          local.tee 4
          i32.load
          local.tee 3
          i32.sub
          local.get 1
          i32.ge_u
          br_if 0 (;@2;)
          local.get 0
          local.get 3
          local.get 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h8431deac2f92990dE
          local.get 4
          i32.load
          local.set 3
        end
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $memcpy
        drop
        local.get 4
        local.get 3
        local.get 1
        i32.add
        i32.store
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      i32.const 0
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h84d50ae8dad40cf4E (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049240
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h9e7b9530a902cf30E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hd0125056a58a9d07E (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32)
      block  ;; label = @1
        local.get 0
        i32.load
        local.tee 3
        i32.const 4
        i32.add
        i32.load
        local.get 3
        i32.const 8
        i32.add
        local.tee 4
        i32.load
        local.tee 0
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 3
        local.get 0
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h8431deac2f92990dE
        local.get 4
        i32.load
        local.set 0
      end
      local.get 3
      i32.load
      local.get 0
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 4
      local.get 0
      local.get 2
      i32.add
      i32.store
      i32.const 0
    )
    (func $_ZN5alloc7raw_vec11finish_grow17h3bd40c6cb5581129E (type 4) (param i32 i32 i32 i32)
      (local i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 2
                    i32.eqz
                    br_if 0 (;@7;)
                    i32.const 1
                    local.set 4
                    local.get 1
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@6;)
                    local.get 3
                    i32.load
                    local.tee 5
                    i32.eqz
                    br_if 3 (;@4;)
                    local.get 3
                    i32.load offset=4
                    local.tee 3
                    br_if 2 (;@5;)
                    local.get 1
                    br_if 4 (;@3;)
                    local.get 2
                    local.set 3
                    br 5 (;@2;)
                  end
                  local.get 0
                  local.get 1
                  i32.store offset=4
                  i32.const 1
                  local.set 4
                end
                i32.const 0
                local.set 1
                br 4 (;@1;)
              end
              local.get 5
              local.get 3
              local.get 2
              local.get 1
              call $__rust_realloc
              local.set 3
              br 2 (;@2;)
            end
            local.get 1
            br_if 0 (;@3;)
            local.get 2
            local.set 3
            br 1 (;@2;)
          end
          local.get 1
          local.get 2
          call $__rust_alloc
          local.set 3
        end
        block  ;; label = @2
          local.get 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.get 3
          i32.store offset=4
          i32.const 0
          local.set 4
          br 1 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 2
        local.set 1
      end
      local.get 0
      local.get 4
      i32.store
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.store
    )
    (func $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h5781df3f3917f539E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 1
                i32.const 9
                i32.lt_u
                br_if 0 (;@5;)
                i32.const 16
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                local.get 1
                i32.gt_u
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              local.get 0
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h352cab7c14275702E
              local.set 2
              br 2 (;@2;)
            end
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 1
          end
          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
          local.set 3
          i32.const 0
          local.set 2
          local.get 3
          local.get 3
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.add
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 3
          i32.const 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.const 2
          i32.shl
          i32.sub
          local.tee 4
          local.get 4
          local.get 3
          i32.gt_u
          select
          local.get 1
          i32.sub
          local.get 0
          i32.le_u
          br_if 0 (;@2;)
          local.get 1
          i32.const 16
          local.get 0
          i32.const 4
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.const -5
          i32.add
          local.get 0
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.tee 4
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.add
          i32.const -4
          i32.add
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h352cab7c14275702E
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h5e53570392f87dfdE
          local.set 0
          block  ;; label = @3
            block  ;; label = @4
              local.get 1
              i32.const -1
              i32.add
              local.tee 2
              local.get 3
              i32.and
              br_if 0 (;@4;)
              local.get 0
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.add
            i32.const 0
            local.get 1
            i32.sub
            i32.and
            call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h5e53570392f87dfdE
            local.set 2
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
            local.get 2
            i32.const 0
            local.get 1
            local.get 2
            local.get 0
            i32.sub
            local.get 3
            i32.gt_u
            select
            i32.add
            local.tee 1
            local.get 0
            i32.sub
            local.tee 2
            i32.sub
            local.set 3
            block  ;; label = @4
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
              local.get 0
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
              local.get 0
              local.get 2
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h242c851c937a837fE
              br 1 (;@3;)
            end
            local.get 0
            i32.load
            local.set 0
            local.get 1
            local.get 3
            i32.store offset=4
            local.get 1
            local.get 0
            local.get 2
            i32.add
            i32.store
          end
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
          br_if 1 (;@1;)
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
          local.tee 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.get 4
          i32.add
          i32.le_u
          br_if 1 (;@1;)
          local.get 1
          local.get 4
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
          local.set 2
          local.get 1
          local.get 4
          call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
          local.get 2
          local.get 0
          local.get 4
          i32.sub
          local.tee 0
          call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
          local.get 2
          local.get 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h242c851c937a837fE
          br 1 (;@1;)
        end
        local.get 2
        return
      end
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
      local.set 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
      drop
      local.get 0
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h352cab7c14275702E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            i32.const 245
            i32.lt_u
            br_if 0 (;@3;)
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
            local.set 2
            i32.const 0
            local.set 3
            local.get 2
            local.get 2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.add
            i32.sub
            i32.const -65544
            i32.add
            i32.const -9
            i32.and
            i32.const -3
            i32.add
            local.tee 2
            i32.const 0
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const 2
            i32.shl
            i32.sub
            local.tee 4
            local.get 4
            local.get 2
            i32.gt_u
            select
            local.get 0
            i32.le_u
            br_if 2 (;@1;)
            local.get 0
            i32.const 4
            i32.add
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 2
            i32.const 0
            i32.load offset=1053416
            i32.eqz
            br_if 1 (;@2;)
            i32.const 0
            local.set 5
            block  ;; label = @4
              local.get 2
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              i32.const 31
              local.set 5
              local.get 2
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@4;)
              local.get 2
              i32.const 6
              local.get 2
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 0
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 0
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 5
            end
            i32.const 0
            local.get 2
            i32.sub
            local.set 3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  local.get 5
                  i32.const 2
                  i32.shl
                  i32.const 1053684
                  i32.add
                  i32.load
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 2
                  local.get 5
                  call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h4bb435d08993fbbfE
                  i32.shl
                  local.set 6
                  i32.const 0
                  local.set 7
                  i32.const 0
                  local.set 4
                  loop  ;; label = @7
                    block  ;; label = @8
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                      local.tee 8
                      local.get 2
                      i32.lt_u
                      br_if 0 (;@8;)
                      local.get 8
                      local.get 2
                      i32.sub
                      local.tee 8
                      local.get 3
                      i32.ge_u
                      br_if 0 (;@8;)
                      local.get 8
                      local.set 3
                      local.get 0
                      local.set 4
                      local.get 8
                      br_if 0 (;@8;)
                      i32.const 0
                      local.set 3
                      local.get 0
                      local.set 4
                      br 3 (;@5;)
                    end
                    local.get 0
                    i32.const 20
                    i32.add
                    i32.load
                    local.tee 8
                    local.get 7
                    local.get 8
                    local.get 0
                    local.get 6
                    i32.const 29
                    i32.shr_u
                    i32.const 4
                    i32.and
                    i32.add
                    i32.const 16
                    i32.add
                    i32.load
                    local.tee 0
                    i32.ne
                    select
                    local.get 7
                    local.get 8
                    select
                    local.set 7
                    local.get 6
                    i32.const 1
                    i32.shl
                    local.set 6
                    local.get 0
                    br_if 0 (;@7;)
                  end
                  block  ;; label = @7
                    local.get 7
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 7
                    local.set 0
                    br 2 (;@5;)
                  end
                  local.get 4
                  br_if 2 (;@4;)
                end
                i32.const 0
                local.set 4
                i32.const 1
                local.get 5
                i32.shl
                call $_ZN8dlmalloc8dlmalloc9left_bits17h75d33c58eefb7676E
                i32.const 0
                i32.load offset=1053416
                i32.and
                local.tee 0
                i32.eqz
                br_if 3 (;@2;)
                local.get 0
                call $_ZN8dlmalloc8dlmalloc9least_bit17h0879ead7eebf0d99E
                i32.ctz
                i32.const 2
                i32.shl
                i32.const 1053684
                i32.add
                i32.load
                local.tee 0
                i32.eqz
                br_if 3 (;@2;)
              end
              loop  ;; label = @5
                local.get 0
                local.get 4
                local.get 0
                call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                local.tee 7
                local.get 2
                i32.ge_u
                local.get 7
                local.get 2
                i32.sub
                local.tee 7
                local.get 3
                i32.lt_u
                i32.and
                local.tee 6
                select
                local.set 4
                local.get 7
                local.get 3
                local.get 6
                select
                local.set 3
                local.get 0
                call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hcffcb9520df57e84E
                local.tee 0
                br_if 0 (;@5;)
              end
              local.get 4
              i32.eqz
              br_if 2 (;@2;)
            end
            block  ;; label = @4
              i32.const 0
              i32.load offset=1053812
              local.tee 0
              local.get 2
              i32.lt_u
              br_if 0 (;@4;)
              local.get 3
              local.get 0
              local.get 2
              i32.sub
              i32.ge_u
              br_if 2 (;@2;)
            end
            local.get 4
            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
            local.tee 0
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
            local.set 7
            local.get 4
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
            block  ;; label = @4
              block  ;; label = @5
                local.get 3
                i32.const 16
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                i32.lt_u
                br_if 0 (;@5;)
                local.get 0
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                local.get 7
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                block  ;; label = @6
                  local.get 3
                  i32.const 256
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 7
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E
                  br 2 (;@4;)
                end
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 4
                i32.const 3
                i32.shl
                i32.const 1053420
                i32.add
                local.set 3
                block  ;; label = @6
                  block  ;; label = @7
                    i32.const 0
                    i32.load offset=1053412
                    local.tee 6
                    i32.const 1
                    local.get 4
                    i32.shl
                    local.tee 4
                    i32.and
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 3
                    i32.load offset=8
                    local.set 4
                    br 1 (;@6;)
                  end
                  i32.const 0
                  local.get 6
                  local.get 4
                  i32.or
                  i32.store offset=1053412
                  local.get 3
                  local.set 4
                end
                local.get 3
                local.get 7
                i32.store offset=8
                local.get 4
                local.get 7
                i32.store offset=12
                local.get 7
                local.get 3
                i32.store offset=12
                local.get 7
                local.get 4
                i32.store offset=8
                br 1 (;@4;)
              end
              local.get 0
              local.get 3
              local.get 2
              i32.add
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h2e06642c23bb42ebE
            end
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
            local.tee 3
            i32.eqz
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          i32.const 16
          local.get 0
          i32.const 4
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          i32.const -5
          i32.add
          local.get 0
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        i32.const 0
                        i32.load offset=1053412
                        local.tee 7
                        local.get 2
                        i32.const 3
                        i32.shr_u
                        local.tee 3
                        i32.shr_u
                        local.tee 0
                        i32.const 3
                        i32.and
                        br_if 0 (;@9;)
                        local.get 2
                        i32.const 0
                        i32.load offset=1053812
                        i32.le_u
                        br_if 7 (;@2;)
                        local.get 0
                        br_if 1 (;@8;)
                        i32.const 0
                        i32.load offset=1053416
                        local.tee 0
                        i32.eqz
                        br_if 7 (;@2;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc9least_bit17h0879ead7eebf0d99E
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1053684
                        i32.add
                        i32.load
                        local.tee 4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                        local.get 2
                        i32.sub
                        local.set 3
                        block  ;; label = @10
                          local.get 4
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hcffcb9520df57e84E
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@10;)
                          loop  ;; label = @11
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                            local.get 2
                            i32.sub
                            local.tee 7
                            local.get 3
                            local.get 7
                            local.get 3
                            i32.lt_u
                            local.tee 7
                            select
                            local.set 3
                            local.get 0
                            local.get 4
                            local.get 7
                            select
                            local.set 4
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hcffcb9520df57e84E
                            local.tee 0
                            br_if 0 (;@11;)
                          end
                        end
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                        local.tee 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.set 7
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
                        local.get 3
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        i32.lt_u
                        br_if 5 (;@4;)
                        local.get 7
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                        local.set 7
                        local.get 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                        local.get 7
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                        i32.const 0
                        i32.load offset=1053812
                        local.tee 4
                        i32.eqz
                        br_if 4 (;@5;)
                        local.get 4
                        i32.const 3
                        i32.shr_u
                        local.tee 8
                        i32.const 3
                        i32.shl
                        i32.const 1053420
                        i32.add
                        local.set 6
                        i32.const 0
                        i32.load offset=1053820
                        local.set 4
                        i32.const 0
                        i32.load offset=1053412
                        local.tee 5
                        i32.const 1
                        local.get 8
                        i32.shl
                        local.tee 8
                        i32.and
                        i32.eqz
                        br_if 2 (;@7;)
                        local.get 6
                        i32.load offset=8
                        local.set 8
                        br 3 (;@6;)
                      end
                      block  ;; label = @9
                        block  ;; label = @10
                          local.get 0
                          i32.const -1
                          i32.xor
                          i32.const 1
                          i32.and
                          local.get 3
                          i32.add
                          local.tee 2
                          i32.const 3
                          i32.shl
                          local.tee 4
                          i32.const 1053428
                          i32.add
                          i32.load
                          local.tee 0
                          i32.const 8
                          i32.add
                          i32.load
                          local.tee 3
                          local.get 4
                          i32.const 1053420
                          i32.add
                          local.tee 4
                          i32.eq
                          br_if 0 (;@10;)
                          local.get 3
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 3
                          i32.store offset=8
                          br 1 (;@9;)
                        end
                        i32.const 0
                        local.get 7
                        i32.const -2
                        local.get 2
                        i32.rotl
                        i32.and
                        i32.store offset=1053412
                      end
                      local.get 0
                      local.get 2
                      i32.const 3
                      i32.shl
                      call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h2e06642c23bb42ebE
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                      local.set 3
                      br 7 (;@1;)
                    end
                    block  ;; label = @8
                      block  ;; label = @9
                        i32.const 1
                        local.get 3
                        i32.const 31
                        i32.and
                        local.tee 3
                        i32.shl
                        call $_ZN8dlmalloc8dlmalloc9left_bits17h75d33c58eefb7676E
                        local.get 0
                        local.get 3
                        i32.shl
                        i32.and
                        call $_ZN8dlmalloc8dlmalloc9least_bit17h0879ead7eebf0d99E
                        i32.ctz
                        local.tee 3
                        i32.const 3
                        i32.shl
                        local.tee 7
                        i32.const 1053428
                        i32.add
                        i32.load
                        local.tee 0
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 4
                        local.get 7
                        i32.const 1053420
                        i32.add
                        local.tee 7
                        i32.eq
                        br_if 0 (;@9;)
                        local.get 4
                        local.get 7
                        i32.store offset=12
                        local.get 7
                        local.get 4
                        i32.store offset=8
                        br 1 (;@8;)
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053412
                      i32.const -2
                      local.get 3
                      i32.rotl
                      i32.and
                      i32.store offset=1053412
                    end
                    local.get 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                    local.get 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                    local.tee 4
                    local.get 3
                    i32.const 3
                    i32.shl
                    local.get 2
                    i32.sub
                    local.tee 7
                    call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                    block  ;; label = @8
                      i32.const 0
                      i32.load offset=1053812
                      local.tee 2
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 2
                      i32.const 3
                      i32.shr_u
                      local.tee 6
                      i32.const 3
                      i32.shl
                      i32.const 1053420
                      i32.add
                      local.set 3
                      i32.const 0
                      i32.load offset=1053820
                      local.set 2
                      block  ;; label = @9
                        block  ;; label = @10
                          i32.const 0
                          i32.load offset=1053412
                          local.tee 8
                          i32.const 1
                          local.get 6
                          i32.shl
                          local.tee 6
                          i32.and
                          i32.eqz
                          br_if 0 (;@10;)
                          local.get 3
                          i32.load offset=8
                          local.set 6
                          br 1 (;@9;)
                        end
                        i32.const 0
                        local.get 8
                        local.get 6
                        i32.or
                        i32.store offset=1053412
                        local.get 3
                        local.set 6
                      end
                      local.get 3
                      local.get 2
                      i32.store offset=8
                      local.get 6
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 3
                      i32.store offset=12
                      local.get 2
                      local.get 6
                      i32.store offset=8
                    end
                    i32.const 0
                    local.get 4
                    i32.store offset=1053820
                    i32.const 0
                    local.get 7
                    i32.store offset=1053812
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                    local.set 3
                    br 6 (;@1;)
                  end
                  i32.const 0
                  local.get 5
                  local.get 8
                  i32.or
                  i32.store offset=1053412
                  local.get 6
                  local.set 8
                end
                local.get 6
                local.get 4
                i32.store offset=8
                local.get 8
                local.get 4
                i32.store offset=12
                local.get 4
                local.get 6
                i32.store offset=12
                local.get 4
                local.get 8
                i32.store offset=8
              end
              i32.const 0
              local.get 7
              i32.store offset=1053820
              i32.const 0
              local.get 3
              i32.store offset=1053812
              br 1 (;@3;)
            end
            local.get 0
            local.get 3
            local.get 2
            i32.add
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h2e06642c23bb42ebE
          end
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
          local.tee 3
          br_if 1 (;@1;)
        end
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          i32.const 0
                          i32.load offset=1053812
                          local.tee 3
                          local.get 2
                          i32.ge_u
                          br_if 0 (;@10;)
                          i32.const 0
                          i32.load offset=1053816
                          local.tee 0
                          local.get 2
                          i32.gt_u
                          br_if 2 (;@8;)
                          local.get 1
                          i32.const 1053412
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
                          local.tee 0
                          i32.sub
                          local.get 0
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                          i32.add
                          i32.const 20
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                          i32.add
                          i32.const 16
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                          i32.add
                          i32.const 8
                          i32.add
                          i32.const 65536
                          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17h97283e898b35a077E
                          local.get 1
                          i32.load
                          local.tee 3
                          br_if 1 (;@9;)
                          i32.const 0
                          local.set 3
                          br 9 (;@1;)
                        end
                        i32.const 0
                        i32.load offset=1053820
                        local.set 0
                        block  ;; label = @10
                          local.get 3
                          local.get 2
                          i32.sub
                          local.tee 3
                          i32.const 16
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                          i32.ge_u
                          br_if 0 (;@10;)
                          i32.const 0
                          i32.const 0
                          i32.store offset=1053820
                          i32.const 0
                          i32.load offset=1053812
                          local.set 2
                          i32.const 0
                          i32.const 0
                          i32.store offset=1053812
                          local.get 0
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h2e06642c23bb42ebE
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                          local.set 3
                          br 9 (;@1;)
                        end
                        local.get 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.set 4
                        i32.const 0
                        local.get 3
                        i32.store offset=1053812
                        i32.const 0
                        local.get 4
                        i32.store offset=1053820
                        local.get 4
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                        local.get 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                        local.set 3
                        br 8 (;@1;)
                      end
                      local.get 1
                      i32.load offset=8
                      local.set 5
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053828
                      local.get 1
                      i32.load offset=4
                      local.tee 6
                      i32.add
                      local.tee 0
                      i32.store offset=1053828
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053832
                      local.tee 4
                      local.get 0
                      local.get 4
                      local.get 0
                      i32.gt_u
                      select
                      i32.store offset=1053832
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            i32.const 0
                            i32.load offset=1053824
                            i32.eqz
                            br_if 0 (;@11;)
                            i32.const 1053836
                            local.set 0
                            loop  ;; label = @12
                              local.get 3
                              local.get 0
                              call $_ZN8dlmalloc8dlmalloc7Segment3top17hfe46f64a1cad2ee0E
                              i32.eq
                              br_if 2 (;@10;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@12;)
                              br 3 (;@9;)
                            end
                          end
                          i32.const 0
                          i32.load offset=1053856
                          local.tee 0
                          i32.eqz
                          br_if 3 (;@7;)
                          local.get 3
                          local.get 0
                          i32.lt_u
                          br_if 3 (;@7;)
                          br 7 (;@3;)
                        end
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hf5b949de07a7bcc0E
                        br_if 0 (;@9;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h438889ea1454ae01E
                        local.get 5
                        i32.ne
                        br_if 0 (;@9;)
                        local.get 0
                        i32.const 0
                        i32.load offset=1053824
                        call $_ZN8dlmalloc8dlmalloc7Segment5holds17h34e9aab798ed9a43E
                        br_if 3 (;@6;)
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053856
                      local.tee 0
                      local.get 3
                      local.get 3
                      local.get 0
                      i32.gt_u
                      select
                      i32.store offset=1053856
                      local.get 3
                      local.get 6
                      i32.add
                      local.set 4
                      i32.const 1053836
                      local.set 0
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            loop  ;; label = @12
                              local.get 0
                              i32.load
                              local.get 4
                              i32.eq
                              br_if 1 (;@11;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@12;)
                              br 2 (;@10;)
                            end
                          end
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hf5b949de07a7bcc0E
                          br_if 0 (;@10;)
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h438889ea1454ae01E
                          local.get 5
                          i32.eq
                          br_if 1 (;@9;)
                        end
                        i32.const 0
                        i32.load offset=1053824
                        local.set 4
                        i32.const 1053836
                        local.set 0
                        block  ;; label = @10
                          loop  ;; label = @11
                            block  ;; label = @12
                              local.get 0
                              i32.load
                              local.get 4
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 0
                              call $_ZN8dlmalloc8dlmalloc7Segment3top17hfe46f64a1cad2ee0E
                              local.get 4
                              i32.gt_u
                              br_if 2 (;@10;)
                            end
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@11;)
                          end
                          i32.const 0
                          local.set 0
                        end
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment3top17hfe46f64a1cad2ee0E
                        local.tee 7
                        i32.const 20
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.tee 9
                        i32.sub
                        i32.const -23
                        i32.add
                        local.set 0
                        local.get 4
                        local.get 0
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                        local.tee 8
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.get 8
                        i32.sub
                        i32.add
                        local.tee 0
                        local.get 0
                        local.get 4
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        i32.add
                        i32.lt_u
                        select
                        local.tee 8
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                        local.set 10
                        local.get 8
                        local.get 9
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.set 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
                        local.tee 11
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.set 12
                        i32.const 20
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.set 13
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.set 14
                        i32.const 0
                        local.get 3
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                        local.tee 15
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.get 15
                        i32.sub
                        local.tee 16
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.tee 15
                        i32.store offset=1053824
                        i32.const 0
                        local.get 11
                        local.get 6
                        i32.add
                        local.get 14
                        local.get 12
                        local.get 13
                        i32.add
                        i32.add
                        local.get 16
                        i32.add
                        i32.sub
                        local.tee 11
                        i32.store offset=1053816
                        local.get 15
                        local.get 11
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
                        local.tee 12
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.set 13
                        i32.const 20
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.set 14
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        local.set 16
                        local.get 15
                        local.get 11
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.get 16
                        local.get 14
                        local.get 13
                        local.get 12
                        i32.sub
                        i32.add
                        i32.add
                        i32.store offset=4
                        i32.const 0
                        i32.const 2097152
                        i32.store offset=1053852
                        local.get 8
                        local.get 9
                        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                        i32.const 0
                        i64.load offset=1053836 align=4
                        local.set 17
                        local.get 10
                        i32.const 8
                        i32.add
                        i32.const 0
                        i64.load offset=1053844 align=4
                        i64.store align=4
                        local.get 10
                        local.get 17
                        i64.store align=4
                        i32.const 0
                        local.get 5
                        i32.store offset=1053848
                        i32.const 0
                        local.get 6
                        i32.store offset=1053840
                        i32.const 0
                        local.get 3
                        i32.store offset=1053836
                        i32.const 0
                        local.get 10
                        i32.store offset=1053844
                        loop  ;; label = @10
                          local.get 0
                          i32.const 4
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                          local.set 3
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17ha0fa99a65df1a85fE
                          i32.store offset=4
                          local.get 3
                          local.set 0
                          local.get 7
                          local.get 3
                          i32.const 4
                          i32.add
                          i32.gt_u
                          br_if 0 (;@10;)
                        end
                        local.get 8
                        local.get 4
                        i32.eq
                        br_if 7 (;@2;)
                        local.get 8
                        local.get 4
                        i32.sub
                        local.set 0
                        local.get 4
                        local.get 0
                        local.get 4
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE
                        block  ;; label = @10
                          local.get 0
                          i32.const 256
                          i32.lt_u
                          br_if 0 (;@10;)
                          local.get 4
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E
                          br 8 (;@2;)
                        end
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        local.tee 3
                        i32.const 3
                        i32.shl
                        i32.const 1053420
                        i32.add
                        local.set 0
                        block  ;; label = @10
                          block  ;; label = @11
                            i32.const 0
                            i32.load offset=1053412
                            local.tee 7
                            i32.const 1
                            local.get 3
                            i32.shl
                            local.tee 3
                            i32.and
                            i32.eqz
                            br_if 0 (;@11;)
                            local.get 0
                            i32.load offset=8
                            local.set 3
                            br 1 (;@10;)
                          end
                          i32.const 0
                          local.get 7
                          local.get 3
                          i32.or
                          i32.store offset=1053412
                          local.get 0
                          local.set 3
                        end
                        local.get 0
                        local.get 4
                        i32.store offset=8
                        local.get 3
                        local.get 4
                        i32.store offset=12
                        local.get 4
                        local.get 0
                        i32.store offset=12
                        local.get 4
                        local.get 3
                        i32.store offset=8
                        br 7 (;@2;)
                      end
                      local.get 0
                      i32.load
                      local.set 7
                      local.get 0
                      local.get 3
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 6
                      i32.add
                      i32.store offset=4
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                      local.tee 0
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                      local.set 4
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                      local.tee 6
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                      local.set 8
                      local.get 3
                      local.get 4
                      local.get 0
                      i32.sub
                      i32.add
                      local.tee 3
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                      local.set 4
                      local.get 3
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                      local.get 7
                      local.get 8
                      local.get 6
                      i32.sub
                      i32.add
                      local.tee 0
                      local.get 2
                      local.get 3
                      i32.add
                      i32.sub
                      local.set 2
                      block  ;; label = @9
                        i32.const 0
                        i32.load offset=1053824
                        local.get 0
                        i32.eq
                        br_if 0 (;@9;)
                        i32.const 0
                        i32.load offset=1053820
                        local.get 0
                        i32.eq
                        br_if 4 (;@5;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h3e8a907dceeec0c1E
                        br_if 5 (;@4;)
                        block  ;; label = @10
                          block  ;; label = @11
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                            local.tee 7
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@11;)
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
                            br 1 (;@10;)
                          end
                          block  ;; label = @11
                            local.get 0
                            i32.const 12
                            i32.add
                            i32.load
                            local.tee 6
                            local.get 0
                            i32.const 8
                            i32.add
                            i32.load
                            local.tee 8
                            i32.eq
                            br_if 0 (;@11;)
                            local.get 8
                            local.get 6
                            i32.store offset=12
                            local.get 6
                            local.get 8
                            i32.store offset=8
                            br 1 (;@10;)
                          end
                          i32.const 0
                          i32.const 0
                          i32.load offset=1053412
                          i32.const -2
                          local.get 7
                          i32.const 3
                          i32.shr_u
                          i32.rotl
                          i32.and
                          i32.store offset=1053412
                        end
                        local.get 7
                        local.get 2
                        i32.add
                        local.set 2
                        local.get 0
                        local.get 7
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.set 0
                        br 5 (;@4;)
                      end
                      i32.const 0
                      local.get 4
                      i32.store offset=1053824
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053816
                      local.get 2
                      i32.add
                      local.tee 0
                      i32.store offset=1053816
                      local.get 4
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                      local.set 3
                      br 7 (;@1;)
                    end
                    i32.const 0
                    local.get 0
                    local.get 2
                    i32.sub
                    local.tee 3
                    i32.store offset=1053816
                    i32.const 0
                    i32.const 0
                    i32.load offset=1053824
                    local.tee 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                    local.tee 4
                    i32.store offset=1053824
                    local.get 4
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                    local.set 3
                    br 6 (;@1;)
                  end
                  i32.const 0
                  local.get 3
                  i32.store offset=1053856
                  br 3 (;@3;)
                end
                local.get 0
                local.get 0
                i32.load offset=4
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 0
                i32.load offset=1053816
                local.set 3
                i32.const 0
                i32.load offset=1053824
                local.set 0
                local.get 0
                local.get 0
                call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
                local.tee 4
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                local.get 4
                i32.sub
                local.tee 4
                call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                local.set 0
                i32.const 0
                local.get 3
                local.get 6
                i32.add
                local.get 4
                i32.sub
                local.tee 3
                i32.store offset=1053816
                i32.const 0
                local.get 0
                i32.store offset=1053824
                local.get 0
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
                local.tee 4
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                local.set 7
                i32.const 20
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                local.set 6
                i32.const 16
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                local.set 8
                local.get 0
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                local.get 8
                local.get 6
                local.get 7
                local.get 4
                i32.sub
                i32.add
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 2097152
                i32.store offset=1053852
                br 3 (;@2;)
              end
              i32.const 0
              local.get 4
              i32.store offset=1053820
              i32.const 0
              i32.const 0
              i32.load offset=1053812
              local.get 2
              i32.add
              local.tee 0
              i32.store offset=1053812
              local.get 4
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
              local.set 3
              br 3 (;@1;)
            end
            local.get 4
            local.get 2
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE
            block  ;; label = @4
              local.get 2
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 4
              local.get 2
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
              local.set 3
              br 3 (;@1;)
            end
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 2
            i32.const 3
            i32.shl
            i32.const 1053420
            i32.add
            local.set 0
            block  ;; label = @4
              block  ;; label = @5
                i32.const 0
                i32.load offset=1053412
                local.tee 7
                i32.const 1
                local.get 2
                i32.shl
                local.tee 2
                i32.and
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=8
                local.set 2
                br 1 (;@4;)
              end
              i32.const 0
              local.get 7
              local.get 2
              i32.or
              i32.store offset=1053412
              local.get 0
              local.set 2
            end
            local.get 0
            local.get 4
            i32.store offset=8
            local.get 2
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 0
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            local.get 3
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
            local.set 3
            br 2 (;@1;)
          end
          i32.const 0
          i32.const 4095
          i32.store offset=1053860
          i32.const 0
          local.get 5
          i32.store offset=1053848
          i32.const 0
          local.get 6
          i32.store offset=1053840
          i32.const 0
          local.get 3
          i32.store offset=1053836
          i32.const 0
          i32.const 1053420
          i32.store offset=1053432
          i32.const 0
          i32.const 1053428
          i32.store offset=1053440
          i32.const 0
          i32.const 1053420
          i32.store offset=1053428
          i32.const 0
          i32.const 1053436
          i32.store offset=1053448
          i32.const 0
          i32.const 1053428
          i32.store offset=1053436
          i32.const 0
          i32.const 1053444
          i32.store offset=1053456
          i32.const 0
          i32.const 1053436
          i32.store offset=1053444
          i32.const 0
          i32.const 1053452
          i32.store offset=1053464
          i32.const 0
          i32.const 1053444
          i32.store offset=1053452
          i32.const 0
          i32.const 1053460
          i32.store offset=1053472
          i32.const 0
          i32.const 1053452
          i32.store offset=1053460
          i32.const 0
          i32.const 1053468
          i32.store offset=1053480
          i32.const 0
          i32.const 1053460
          i32.store offset=1053468
          i32.const 0
          i32.const 1053476
          i32.store offset=1053488
          i32.const 0
          i32.const 1053468
          i32.store offset=1053476
          i32.const 0
          i32.const 1053484
          i32.store offset=1053496
          i32.const 0
          i32.const 1053476
          i32.store offset=1053484
          i32.const 0
          i32.const 1053484
          i32.store offset=1053492
          i32.const 0
          i32.const 1053492
          i32.store offset=1053504
          i32.const 0
          i32.const 1053492
          i32.store offset=1053500
          i32.const 0
          i32.const 1053500
          i32.store offset=1053512
          i32.const 0
          i32.const 1053500
          i32.store offset=1053508
          i32.const 0
          i32.const 1053508
          i32.store offset=1053520
          i32.const 0
          i32.const 1053508
          i32.store offset=1053516
          i32.const 0
          i32.const 1053516
          i32.store offset=1053528
          i32.const 0
          i32.const 1053516
          i32.store offset=1053524
          i32.const 0
          i32.const 1053524
          i32.store offset=1053536
          i32.const 0
          i32.const 1053524
          i32.store offset=1053532
          i32.const 0
          i32.const 1053532
          i32.store offset=1053544
          i32.const 0
          i32.const 1053532
          i32.store offset=1053540
          i32.const 0
          i32.const 1053540
          i32.store offset=1053552
          i32.const 0
          i32.const 1053540
          i32.store offset=1053548
          i32.const 0
          i32.const 1053548
          i32.store offset=1053560
          i32.const 0
          i32.const 1053556
          i32.store offset=1053568
          i32.const 0
          i32.const 1053548
          i32.store offset=1053556
          i32.const 0
          i32.const 1053564
          i32.store offset=1053576
          i32.const 0
          i32.const 1053556
          i32.store offset=1053564
          i32.const 0
          i32.const 1053572
          i32.store offset=1053584
          i32.const 0
          i32.const 1053564
          i32.store offset=1053572
          i32.const 0
          i32.const 1053580
          i32.store offset=1053592
          i32.const 0
          i32.const 1053572
          i32.store offset=1053580
          i32.const 0
          i32.const 1053588
          i32.store offset=1053600
          i32.const 0
          i32.const 1053580
          i32.store offset=1053588
          i32.const 0
          i32.const 1053596
          i32.store offset=1053608
          i32.const 0
          i32.const 1053588
          i32.store offset=1053596
          i32.const 0
          i32.const 1053604
          i32.store offset=1053616
          i32.const 0
          i32.const 1053596
          i32.store offset=1053604
          i32.const 0
          i32.const 1053612
          i32.store offset=1053624
          i32.const 0
          i32.const 1053604
          i32.store offset=1053612
          i32.const 0
          i32.const 1053620
          i32.store offset=1053632
          i32.const 0
          i32.const 1053612
          i32.store offset=1053620
          i32.const 0
          i32.const 1053628
          i32.store offset=1053640
          i32.const 0
          i32.const 1053620
          i32.store offset=1053628
          i32.const 0
          i32.const 1053636
          i32.store offset=1053648
          i32.const 0
          i32.const 1053628
          i32.store offset=1053636
          i32.const 0
          i32.const 1053644
          i32.store offset=1053656
          i32.const 0
          i32.const 1053636
          i32.store offset=1053644
          i32.const 0
          i32.const 1053652
          i32.store offset=1053664
          i32.const 0
          i32.const 1053644
          i32.store offset=1053652
          i32.const 0
          i32.const 1053660
          i32.store offset=1053672
          i32.const 0
          i32.const 1053652
          i32.store offset=1053660
          i32.const 0
          i32.const 1053668
          i32.store offset=1053680
          i32.const 0
          i32.const 1053660
          i32.store offset=1053668
          i32.const 0
          i32.const 1053668
          i32.store offset=1053676
          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
          local.tee 4
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 7
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 8
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 5
          i32.const 0
          local.get 3
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
          local.tee 0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.get 0
          i32.sub
          local.tee 10
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
          local.tee 0
          i32.store offset=1053824
          i32.const 0
          local.get 4
          local.get 6
          i32.add
          local.get 5
          local.get 7
          local.get 8
          i32.add
          i32.add
          local.get 10
          i32.add
          i32.sub
          local.tee 3
          i32.store offset=1053816
          local.get 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
          local.tee 4
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 7
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 6
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
          local.set 8
          local.get 0
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
          local.get 8
          local.get 6
          local.get 7
          local.get 4
          i32.sub
          i32.add
          i32.add
          i32.store offset=4
          i32.const 0
          i32.const 2097152
          i32.store offset=1053852
        end
        i32.const 0
        local.set 3
        i32.const 0
        i32.load offset=1053816
        local.tee 0
        local.get 2
        i32.le_u
        br_if 0 (;@1;)
        i32.const 0
        local.get 0
        local.get 2
        i32.sub
        local.tee 3
        i32.store offset=1053816
        i32.const 0
        i32.const 0
        i32.load offset=1053824
        local.tee 0
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
        local.tee 4
        i32.store offset=1053824
        local.get 4
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE
        local.get 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
        local.set 3
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h242c851c937a837fE (type 0) (param i32 i32)
      (local i32 i32 i32 i32)
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
      local.set 2
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h5e9f562b69a61f50E
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.set 3
            block  ;; label = @4
              block  ;; label = @5
                local.get 0
                call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
                br_if 0 (;@5;)
                local.get 3
                local.get 1
                i32.add
                local.set 1
                local.get 0
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h621ab246efe655f0E
                local.tee 0
                i32.const 0
                i32.load offset=1053820
                i32.ne
                br_if 1 (;@4;)
                local.get 2
                i32.load offset=4
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 2 (;@3;)
                i32.const 0
                local.get 1
                i32.store offset=1053812
                local.get 0
                local.get 1
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE
                return
              end
              i32.const 1053412
              local.get 0
              local.get 3
              i32.sub
              local.get 3
              local.get 1
              i32.add
              i32.const 16
              i32.add
              local.tee 0
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h1bf2d375f7b4dfb2E
              i32.eqz
              br_if 2 (;@2;)
              i32.const 0
              i32.const 0
              i32.load offset=1053828
              local.get 0
              i32.sub
              i32.store offset=1053828
              return
            end
            block  ;; label = @4
              local.get 3
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 0
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
              br 1 (;@3;)
            end
            block  ;; label = @4
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 4
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.eq
              br_if 0 (;@4;)
              local.get 5
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 5
              i32.store offset=8
              br 1 (;@3;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1053412
            i32.const -2
            local.get 3
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store offset=1053412
          end
          block  ;; label = @3
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h724d2c15d6a27fa0E
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE
            br 2 (;@1;)
          end
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.const 0
              i32.load offset=1053824
              i32.eq
              br_if 0 (;@4;)
              local.get 2
              i32.const 0
              i32.load offset=1053820
              i32.ne
              br_if 1 (;@3;)
              i32.const 0
              local.get 0
              i32.store offset=1053820
              i32.const 0
              i32.const 0
              i32.load offset=1053812
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1053812
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
              return
            end
            i32.const 0
            local.get 0
            i32.store offset=1053824
            i32.const 0
            i32.const 0
            i32.load offset=1053816
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1053816
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1053820
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            i32.const 0
            i32.store offset=1053812
            i32.const 0
            i32.const 0
            i32.store offset=1053820
            return
          end
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
          local.tee 3
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @3
            block  ;; label = @4
              local.get 3
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
              br 1 (;@3;)
            end
            block  ;; label = @4
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 4
              local.get 2
              i32.const 8
              i32.add
              i32.load
              local.tee 2
              i32.eq
              br_if 0 (;@4;)
              local.get 2
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 2
              i32.store offset=8
              br 1 (;@3;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1053412
            i32.const -2
            local.get 3
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store offset=1053412
          end
          local.get 0
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
          local.get 0
          i32.const 0
          i32.load offset=1053820
          i32.ne
          br_if 1 (;@1;)
          i32.const 0
          local.get 1
          i32.store offset=1053812
        end
        return
      end
      block  ;; label = @1
        local.get 1
        i32.const 256
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E
        return
      end
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 2
      i32.const 3
      i32.shl
      i32.const 1053420
      i32.add
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          i32.const 0
          i32.load offset=1053412
          local.tee 3
          i32.const 1
          local.get 2
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load offset=8
          local.set 2
          br 1 (;@1;)
        end
        i32.const 0
        local.get 3
        local.get 2
        i32.or
        i32.store offset=1053412
        local.get 1
        local.set 2
      end
      local.get 1
      local.get 0
      i32.store offset=8
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E (type 7) (param i32)
      (local i32 i32 i32 i32 i32)
      local.get 0
      i32.load offset=24
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hd1ca58f932abe9bcE
            local.get 0
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            i32.const 20
            i32.const 16
            local.get 0
            i32.const 20
            i32.add
            local.tee 2
            i32.load
            local.tee 3
            select
            i32.add
            i32.load
            local.tee 4
            br_if 1 (;@2;)
            i32.const 0
            local.set 3
            br 2 (;@1;)
          end
          local.get 0
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17hd68c3d3b19faac46E
          local.tee 4
          local.get 0
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hd1ca58f932abe9bcE
          local.tee 3
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
          i32.store offset=12
          local.get 3
          local.get 4
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
          i32.store offset=8
          br 1 (;@1;)
        end
        local.get 2
        local.get 0
        i32.const 16
        i32.add
        local.get 3
        select
        local.set 2
        loop  ;; label = @2
          local.get 2
          local.set 5
          block  ;; label = @3
            local.get 4
            local.tee 3
            i32.const 20
            i32.add
            local.tee 2
            i32.load
            local.tee 4
            br_if 0 (;@3;)
            local.get 3
            i32.const 16
            i32.add
            local.set 2
            local.get 3
            i32.load offset=16
            local.set 4
          end
          local.get 4
          br_if 0 (;@2;)
        end
        local.get 5
        i32.const 0
        i32.store
      end
      block  ;; label = @1
        local.get 1
        i32.eqz
        br_if 0 (;@1;)
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.const 1053684
            i32.add
            local.tee 4
            i32.load
            local.get 0
            i32.eq
            br_if 0 (;@3;)
            local.get 1
            i32.const 16
            i32.const 20
            local.get 1
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          local.get 4
          local.get 3
          i32.store
          local.get 3
          br_if 0 (;@2;)
          i32.const 0
          i32.const 0
          i32.load offset=1053416
          i32.const -2
          local.get 0
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=1053416
          return
        end
        local.get 3
        local.get 1
        i32.store offset=24
        block  ;; label = @2
          local.get 0
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.const 20
        i32.add
        local.get 4
        i32.store
        local.get 4
        local.get 3
        i32.store offset=24
        return
      end
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32)
      i32.const 0
      local.set 2
      block  ;; label = @1
        local.get 1
        i32.const 256
        i32.lt_u
        br_if 0 (;@1;)
        i32.const 31
        local.set 2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@1;)
        local.get 1
        i32.const 6
        local.get 1
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      local.get 2
      i32.store offset=28
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1053684
      i32.add
      local.set 3
      local.get 0
      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                i32.const 0
                i32.load offset=1053416
                local.tee 5
                i32.const 1
                local.get 2
                i32.shl
                local.tee 6
                i32.and
                i32.eqz
                br_if 0 (;@5;)
                local.get 3
                i32.load
                local.set 5
                local.get 2
                call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h4bb435d08993fbbfE
                local.set 2
                local.get 5
                call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
                call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                local.get 1
                i32.ne
                br_if 1 (;@4;)
                local.get 5
                local.set 2
                br 2 (;@3;)
              end
              i32.const 0
              local.get 5
              local.get 6
              i32.or
              i32.store offset=1053416
              local.get 3
              local.get 0
              i32.store
              local.get 0
              local.get 3
              i32.store offset=24
              br 3 (;@1;)
            end
            local.get 1
            local.get 2
            i32.shl
            local.set 3
            loop  ;; label = @4
              local.get 5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 6
              i32.load
              local.tee 2
              i32.eqz
              br_if 2 (;@2;)
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 2
              local.set 5
              local.get 2
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
              local.get 1
              i32.ne
              br_if 0 (;@4;)
            end
          end
          local.get 2
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E
          local.tee 2
          i32.load offset=8
          local.tee 3
          local.get 4
          i32.store offset=12
          local.get 2
          local.get 4
          i32.store offset=8
          local.get 4
          local.get 2
          i32.store offset=12
          local.get 4
          local.get 3
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          return
        end
        local.get 6
        local.get 0
        i32.store
        local.get 0
        local.get 5
        i32.store offset=24
      end
      local.get 4
      local.get 4
      i32.store offset=8
      local.get 4
      local.get 4
      i32.store offset=12
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17hee1c73bf289d30b1E (type 12) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        i32.const 0
        i32.load offset=1053844
        local.tee 0
        br_if 0 (;@1;)
        i32.const 0
        i32.const 4095
        i32.store offset=1053860
        i32.const 0
        return
      end
      i32.const 1053836
      local.set 1
      i32.const 0
      local.set 2
      i32.const 0
      local.set 3
      loop  ;; label = @1
        local.get 0
        local.tee 4
        i32.load offset=8
        local.set 0
        local.get 4
        i32.load offset=4
        local.set 5
        local.get 4
        i32.load
        local.set 6
        block  ;; label = @2
          block  ;; label = @3
            i32.const 1053412
            local.get 4
            i32.const 12
            i32.add
            i32.load
            i32.const 1
            i32.shr_u
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hc23d259d7456907fE
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hf5b949de07a7bcc0E
            br_if 0 (;@3;)
            local.get 6
            local.get 6
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
            local.tee 7
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.get 7
            i32.sub
            i32.add
            local.tee 7
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
            local.set 8
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
            local.tee 9
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 10
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 11
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 12
            local.get 7
            call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h3e8a907dceeec0c1E
            br_if 0 (;@3;)
            local.get 7
            local.get 8
            i32.add
            local.get 6
            local.get 9
            local.get 5
            i32.add
            local.get 10
            local.get 11
            i32.add
            local.get 12
            i32.add
            i32.sub
            i32.add
            i32.lt_u
            br_if 0 (;@3;)
            block  ;; label = @4
              block  ;; label = @5
                i32.const 0
                i32.load offset=1053820
                local.get 7
                i32.eq
                br_if 0 (;@5;)
                local.get 7
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
                br 1 (;@4;)
              end
              i32.const 0
              i32.const 0
              i32.store offset=1053812
              i32.const 0
              i32.const 0
              i32.store offset=1053820
            end
            block  ;; label = @4
              i32.const 1053412
              local.get 6
              local.get 5
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h1bf2d375f7b4dfb2E
              br_if 0 (;@4;)
              local.get 7
              local.get 8
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E
              br 1 (;@3;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1053828
            local.get 5
            i32.sub
            i32.store offset=1053828
            local.get 1
            local.get 0
            i32.store offset=8
            local.get 5
            local.get 2
            i32.add
            local.set 2
            br 1 (;@2;)
          end
          local.get 4
          local.set 1
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        br_if 0 (;@1;)
      end
      i32.const 0
      local.get 3
      i32.const 4095
      local.get 3
      i32.const 4095
      i32.gt_u
      select
      i32.store offset=1053860
      local.get 2
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h7c81226b27f52398E (type 7) (param i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h5e53570392f87dfdE
      local.set 0
      local.get 0
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
      local.tee 1
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
      local.set 2
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h5e9f562b69a61f50E
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.set 3
            block  ;; label = @4
              block  ;; label = @5
                local.get 0
                call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
                br_if 0 (;@5;)
                local.get 3
                local.get 1
                i32.add
                local.set 1
                local.get 0
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h621ab246efe655f0E
                local.tee 0
                i32.const 0
                i32.load offset=1053820
                i32.ne
                br_if 1 (;@4;)
                local.get 2
                i32.load offset=4
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 2 (;@3;)
                i32.const 0
                local.get 1
                i32.store offset=1053812
                local.get 0
                local.get 1
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE
                return
              end
              i32.const 1053412
              local.get 0
              local.get 3
              i32.sub
              local.get 3
              local.get 1
              i32.add
              i32.const 16
              i32.add
              local.tee 0
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h1bf2d375f7b4dfb2E
              i32.eqz
              br_if 2 (;@2;)
              i32.const 0
              i32.const 0
              i32.load offset=1053828
              local.get 0
              i32.sub
              i32.store offset=1053828
              return
            end
            block  ;; label = @4
              local.get 3
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 0
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
              br 1 (;@3;)
            end
            block  ;; label = @4
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 4
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.eq
              br_if 0 (;@4;)
              local.get 5
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 5
              i32.store offset=8
              br 1 (;@3;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1053412
            i32.const -2
            local.get 3
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store offset=1053412
          end
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h724d2c15d6a27fa0E
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              local.get 1
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE
              br 1 (;@3;)
            end
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 2
                    i32.const 0
                    i32.load offset=1053824
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 0
                    i32.load offset=1053820
                    i32.ne
                    br_if 1 (;@6;)
                    i32.const 0
                    local.get 0
                    i32.store offset=1053820
                    i32.const 0
                    i32.const 0
                    i32.load offset=1053812
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.store offset=1053812
                    local.get 0
                    local.get 1
                    call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                    return
                  end
                  i32.const 0
                  local.get 0
                  i32.store offset=1053824
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053816
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1053816
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=1053820
                  i32.eq
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                local.tee 3
                local.get 1
                i32.add
                local.set 1
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 3
                    i32.const 256
                    i32.lt_u
                    br_if 0 (;@7;)
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
                    br 1 (;@6;)
                  end
                  block  ;; label = @7
                    local.get 2
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee 4
                    local.get 2
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 2
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 2
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 2
                    i32.store offset=8
                    br 1 (;@6;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053412
                  i32.const -2
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1053412
                end
                local.get 0
                local.get 1
                call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                local.get 0
                i32.const 0
                i32.load offset=1053820
                i32.ne
                br_if 2 (;@3;)
                i32.const 0
                local.get 1
                i32.store offset=1053812
                br 3 (;@2;)
              end
              i32.const 0
              i32.const 0
              i32.store offset=1053812
              i32.const 0
              i32.const 0
              i32.store offset=1053820
            end
            i32.const 0
            i32.load offset=1053852
            local.get 1
            i32.ge_u
            br_if 1 (;@2;)
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
            local.set 0
            local.get 0
            local.get 0
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.add
            i32.sub
            i32.const -65544
            i32.add
            i32.const -9
            i32.and
            i32.const -3
            i32.add
            local.tee 0
            i32.const 0
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const 2
            i32.shl
            i32.sub
            local.tee 1
            local.get 1
            local.get 0
            i32.gt_u
            select
            i32.eqz
            br_if 1 (;@2;)
            i32.const 0
            i32.load offset=1053824
            i32.eqz
            br_if 1 (;@2;)
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
            local.tee 0
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 1
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 3
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 4
            i32.const 0
            local.set 2
            block  ;; label = @4
              i32.const 0
              i32.load offset=1053816
              local.tee 5
              local.get 4
              local.get 3
              local.get 1
              local.get 0
              i32.sub
              i32.add
              i32.add
              local.tee 0
              i32.le_u
              br_if 0 (;@4;)
              local.get 5
              local.get 0
              i32.const -1
              i32.xor
              i32.add
              i32.const -65536
              i32.and
              local.set 3
              i32.const 0
              i32.load offset=1053824
              local.set 1
              i32.const 1053836
              local.set 0
              block  ;; label = @5
                loop  ;; label = @6
                  block  ;; label = @7
                    local.get 0
                    i32.load
                    local.get 1
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc7Segment3top17hfe46f64a1cad2ee0E
                    local.get 1
                    i32.gt_u
                    br_if 2 (;@5;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.tee 0
                  br_if 0 (;@6;)
                end
                i32.const 0
                local.set 0
              end
              i32.const 0
              local.set 2
              local.get 0
              call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hf5b949de07a7bcc0E
              br_if 0 (;@4;)
              i32.const 1053412
              local.get 0
              i32.const 12
              i32.add
              i32.load
              i32.const 1
              i32.shr_u
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hc23d259d7456907fE
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load offset=4
              local.get 3
              i32.lt_u
              br_if 0 (;@4;)
              i32.const 1053836
              local.set 1
              loop  ;; label = @5
                local.get 0
                local.get 1
                call $_ZN8dlmalloc8dlmalloc7Segment5holds17h34e9aab798ed9a43E
                br_if 1 (;@4;)
                local.get 1
                i32.load offset=8
                local.tee 1
                br_if 0 (;@5;)
              end
              i32.const 1053412
              local.get 0
              i32.load
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 1
              local.get 3
              i32.sub
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17hfa718c035dfb5a0aE
              i32.eqz
              br_if 0 (;@4;)
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              local.get 0
              i32.load offset=4
              local.get 3
              i32.sub
              i32.store offset=4
              i32.const 0
              i32.const 0
              i32.load offset=1053828
              local.get 3
              i32.sub
              i32.store offset=1053828
              i32.const 0
              i32.load offset=1053816
              local.set 1
              i32.const 0
              i32.load offset=1053824
              local.set 0
              i32.const 0
              local.get 0
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
              local.tee 2
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
              local.get 2
              i32.sub
              local.tee 2
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
              local.tee 0
              i32.store offset=1053824
              i32.const 0
              local.get 1
              local.get 3
              local.get 2
              i32.add
              i32.sub
              local.tee 1
              i32.store offset=1053816
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
              local.tee 2
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
              local.set 4
              i32.const 20
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
              local.set 5
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
              local.set 6
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
              local.get 6
              local.get 5
              local.get 4
              local.get 2
              i32.sub
              i32.add
              i32.add
              i32.store offset=4
              i32.const 0
              i32.const 2097152
              i32.store offset=1053852
              local.get 3
              local.set 2
            end
            local.get 2
            i32.const 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17hee1c73bf289d30b1E
            i32.sub
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            i32.load offset=1053816
            i32.const 0
            i32.load offset=1053852
            i32.le_u
            br_if 1 (;@2;)
            i32.const 0
            i32.const -1
            i32.store offset=1053852
            return
          end
          local.get 1
          i32.const 256
          i32.lt_u
          br_if 1 (;@1;)
          local.get 0
          local.get 1
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17hf45058faff0e2e82E
          i32.const 0
          i32.const 0
          i32.load offset=1053860
          i32.const -1
          i32.add
          local.tee 0
          i32.store offset=1053860
          local.get 0
          br_if 0 (;@2;)
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17hee1c73bf289d30b1E
          drop
          return
        end
        return
      end
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 2
      i32.const 3
      i32.shl
      i32.const 1053420
      i32.add
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          i32.const 0
          i32.load offset=1053412
          local.tee 3
          i32.const 1
          local.get 2
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load offset=8
          local.set 2
          br 1 (;@1;)
        end
        i32.const 0
        local.get 3
        local.get 2
        i32.or
        i32.store offset=1053412
        local.get 1
        local.set 2
      end
      local.get 1
      local.get 0
      i32.store offset=8
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
    )
    (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h1a5f05611837cc03E (type 7) (param i32)
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hdf90814cf3dcdd18E
      unreachable
    )
    (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hdf90814cf3dcdd18E (type 3) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 0
              i32.const 4
              i32.add
              i32.load
              br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
            end
            local.get 4
            br_if 2 (;@1;)
            i32.const 1049264
            local.set 0
            i32.const 0
            local.set 4
            br 1 (;@2;)
          end
          local.get 4
          br_if 1 (;@1;)
          local.get 0
          i32.load
          local.tee 0
          i32.load offset=4
          local.set 4
          local.get 0
          i32.load
          local.set 0
        end
        local.get 3
        local.get 4
        i32.store offset=4
        local.get 3
        local.get 0
        i32.store
        local.get 3
        i32.const 1049396
        local.get 1
        call $_ZN4core5panic10panic_info9PanicInfo7message17hfdbbf6e609182ab8E
        local.get 2
        call $_ZN3std9panicking20rust_panic_with_hook17h19d99b2b2597d628E
        unreachable
      end
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 1049376
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo7message17hfdbbf6e609182ab8E
      local.get 2
      call $_ZN3std9panicking20rust_panic_with_hook17h19d99b2b2597d628E
      unreachable
    )
    (func $_ZN3std5alloc24default_alloc_error_hook17hef43e042cb81a197E (type 0) (param i32 i32))
    (func $rust_oom (type 0) (param i32 i32)
      (local i32)
      local.get 0
      local.get 1
      i32.const 0
      i32.load offset=1053392
      local.tee 2
      i32.const 3
      local.get 2
      select
      call_indirect (type 0)
      unreachable
      unreachable
    )
    (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h5781df3f3917f539E
    )
    (func $__rdl_dealloc (type 3) (param i32 i32 i32)
      local.get 0
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h7c81226b27f52398E
    )
    (func $__rdl_realloc (type 9) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.const 9
              i32.lt_u
              br_if 0 (;@4;)
              local.get 3
              local.get 2
              call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h5781df3f3917f539E
              local.tee 2
              br_if 1 (;@3;)
              i32.const 0
              return
            end
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E
            local.set 1
            i32.const 0
            local.set 2
            local.get 1
            local.get 1
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.add
            i32.sub
            i32.const -65544
            i32.add
            i32.const -9
            i32.and
            i32.const -3
            i32.add
            local.tee 1
            i32.const 0
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const 2
            i32.shl
            i32.sub
            local.tee 4
            local.get 4
            local.get 1
            i32.gt_u
            select
            local.get 3
            i32.le_u
            br_if 1 (;@2;)
            i32.const 16
            local.get 3
            i32.const 4
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            i32.const -5
            i32.add
            local.get 3
            i32.gt_u
            select
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
            local.set 4
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h5e53570392f87dfdE
            local.set 1
            local.get 1
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
            local.tee 5
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
            local.set 6
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            local.get 1
                            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
                            br_if 0 (;@11;)
                            local.get 5
                            local.get 4
                            i32.ge_u
                            br_if 1 (;@10;)
                            local.get 6
                            i32.const 0
                            i32.load offset=1053824
                            i32.eq
                            br_if 2 (;@9;)
                            local.get 6
                            i32.const 0
                            i32.load offset=1053820
                            i32.eq
                            br_if 3 (;@8;)
                            local.get 6
                            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h724d2c15d6a27fa0E
                            br_if 7 (;@4;)
                            local.get 6
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                            local.tee 7
                            local.get 5
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.lt_u
                            br_if 7 (;@4;)
                            local.get 5
                            local.get 4
                            i32.sub
                            local.set 8
                            local.get 7
                            i32.const 256
                            i32.lt_u
                            br_if 4 (;@7;)
                            local.get 6
                            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17hffe7892df3ad31a6E
                            br 5 (;@6;)
                          end
                          local.get 1
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
                          local.set 5
                          local.get 4
                          i32.const 256
                          i32.lt_u
                          br_if 6 (;@4;)
                          block  ;; label = @11
                            local.get 5
                            local.get 4
                            i32.const 4
                            i32.add
                            i32.lt_u
                            br_if 0 (;@11;)
                            local.get 5
                            local.get 4
                            i32.sub
                            i32.const 131073
                            i32.lt_u
                            br_if 6 (;@5;)
                          end
                          i32.const 1053412
                          local.get 1
                          local.get 1
                          i32.load
                          local.tee 6
                          i32.sub
                          local.get 5
                          local.get 6
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 7
                          local.get 4
                          i32.const 31
                          i32.add
                          i32.const 1053412
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h7a25b6c4f8f34f4cE
                          call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                          local.tee 5
                          i32.const 1
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17h1c5e8e40a62adc9bE
                          local.tee 4
                          i32.eqz
                          br_if 6 (;@4;)
                          local.get 4
                          local.get 6
                          i32.add
                          local.tee 1
                          local.get 5
                          local.get 6
                          i32.sub
                          local.tee 3
                          i32.const -16
                          i32.add
                          local.tee 2
                          i32.store offset=4
                          call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17ha0fa99a65df1a85fE
                          local.set 0
                          local.get 1
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                          local.get 0
                          i32.store offset=4
                          local.get 1
                          local.get 3
                          i32.const -12
                          i32.add
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                          i32.const 0
                          i32.store offset=4
                          i32.const 0
                          i32.const 0
                          i32.load offset=1053828
                          local.get 5
                          local.get 7
                          i32.sub
                          i32.add
                          local.tee 3
                          i32.store offset=1053828
                          i32.const 0
                          i32.const 0
                          i32.load offset=1053856
                          local.tee 2
                          local.get 4
                          local.get 4
                          local.get 2
                          i32.gt_u
                          select
                          i32.store offset=1053856
                          i32.const 0
                          i32.const 0
                          i32.load offset=1053832
                          local.tee 2
                          local.get 3
                          local.get 2
                          local.get 3
                          i32.gt_u
                          select
                          i32.store offset=1053832
                          br 9 (;@1;)
                        end
                        local.get 5
                        local.get 4
                        i32.sub
                        local.tee 5
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        i32.lt_u
                        br_if 4 (;@5;)
                        local.get 1
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                        local.set 6
                        local.get 1
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                        local.get 6
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                        local.get 6
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h242c851c937a837fE
                        br 4 (;@5;)
                      end
                      i32.const 0
                      i32.load offset=1053816
                      local.get 5
                      i32.add
                      local.tee 5
                      local.get 4
                      i32.le_u
                      br_if 4 (;@4;)
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                      local.set 6
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                      local.get 6
                      local.get 5
                      local.get 4
                      i32.sub
                      local.tee 4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      local.get 4
                      i32.store offset=1053816
                      i32.const 0
                      local.get 6
                      i32.store offset=1053824
                      br 3 (;@5;)
                    end
                    i32.const 0
                    i32.load offset=1053812
                    local.get 5
                    i32.add
                    local.tee 5
                    local.get 4
                    i32.lt_u
                    br_if 3 (;@4;)
                    block  ;; label = @8
                      block  ;; label = @9
                        local.get 5
                        local.get 4
                        i32.sub
                        local.tee 6
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                        i32.ge_u
                        br_if 0 (;@9;)
                        local.get 1
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                        i32.const 0
                        local.set 6
                        i32.const 0
                        local.set 5
                        br 1 (;@8;)
                      end
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                      local.tee 5
                      local.get 6
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                      local.set 7
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                      local.get 5
                      local.get 6
                      call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17h8a30bced8c9dc494E
                    end
                    i32.const 0
                    local.get 5
                    i32.store offset=1053820
                    i32.const 0
                    local.get 6
                    i32.store offset=1053812
                    br 2 (;@5;)
                  end
                  block  ;; label = @7
                    local.get 6
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee 9
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 6
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 6
                    local.get 9
                    i32.store offset=12
                    local.get 9
                    local.get 6
                    i32.store offset=8
                    br 1 (;@6;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053412
                  i32.const -2
                  local.get 7
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1053412
                end
                block  ;; label = @6
                  local.get 8
                  i32.const 16
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 1
                  local.get 4
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E
                  local.set 5
                  local.get 1
                  local.get 4
                  call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                  local.get 5
                  local.get 8
                  call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
                  local.get 5
                  local.get 8
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h242c851c937a837fE
                  br 1 (;@5;)
                end
                local.get 1
                local.get 5
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E
              end
              local.get 1
              br_if 3 (;@1;)
            end
            local.get 3
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h352cab7c14275702E
            local.tee 4
            i32.eqz
            br_if 1 (;@2;)
            local.get 4
            local.get 0
            local.get 3
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE
            i32.const -8
            i32.const -4
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
            select
            i32.add
            local.tee 2
            local.get 2
            local.get 3
            i32.gt_u
            select
            call $memcpy
            local.set 3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h7c81226b27f52398E
            local.get 3
            return
          end
          local.get 2
          local.get 0
          local.get 3
          local.get 1
          local.get 1
          local.get 3
          i32.gt_u
          select
          call $memcpy
          drop
          local.get 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h7c81226b27f52398E
        end
        local.get 2
        return
      end
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
      drop
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E
    )
    (func $__rdl_alloc_zeroed (type 2) (param i32 i32) (result i32)
      block  ;; label = @1
        local.get 0
        local.get 1
        call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h5781df3f3917f539E
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        block  ;; label = @2
          i32.const 1053412
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$15allocates_zeros17h279ec74bbd0490aeE
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h5e53570392f87dfdE
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE
          br_if 1 (;@1;)
        end
        local.get 1
        i32.const 0
        local.get 0
        call $memset
        drop
      end
      local.get 1
    )
    (func $rust_begin_unwind (type 7) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 0
      call $_ZN4core5panic10panic_info9PanicInfo8location17h84698dcf64f7b19cE
      i32.const 1049344
      call $_ZN4core6option15Option$LT$T$GT$6unwrap17h5d1c8037972eed83E
      local.set 2
      local.get 0
      call $_ZN4core5panic10panic_info9PanicInfo7message17hfdbbf6e609182ab8E
      call $_ZN4core6option15Option$LT$T$GT$6unwrap17hf9bbc9ac2bde1a3cE
      local.set 3
      local.get 1
      local.get 2
      i32.store offset=8
      local.get 1
      local.get 0
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 1
      call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h1a5f05611837cc03E
      unreachable
    )
    (func $_ZN3std9panicking20rust_panic_with_hook17h19d99b2b2597d628E (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      i32.const 1
      local.set 5
      i32.const 0
      i32.const 0
      i32.load offset=1053408
      local.tee 6
      i32.const 1
      i32.add
      i32.store offset=1053408
      block  ;; label = @1
        block  ;; label = @2
          i32.const 0
          i32.load offset=1053864
          i32.const 1
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          i32.load offset=1053868
          i32.const 1
          i32.add
          local.set 5
          br 1 (;@1;)
        end
        i32.const 0
        i32.const 1
        i32.store offset=1053864
      end
      i32.const 0
      local.get 5
      i32.store offset=1053868
      block  ;; label = @1
        block  ;; label = @2
          local.get 6
          i32.const 0
          i32.lt_s
          br_if 0 (;@2;)
          local.get 5
          i32.const 2
          i32.gt_u
          br_if 0 (;@2;)
          local.get 4
          local.get 3
          i32.store offset=28
          local.get 4
          local.get 2
          i32.store offset=24
          i32.const 0
          i32.load offset=1053396
          local.tee 6
          i32.const -1
          i32.le_s
          br_if 0 (;@2;)
          i32.const 0
          local.get 6
          i32.const 1
          i32.add
          local.tee 6
          i32.store offset=1053396
          block  ;; label = @3
            i32.const 0
            i32.load offset=1053404
            local.tee 2
            i32.eqz
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1053400
            local.set 6
            local.get 4
            i32.const 8
            i32.add
            local.get 0
            local.get 1
            i32.load offset=16
            call_indirect (type 0)
            local.get 4
            local.get 4
            i64.load offset=8
            i64.store offset=16
            local.get 6
            local.get 4
            i32.const 16
            i32.add
            local.get 2
            i32.load offset=20
            call_indirect (type 0)
            i32.const 0
            i32.load offset=1053396
            local.set 6
          end
          i32.const 0
          local.get 6
          i32.const -1
          i32.add
          i32.store offset=1053396
          local.get 5
          i32.const 1
          i32.le_u
          br_if 1 (;@1;)
        end
        unreachable
        unreachable
      end
      local.get 0
      local.get 1
      call $rust_panic
      unreachable
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h6da39948fc946280E (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i64)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 1
      i32.const 4
      i32.add
      local.set 3
      block  ;; label = @1
        block  ;; label = @2
          local.get 1
          i32.load offset=4
          i32.eqz
          br_if 0 (;@2;)
          i32.const 0
          i32.load offset=1049308
          local.set 4
          br 1 (;@1;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 2
        i64.const 0
        i64.store offset=12 align=4
        local.get 2
        i32.const 0
        i32.load offset=1049308
        local.tee 4
        i32.store offset=8
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 5
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 5
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 5
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1049240
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h9e7b9530a902cf30E
        drop
        local.get 3
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 5
      local.get 3
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 1
      i32.const 12
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i64.load align=4
      local.set 6
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.store
      local.get 1
      local.get 4
      i32.store offset=4
      local.get 2
      local.get 6
      i64.store offset=24
      block  ;; label = @1
        i32.const 12
        i32.const 4
        call $__rust_alloc
        local.tee 1
        br_if 0 (;@1;)
        i32.const 12
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17hfc3a3c0bb5c92416E
        unreachable
      end
      local.get 1
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 5
      i32.load
      i32.store
      local.get 0
      i32.const 1049416
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1495d35c0bd32143E (type 0) (param i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 1
      i32.const 4
      i32.add
      local.set 3
      block  ;; label = @1
        local.get 1
        i32.load offset=4
        br_if 0 (;@1;)
        local.get 1
        i32.load
        local.set 1
        local.get 2
        i64.const 0
        i64.store offset=12 align=4
        local.get 2
        i32.const 0
        i32.load offset=1049308
        i32.store offset=8
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 1
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1049240
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h9e7b9530a902cf30E
        drop
        local.get 3
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 0
      i32.const 1049416
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0c12f80ec16ca08aE (type 0) (param i32 i32)
      (local i32 i32)
      local.get 1
      i32.load offset=4
      local.set 2
      local.get 1
      i32.load
      local.set 3
      block  ;; label = @1
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee 1
        br_if 0 (;@1;)
        i32.const 8
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17hfc3a3c0bb5c92416E
        unreachable
      end
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049432
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h763a53a5df734321E (type 0) (param i32 i32)
      local.get 0
      i32.const 1049432
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $rust_panic (type 0) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.add
      call $__rust_start_panic
      drop
      unreachable
      unreachable
    )
    (func $__rust_start_panic (type 6) (param i32) (result i32)
      unreachable
      unreachable
    )
    (func $_ZN8dlmalloc8dlmalloc8align_up17h3fa540ccb9e6800cE (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 1
      i32.sub
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc9left_bits17h75d33c58eefb7676E (type 6) (param i32) (result i32)
      local.get 0
      i32.const 1
      i32.shl
      local.tee 0
      i32.const 0
      local.get 0
      i32.sub
      i32.or
    )
    (func $_ZN8dlmalloc8dlmalloc9least_bit17h0879ead7eebf0d99E (type 6) (param i32) (result i32)
      i32.const 0
      local.get 0
      i32.sub
      local.get 0
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h4bb435d08993fbbfE (type 6) (param i32) (result i32)
      i32.const 0
      i32.const 25
      local.get 0
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 0
      i32.const 31
      i32.eq
      select
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17ha0fa99a65df1a85fE (type 12) (result i32)
      i32.const 7
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk4size17h11f167230cab9b7fE (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=4
      i32.const -8
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17h724d2c15d6a27fa0E (type 6) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=4
      i32.const 2
      i32.and
      i32.const 1
      i32.shr_u
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h5e9f562b69a61f50E (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17h8a30bced8c9dc494E (type 7) (param i32)
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h3e8a907dceeec0c1E (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=4
      i32.const 3
      i32.and
      i32.const 1
      i32.ne
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h9c771e4062ebe9acE (type 6) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=4
      i32.const 3
      i32.and
      i32.eqz
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17hfa189a78fe796851E (type 0) (param i32 i32)
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      local.get 1
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 1
      local.get 0
      i32.add
      i32.const 4
      i32.add
      local.tee 0
      local.get 0
      i32.load
      i32.const 1
      i32.or
      i32.store
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17h2e06642c23bb42ebE (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 1
      local.get 0
      i32.add
      i32.const 4
      i32.add
      local.tee 0
      local.get 0
      i32.load
      i32.const 1
      i32.or
      i32.store
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17hd1c82d1d463e700eE (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      i32.or
      i32.store offset=4
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h8e8f0de5c1e9c9eaE (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h061dceaa4233231fE (type 3) (param i32 i32 i32)
      local.get 2
      local.get 2
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h9bb095d7a43bf677E (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.add
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h621ab246efe655f0E (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.sub
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17h7879c8ecda8fc762E (type 6) (param i32) (result i32)
      local.get 0
      i32.const 8
      i32.add
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h5aec0c154d114848E (type 12) (result i32)
      i32.const 8
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h5e53570392f87dfdE (type 6) (param i32) (result i32)
      local.get 0
      i32.const -8
      i32.add
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hcffcb9520df57e84E (type 6) (param i32) (result i32)
      (local i32)
      block  ;; label = @1
        local.get 0
        i32.load offset=16
        local.tee 1
        br_if 0 (;@1;)
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.set 1
      end
      local.get 1
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17hdfe85601c581dde3E (type 6) (param i32) (result i32)
      local.get 0
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hd1ca58f932abe9bcE (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=12
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17hd68c3d3b19faac46E (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=8
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment9is_extern17hf5b949de07a7bcc0E (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=12
      i32.const 1
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h438889ea1454ae01E (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=12
      i32.const 1
      i32.shr_u
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment5holds17h34e9aab798ed9a43E (type 2) (param i32 i32) (result i32)
      (local i32 i32)
      i32.const 0
      local.set 2
      block  ;; label = @1
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.gt_u
        br_if 0 (;@1;)
        local.get 3
        local.get 0
        i32.load offset=4
        i32.add
        local.get 1
        i32.gt_u
        local.set 2
      end
      local.get 2
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment3top17hfe46f64a1cad2ee0E (type 6) (param i32) (result i32)
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      i32.add
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17h97283e898b35a077E (type 3) (param i32 i32 i32)
      (local i32)
      local.get 2
      i32.const 16
      i32.shr_u
      memory.grow
      local.set 3
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 0
      local.get 2
      i32.const -65536
      i32.and
      local.get 3
      i32.const -1
      i32.eq
      local.tee 2
      select
      i32.store offset=4
      local.get 0
      i32.const 0
      local.get 3
      i32.const 16
      i32.shl
      local.get 2
      select
      i32.store
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17h1c5e8e40a62adc9bE (type 13) (param i32 i32 i32 i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17hfa718c035dfb5a0aE (type 9) (param i32 i32 i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17h1bf2d375f7b4dfb2E (type 1) (param i32 i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hc23d259d7456907fE (type 2) (param i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$15allocates_zeros17h279ec74bbd0490aeE (type 6) (param i32) (result i32)
      i32.const 1
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h7a25b6c4f8f34f4cE (type 6) (param i32) (result i32)
      i32.const 65536
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h18d155f6a424e025E (type 2) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.tee 0
      i32.const 8
      i32.add
      i32.load
      local.set 3
      local.get 0
      i32.load
      local.set 0
      local.get 2
      local.get 1
      call $_ZN4core3fmt9Formatter10debug_list17h18e45534bb819322E
      i64.store
      block  ;; label = @1
        local.get 3
        i32.eqz
        br_if 0 (;@1;)
        loop  ;; label = @2
          local.get 2
          local.get 0
          i32.store offset=12
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.const 1049448
          call $_ZN4core3fmt8builders8DebugSet5entry17hca732acdaeb4c1ecE
          drop
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          br_if 0 (;@2;)
        end
      end
      local.get 2
      call $_ZN4core3fmt8builders9DebugList6finish17h976f43ce51fe1d6aE
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b5449506b434641E (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.set 0
      block  ;; label = @1
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_lower_hex17h81e8ba42b918c0c7E
        br_if 0 (;@1;)
        block  ;; label = @2
          local.get 1
          call $_ZN4core3fmt9Formatter15debug_upper_hex17h8e4f3a41c369cb99E
          br_if 0 (;@2;)
          local.get 0
          local.get 1
          call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h841343116b1a825aE
          return
        end
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17hf06b1365152ca438E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hffa6e58cfaf4dda0E
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc696a1dbff47a71E (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h150b907e72450382E
    )
    (func $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h2df9333c52f98cffE (type 7) (param i32))
    (func $_ZN5alloc5alloc18handle_alloc_error17hfc3a3c0bb5c92416E (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $__rust_alloc_error_handler
      unreachable
    )
    (func $_ZN5alloc7raw_vec17capacity_overflow17hdfce08dd2d1c6df1E (type 5)
      i32.const 1049492
      i32.const 17
      i32.const 1049512
      call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
      unreachable
    )
    (func $__rg_oom (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $rust_oom
      unreachable
    )
    (func $_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0c83dec0ac3155aE (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 1
      i32.const 1049528
      i32.const 13
      call $_ZN4core3fmt9Formatter12debug_struct17h6710d8b9bff04272E
      i64.store
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 2
      i32.const 1049541
      i32.const 5
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049548
      call $_ZN4core3fmt8builders11DebugStruct5field17h6f9fe2e322d34177E
      drop
      local.get 2
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=12
      local.get 2
      i32.const 1049564
      i32.const 5
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049572
      call $_ZN4core3fmt8builders11DebugStruct5field17h6f9fe2e322d34177E
      drop
      local.get 2
      call $_ZN4core3fmt8builders11DebugStruct6finish17h7f96f0829decad05E
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3ops8function6FnOnce9call_once17h52dbb222e6702dbcE (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      drop
      loop (result i32)  ;; label = @1
        br 0 (;@1;)
      end
    )
    (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h8f1945b60c08bb45E (type 7) (param i32))
    (func $_ZN4core9panicking18panic_bounds_check17hd730cebac62172b8E (type 3) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 44
      i32.add
      i32.const 20
      i32.store
      local.get 3
      i64.const 2
      i64.store offset=12 align=4
      local.get 3
      i32.const 1049712
      i32.store offset=8
      local.get 3
      i32.const 20
      i32.store offset=36
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 3
      local.get 3
      i32.store offset=40
      local.get 3
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
      unreachable
    )
    (func $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E (type 3) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 44
      i32.add
      i32.const 20
      i32.store
      local.get 3
      i64.const 2
      i64.store offset=12 align=4
      local.get 3
      i32.const 1050248
      i32.store offset=8
      local.get 3
      i32.const 20
      i32.store offset=36
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=40
      local.get 3
      local.get 3
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
      unreachable
    )
    (func $_ZN4core5slice5index24slice_end_index_len_fail17hac7dfa48c1997a6eE (type 3) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 44
      i32.add
      i32.const 20
      i32.store
      local.get 3
      i64.const 2
      i64.store offset=12 align=4
      local.get 3
      i32.const 1050280
      i32.store offset=8
      local.get 3
      i32.const 20
      i32.store offset=36
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=40
      local.get 3
      local.get 3
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
      unreachable
    )
    (func $_ZN4core3fmt9Formatter3pad17hf08e7341fcca6451E (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      i32.load offset=16
      local.set 3
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 0
              i32.load offset=8
              local.tee 4
              i32.const 1
              i32.eq
              br_if 0 (;@4;)
              local.get 3
              i32.const 1
              i32.eq
              br_if 1 (;@3;)
              local.get 0
              i32.load offset=24
              local.get 1
              local.get 2
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              local.set 3
              br 3 (;@1;)
            end
            local.get 3
            i32.const 1
            i32.ne
            br_if 1 (;@2;)
          end
          local.get 1
          local.get 2
          i32.add
          local.set 5
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 0
                i32.const 20
                i32.add
                i32.load
                local.tee 6
                br_if 0 (;@5;)
                i32.const 0
                local.set 7
                local.get 1
                local.set 8
                br 1 (;@4;)
              end
              i32.const 0
              local.set 7
              local.get 1
              local.set 8
              loop  ;; label = @5
                local.get 8
                local.tee 3
                local.get 5
                i32.eq
                br_if 2 (;@3;)
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 3
                    i32.load8_s
                    local.tee 8
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  block  ;; label = @7
                    local.get 8
                    i32.const 255
                    i32.and
                    local.tee 8
                    i32.const 224
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  block  ;; label = @7
                    local.get 8
                    i32.const 240
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 3
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  local.get 3
                  i32.load8_u offset=2
                  i32.const 63
                  i32.and
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  i32.const 12
                  i32.shl
                  i32.or
                  local.get 3
                  i32.load8_u offset=3
                  i32.const 63
                  i32.and
                  i32.or
                  local.get 8
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  i32.const 1114112
                  i32.eq
                  br_if 3 (;@3;)
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 8
                end
                local.get 7
                local.get 3
                i32.sub
                local.get 8
                i32.add
                local.set 7
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                br_if 0 (;@5;)
              end
            end
            local.get 8
            local.get 5
            i32.eq
            br_if 0 (;@3;)
            block  ;; label = @4
              local.get 8
              i32.load8_u
              local.tee 3
              i32.const 240
              i32.lt_u
              br_if 0 (;@4;)
              local.get 8
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 8
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get 8
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 3
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              i32.const 1114112
              i32.eq
              br_if 1 (;@3;)
            end
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  local.get 7
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 8
                  br 1 (;@5;)
                end
                block  ;; label = @6
                  local.get 7
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 3
                  local.get 2
                  local.set 8
                  local.get 7
                  local.get 2
                  i32.eq
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                i32.const 0
                local.set 3
                local.get 7
                local.set 8
                local.get 1
                local.get 7
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@4;)
              end
              local.get 8
              local.set 7
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          local.get 4
          i32.const 1
          i32.eq
          br_if 0 (;@2;)
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 2
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          return
        end
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.set 5
        block  ;; label = @2
          block  ;; label = @3
            local.get 2
            br_if 0 (;@3;)
            i32.const 0
            local.set 8
            br 1 (;@2;)
          end
          local.get 2
          i32.const 3
          i32.and
          local.set 7
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@4;)
              i32.const 0
              local.set 8
              local.get 1
              local.set 3
              br 1 (;@3;)
            end
            i32.const 0
            local.set 8
            i32.const 0
            local.get 2
            i32.const -4
            i32.and
            i32.sub
            local.set 6
            local.get 1
            local.set 3
            loop  ;; label = @4
              local.get 8
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 8
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 6
              i32.const 4
              i32.add
              local.tee 6
              br_if 0 (;@4;)
            end
          end
          local.get 7
          i32.eqz
          br_if 0 (;@2;)
          loop  ;; label = @3
            local.get 8
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            br_if 0 (;@3;)
          end
        end
        block  ;; label = @2
          local.get 5
          local.get 8
          i32.le_u
          br_if 0 (;@2;)
          i32.const 0
          local.set 3
          local.get 5
          local.get 8
          i32.sub
          local.tee 7
          local.set 5
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                i32.const 0
                local.get 0
                i32.load8_u offset=32
                local.tee 8
                local.get 8
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;)
              end
              i32.const 0
              local.set 5
              local.get 7
              local.set 3
              br 1 (;@3;)
            end
            local.get 7
            i32.const 1
            i32.shr_u
            local.set 3
            local.get 7
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 5
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 0
          i32.const 28
          i32.add
          i32.load
          local.set 7
          local.get 0
          i32.load offset=4
          local.set 8
          local.get 0
          i32.load offset=24
          local.set 6
          block  ;; label = @3
            loop  ;; label = @4
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              i32.eqz
              br_if 1 (;@3;)
              local.get 6
              local.get 8
              local.get 7
              i32.load offset=16
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@4;)
            end
            i32.const 1
            return
          end
          i32.const 1
          local.set 3
          local.get 8
          i32.const 1114112
          i32.eq
          br_if 1 (;@1;)
          local.get 6
          local.get 1
          local.get 2
          local.get 7
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          i32.const 0
          local.set 3
          loop  ;; label = @3
            block  ;; label = @4
              local.get 5
              local.get 3
              i32.ne
              br_if 0 (;@4;)
              local.get 5
              local.get 5
              i32.lt_u
              return
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 6
            local.get 8
            local.get 7
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@3;)
          end
          local.get 3
          i32.const -1
          i32.add
          local.get 5
          i32.lt_u
          return
        end
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        return
      end
      local.get 3
    )
    (func $_ZN4core9panicking5panic17h7ae74ceab81e332cE (type 3) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 1049588
      i32.store offset=16
      local.get 3
      i64.const 1
      i64.store offset=4 align=4
      local.get 3
      local.get 1
      i32.store offset=28
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 24
      i32.add
      i32.store
      local.get 3
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
      unreachable
    )
    (func $_ZN4core5slice5index22slice_index_order_fail17h82105b845b90a452E (type 3) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 44
      i32.add
      i32.const 20
      i32.store
      local.get 3
      i64.const 2
      i64.store offset=12 align=4
      local.get 3
      i32.const 1050332
      i32.store offset=8
      local.get 3
      i32.const 20
      i32.store offset=36
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=40
      local.get 3
      local.get 3
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
      unreachable
    )
    (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h6dd690ff3fa2a314E (type 2) (param i32 i32) (result i32)
      local.get 0
      i64.load32_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417h06402c54ff526c65E
    )
    (func $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE (type 0) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 2
      i32.const 1049644
      i32.store offset=4
      local.get 2
      i32.const 1049588
      i32.store
      local.get 2
      call $rust_begin_unwind
      unreachable
    )
    (func $_ZN4core3fmt5write17h9e7b9530a902cf30E (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 36
      i32.add
      local.get 1
      i32.store
      local.get 3
      i32.const 3
      i32.store8 offset=40
      local.get 3
      i64.const 137438953472
      i64.store offset=8
      local.get 3
      local.get 0
      i32.store offset=32
      i32.const 0
      local.set 4
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=16
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.load offset=8
              local.tee 5
              br_if 0 (;@4;)
              local.get 2
              i32.const 20
              i32.add
              i32.load
              local.tee 6
              i32.eqz
              br_if 1 (;@3;)
              local.get 2
              i32.load
              local.set 1
              local.get 2
              i32.load offset=16
              local.set 0
              local.get 6
              i32.const 3
              i32.shl
              i32.const -8
              i32.add
              i32.const 3
              i32.shr_u
              i32.const 1
              i32.add
              local.tee 4
              local.set 6
              loop  ;; label = @5
                block  ;; label = @6
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=32
                  local.get 1
                  i32.load
                  local.get 7
                  local.get 3
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 1)
                  br_if 4 (;@2;)
                end
                local.get 0
                i32.load
                local.get 3
                i32.const 8
                i32.add
                local.get 0
                i32.const 4
                i32.add
                i32.load
                call_indirect (type 2)
                br_if 3 (;@2;)
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                br_if 0 (;@5;)
                br 2 (;@3;)
              end
            end
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 0
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.const 5
            i32.shl
            local.tee 8
            i32.const -32
            i32.add
            i32.const 5
            i32.shr_u
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            i32.load
            local.set 1
            i32.const 0
            local.set 6
            loop  ;; label = @4
              block  ;; label = @5
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 0
                i32.eqz
                br_if 0 (;@5;)
                local.get 3
                i32.load offset=32
                local.get 1
                i32.load
                local.get 0
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 1)
                br_if 3 (;@2;)
              end
              local.get 3
              local.get 5
              local.get 6
              i32.add
              local.tee 0
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=40
              local.get 3
              local.get 0
              i32.const 4
              i32.add
              i64.load align=4
              i64.const 32
              i64.rotl
              i64.store offset=8
              local.get 0
              i32.const 24
              i32.add
              i32.load
              local.set 9
              local.get 2
              i32.load offset=16
              local.set 10
              i32.const 0
              local.set 11
              i32.const 0
              local.set 7
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 0
                    i32.const 20
                    i32.add
                    i32.load
                    br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                  end
                  local.get 9
                  i32.const 3
                  i32.shl
                  local.set 12
                  i32.const 0
                  local.set 7
                  local.get 10
                  local.get 12
                  i32.add
                  local.tee 12
                  i32.load offset=4
                  i32.const 21
                  i32.ne
                  br_if 1 (;@5;)
                  local.get 12
                  i32.load
                  i32.load
                  local.set 9
                end
                i32.const 1
                local.set 7
              end
              local.get 3
              local.get 9
              i32.store offset=20
              local.get 3
              local.get 7
              i32.store offset=16
              local.get 0
              i32.const 16
              i32.add
              i32.load
              local.set 7
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 0
                    i32.const 12
                    i32.add
                    i32.load
                    br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 9
                  local.get 10
                  local.get 9
                  i32.add
                  local.tee 9
                  i32.load offset=4
                  i32.const 21
                  i32.ne
                  br_if 1 (;@5;)
                  local.get 9
                  i32.load
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 11
              end
              local.get 3
              local.get 7
              i32.store offset=28
              local.get 3
              local.get 11
              i32.store offset=24
              local.get 10
              local.get 0
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 0
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 0
              i32.load offset=4
              call_indirect (type 2)
              br_if 2 (;@2;)
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 8
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@4;)
            end
          end
          i32.const 0
          local.set 0
          local.get 4
          local.get 2
          i32.load offset=4
          i32.lt_u
          local.tee 1
          i32.eqz
          br_if 1 (;@1;)
          local.get 3
          i32.load offset=32
          local.get 2
          i32.load
          local.get 4
          i32.const 3
          i32.shl
          i32.add
          i32.const 0
          local.get 1
          select
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@1;)
        end
        i32.const 1
        local.set 0
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd2f21153357bb9fE (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      i32.const 1
      local.set 3
      block  ;; label = @1
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h48cfa322affe5736E
        br_if 0 (;@1;)
        local.get 1
        i32.const 28
        i32.add
        i32.load
        local.set 4
        local.get 1
        i32.load offset=24
        local.set 5
        local.get 2
        i32.const 28
        i32.add
        i32.const 0
        i32.store
        local.get 2
        i32.const 1049588
        i32.store offset=24
        local.get 2
        i64.const 1
        i64.store offset=12 align=4
        local.get 2
        i32.const 1049592
        i32.store offset=8
        local.get 5
        local.get 4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN4core3fmt5write17h9e7b9530a902cf30E
        br_if 0 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h48cfa322affe5736E
        local.set 3
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h48cfa322affe5736E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 1
                i32.load
                local.tee 3
                i32.const 16
                i32.and
                br_if 0 (;@5;)
                local.get 3
                i32.const 32
                i32.and
                br_if 1 (;@4;)
                local.get 0
                i64.load32_u
                i32.const 1
                local.get 1
                call $_ZN4core3fmt3num3imp7fmt_u6417h06402c54ff526c65E
                local.set 0
                br 4 (;@1;)
              end
              local.get 0
              i32.load
              local.set 0
              i32.const 0
              local.set 3
              loop  ;; label = @5
                local.get 2
                local.get 3
                i32.add
                i32.const 127
                i32.add
                i32.const 48
                i32.const 87
                local.get 0
                i32.const 15
                i32.and
                local.tee 4
                i32.const 10
                i32.lt_u
                select
                local.get 4
                i32.add
                i32.store8
                local.get 3
                i32.const -1
                i32.add
                local.set 3
                local.get 0
                i32.const 15
                i32.gt_u
                local.set 4
                local.get 0
                i32.const 4
                i32.shr_u
                local.set 0
                local.get 4
                br_if 0 (;@5;)
              end
              local.get 3
              i32.const 128
              i32.add
              local.tee 0
              i32.const 129
              i32.ge_u
              br_if 1 (;@3;)
              local.get 1
              i32.const 1
              i32.const 1049920
              i32.const 2
              local.get 2
              local.get 3
              i32.add
              i32.const 128
              i32.add
              i32.const 0
              local.get 3
              i32.sub
              call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
              local.set 0
              br 3 (;@1;)
            end
            local.get 0
            i32.load
            local.set 0
            i32.const 0
            local.set 3
            loop  ;; label = @4
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 55
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 15
              i32.gt_u
              local.set 4
              local.get 0
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              br_if 0 (;@4;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049920
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
            local.set 0
            br 2 (;@1;)
          end
          local.get 0
          i32.const 128
          i32.const 1049904
          call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
          unreachable
        end
        local.get 0
        i32.const 128
        i32.const 1049904
        call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
        unreachable
      end
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3217d8680ef6475dE (type 11) (param i32) (result i64)
      i64.const -332754083363138776
    )
    (func $_ZN4core3fmt8builders11DebugStruct5field17h6f9fe2e322d34177E (type 13) (param i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i64 i64)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      i32.const 1
      local.set 6
      block  ;; label = @1
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@1;)
        local.get 0
        i32.load8_u offset=5
        local.set 7
        block  ;; label = @2
          local.get 0
          i32.load
          local.tee 8
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load offset=24
          i32.const 1049845
          i32.const 1049847
          local.get 7
          i32.const 255
          i32.and
          local.tee 7
          select
          i32.const 2
          i32.const 3
          local.get 7
          select
          local.get 8
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load offset=24
          local.get 1
          local.get 2
          local.get 8
          i32.load offset=28
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load offset=24
          i32.const 1049729
          i32.const 2
          local.get 8
          i32.load offset=28
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          local.get 3
          local.get 8
          local.get 4
          i32.load offset=12
          call_indirect (type 2)
          local.set 6
          br 1 (;@1;)
        end
        block  ;; label = @2
          local.get 7
          i32.const 255
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load offset=24
          i32.const 1049840
          i32.const 3
          local.get 8
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
        end
        i32.const 1
        local.set 6
        local.get 5
        i32.const 1
        i32.store8 offset=23
        local.get 5
        i32.const 52
        i32.add
        i32.const 1049748
        i32.store
        local.get 5
        i32.const 16
        i32.add
        local.get 5
        i32.const 23
        i32.add
        i32.store
        local.get 5
        local.get 8
        i64.load offset=24 align=4
        i64.store offset=8
        local.get 8
        i64.load offset=8 align=4
        local.set 9
        local.get 8
        i64.load offset=16 align=4
        local.set 10
        local.get 5
        local.get 8
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 5
        local.get 10
        i64.store offset=40
        local.get 5
        local.get 9
        i64.store offset=32
        local.get 5
        local.get 8
        i64.load align=4
        i64.store offset=24
        local.get 5
        local.get 5
        i32.const 8
        i32.add
        i32.store offset=48
        local.get 5
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE
        br_if 0 (;@1;)
        local.get 5
        i32.const 8
        i32.add
        i32.const 1049729
        i32.const 2
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE
        br_if 0 (;@1;)
        local.get 3
        local.get 5
        i32.const 24
        i32.add
        local.get 4
        i32.load offset=12
        call_indirect (type 2)
        br_if 0 (;@1;)
        local.get 5
        i32.load offset=48
        i32.const 1049843
        i32.const 2
        local.get 5
        i32.load offset=52
        i32.load offset=12
        call_indirect (type 1)
        local.set 6
      end
      local.get 0
      i32.const 1
      i32.store8 offset=5
      local.get 0
      local.get 6
      i32.store8 offset=4
      local.get 5
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4056574f479b5867E (type 2) (param i32 i32) (result i32)
      local.get 1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      call $_ZN4core3fmt9Formatter3pad17hf08e7341fcca6451E
    )
    (func $_ZN4core5panic10panic_info9PanicInfo7message17hfdbbf6e609182ab8E (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=8
    )
    (func $_ZN4core5panic10panic_info9PanicInfo8location17h84698dcf64f7b19cE (type 6) (param i32) (result i32)
      local.get 0
      i32.load offset=12
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h032077806f79c721E (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 2)
    )
    (func $_ZN4core6result13unwrap_failed17he5c411e7d753a069E (type 8) (param i32 i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 5
      local.get 3
      i32.store offset=20
      local.get 5
      local.get 2
      i32.store offset=16
      local.get 5
      i32.const 44
      i32.add
      i32.const 2
      i32.store
      local.get 5
      i32.const 60
      i32.add
      i32.const 22
      i32.store
      local.get 5
      i64.const 2
      i64.store offset=28 align=4
      local.get 5
      i32.const 1049732
      i32.store offset=24
      local.get 5
      i32.const 23
      i32.store offset=52
      local.get 5
      local.get 5
      i32.const 48
      i32.add
      i32.store offset=40
      local.get 5
      local.get 5
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 5
      local.get 5
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
      unreachable
    )
    (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load offset=4
              local.set 4
              local.get 0
              i32.load
              local.set 5
              local.get 0
              i32.load offset=8
              local.set 6
              loop  ;; label = @5
                block  ;; label = @6
                  local.get 6
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 5
                  i32.const 1049772
                  i32.const 4
                  local.get 4
                  i32.load offset=12
                  call_indirect (type 1)
                  i32.eqz
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 0
                  br 3 (;@3;)
                end
                i32.const 0
                local.set 0
                local.get 2
                local.set 7
                block  ;; label = @6
                  loop  ;; label = @7
                    local.get 1
                    local.get 0
                    i32.add
                    local.set 8
                    block  ;; label = @8
                      block  ;; label = @9
                        local.get 7
                        i32.const 8
                        i32.lt_u
                        br_if 0 (;@9;)
                        local.get 3
                        i32.const 8
                        i32.add
                        i32.const 10
                        local.get 8
                        local.get 7
                        call $_ZN4core5slice6memchr19memchr_general_case17hb77442f7379f975eE
                        local.get 3
                        i32.load offset=12
                        local.set 7
                        local.get 3
                        i32.load offset=8
                        local.set 9
                        br 1 (;@8;)
                      end
                      block  ;; label = @9
                        local.get 7
                        br_if 0 (;@9;)
                        i32.const 0
                        local.set 7
                        i32.const 0
                        local.set 9
                        br 1 (;@8;)
                      end
                      i32.const 0
                      local.set 10
                      block  ;; label = @9
                        local.get 8
                        i32.load8_u
                        i32.const 10
                        i32.eq
                        br_if 0 (;@9;)
                        i32.const 0
                        local.set 9
                        local.get 7
                        i32.const 1
                        i32.eq
                        br_if 1 (;@8;)
                        i32.const 1
                        local.set 10
                        local.get 8
                        i32.load8_u offset=1
                        i32.const 10
                        i32.eq
                        br_if 0 (;@9;)
                        local.get 7
                        i32.const 2
                        i32.eq
                        br_if 1 (;@8;)
                        i32.const 2
                        local.set 10
                        local.get 8
                        i32.load8_u offset=2
                        i32.const 10
                        i32.eq
                        br_if 0 (;@9;)
                        local.get 7
                        i32.const 3
                        i32.eq
                        br_if 1 (;@8;)
                        i32.const 3
                        local.set 10
                        local.get 8
                        i32.load8_u offset=3
                        i32.const 10
                        i32.eq
                        br_if 0 (;@9;)
                        local.get 7
                        i32.const 4
                        i32.eq
                        br_if 1 (;@8;)
                        i32.const 4
                        local.set 10
                        local.get 8
                        i32.load8_u offset=4
                        i32.const 10
                        i32.eq
                        br_if 0 (;@9;)
                        local.get 7
                        i32.const 5
                        i32.eq
                        br_if 1 (;@8;)
                        i32.const 5
                        local.set 10
                        local.get 8
                        i32.load8_u offset=5
                        i32.const 10
                        i32.eq
                        br_if 0 (;@9;)
                        local.get 7
                        i32.const 6
                        i32.eq
                        br_if 1 (;@8;)
                        i32.const 6
                        local.set 10
                        local.get 8
                        i32.load8_u offset=6
                        i32.const 10
                        i32.ne
                        br_if 1 (;@8;)
                      end
                      i32.const 1
                      local.set 9
                      local.get 10
                      local.set 7
                    end
                    i32.const 0
                    local.set 8
                    block  ;; label = @8
                      local.get 9
                      i32.const 1
                      i32.eq
                      br_if 0 (;@8;)
                      local.get 2
                      local.set 0
                      br 2 (;@6;)
                    end
                    block  ;; label = @8
                      local.get 7
                      local.get 0
                      i32.add
                      local.tee 7
                      i32.const 1
                      i32.add
                      local.tee 0
                      local.get 7
                      i32.lt_u
                      br_if 0 (;@8;)
                      local.get 2
                      local.get 0
                      i32.lt_u
                      br_if 0 (;@8;)
                      local.get 1
                      local.get 7
                      i32.add
                      i32.load8_u
                      i32.const 10
                      i32.ne
                      br_if 0 (;@8;)
                      i32.const 1
                      local.set 8
                      br 2 (;@6;)
                    end
                    local.get 2
                    local.get 0
                    i32.sub
                    local.set 7
                    local.get 2
                    local.get 0
                    i32.ge_u
                    br_if 0 (;@7;)
                  end
                  local.get 2
                  local.set 0
                end
                local.get 6
                local.get 8
                i32.store8
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 2
                    local.get 0
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 2
                    local.get 0
                    i32.ne
                    br_if 5 (;@2;)
                    local.get 5
                    local.get 1
                    local.get 0
                    local.get 4
                    i32.load offset=12
                    call_indirect (type 1)
                    i32.eqz
                    br_if 1 (;@6;)
                    i32.const 1
                    local.set 0
                    br 4 (;@3;)
                  end
                  local.get 1
                  local.get 0
                  i32.add
                  local.tee 7
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 4 (;@2;)
                  block  ;; label = @7
                    local.get 5
                    local.get 1
                    local.get 0
                    local.get 4
                    i32.load offset=12
                    call_indirect (type 1)
                    i32.eqz
                    br_if 0 (;@7;)
                    i32.const 1
                    local.set 0
                    br 4 (;@3;)
                  end
                  local.get 7
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 5 (;@1;)
                end
                local.get 1
                local.get 0
                i32.add
                local.set 1
                local.get 2
                local.get 0
                i32.sub
                local.tee 2
                br_if 0 (;@5;)
              end
            end
            i32.const 0
            local.set 0
          end
          local.get 3
          i32.const 16
          i32.add
          global.set $__stack_pointer
          local.get 0
          return
        end
        local.get 1
        local.get 2
        i32.const 0
        local.get 0
        i32.const 1049808
        call $_ZN4core3str16slice_error_fail17h59c8ed8a521adb66E
        unreachable
      end
      local.get 1
      local.get 2
      local.get 0
      local.get 2
      i32.const 1049824
      call $_ZN4core3str16slice_error_fail17h59c8ed8a521adb66E
      unreachable
    )
    (func $_ZN4core5slice6memchr19memchr_general_case17hb77442f7379f975eE (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.get 2
              i32.sub
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 3
              local.get 4
              local.get 4
              local.get 3
              i32.gt_u
              select
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              i32.const 0
              local.set 5
              local.get 1
              i32.const 255
              i32.and
              local.set 6
              i32.const 1
              local.set 7
              loop  ;; label = @5
                local.get 2
                local.get 5
                i32.add
                i32.load8_u
                local.get 6
                i32.eq
                br_if 4 (;@1;)
                local.get 4
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.ne
                br_if 0 (;@5;)
              end
              local.get 4
              local.get 3
              i32.const -8
              i32.add
              local.tee 8
              i32.gt_u
              br_if 2 (;@2;)
              br 1 (;@3;)
            end
            local.get 3
            i32.const -8
            i32.add
            local.set 8
            i32.const 0
            local.set 4
          end
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 5
          block  ;; label = @3
            loop  ;; label = @4
              local.get 2
              local.get 4
              i32.add
              local.tee 6
              i32.load
              local.get 5
              i32.xor
              local.tee 7
              i32.const -1
              i32.xor
              local.get 7
              i32.const -16843009
              i32.add
              i32.and
              local.get 6
              i32.const 4
              i32.add
              i32.load
              local.get 5
              i32.xor
              local.tee 6
              i32.const -1
              i32.xor
              local.get 6
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if 1 (;@3;)
              local.get 4
              i32.const 8
              i32.add
              local.tee 4
              local.get 8
              i32.le_u
              br_if 0 (;@4;)
            end
          end
          local.get 4
          local.get 3
          i32.le_u
          br_if 0 (;@2;)
          local.get 4
          local.get 3
          i32.const 1050180
          call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
          unreachable
        end
        block  ;; label = @2
          local.get 4
          local.get 3
          i32.eq
          br_if 0 (;@2;)
          local.get 3
          local.get 4
          i32.sub
          local.set 8
          local.get 2
          local.get 4
          i32.add
          local.set 6
          i32.const 0
          local.set 5
          local.get 1
          i32.const 255
          i32.and
          local.set 7
          block  ;; label = @3
            loop  ;; label = @4
              local.get 6
              local.get 5
              i32.add
              i32.load8_u
              local.get 7
              i32.eq
              br_if 1 (;@3;)
              local.get 8
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.eq
              br_if 2 (;@2;)
              br 0 (;@4;)
            end
          end
          local.get 4
          local.get 5
          i32.add
          local.set 5
          i32.const 1
          local.set 7
          br 1 (;@1;)
        end
        i32.const 0
        local.set 7
      end
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
    )
    (func $_ZN4core3str16slice_error_fail17h59c8ed8a521adb66E (type 8) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 112
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      local.get 5
      local.get 3
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=8
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 1
                    i32.const 257
                    i32.lt_u
                    br_if 0 (;@7;)
                    i32.const 0
                    local.set 6
                    loop  ;; label = @8
                      block  ;; label = @9
                        local.get 0
                        local.get 6
                        i32.add
                        local.tee 7
                        i32.const 256
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 0 (;@9;)
                        local.get 6
                        i32.const 256
                        i32.add
                        local.set 7
                        br 5 (;@4;)
                      end
                      block  ;; label = @9
                        local.get 7
                        i32.const 255
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 0 (;@9;)
                        local.get 6
                        i32.const 255
                        i32.add
                        local.set 7
                        br 5 (;@4;)
                      end
                      local.get 7
                      i32.const 254
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 3 (;@5;)
                      local.get 7
                      i32.const 253
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 2 (;@6;)
                      local.get 6
                      i32.const -4
                      i32.add
                      local.tee 6
                      i32.const -256
                      i32.ne
                      br_if 0 (;@8;)
                    end
                    i32.const 0
                    local.set 6
                    br 4 (;@3;)
                  end
                  local.get 5
                  local.get 1
                  i32.store offset=20
                  local.get 5
                  local.get 0
                  i32.store offset=16
                  local.get 5
                  i32.const 1049588
                  i32.store offset=24
                  i32.const 0
                  local.set 7
                  br 4 (;@2;)
                end
                local.get 6
                i32.const 253
                i32.add
                local.set 7
                br 1 (;@4;)
              end
              local.get 6
              i32.const 254
              i32.add
              local.set 7
            end
            block  ;; label = @4
              local.get 7
              local.get 1
              i32.lt_u
              br_if 0 (;@4;)
              local.get 1
              local.set 6
              local.get 7
              local.get 1
              i32.eq
              br_if 1 (;@3;)
              br 3 (;@1;)
            end
            local.get 0
            local.get 7
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 2 (;@1;)
            local.get 7
            local.set 6
          end
          local.get 5
          local.get 6
          i32.store offset=20
          local.get 5
          local.get 0
          i32.store offset=16
          local.get 5
          i32.const 1050656
          i32.store offset=24
          i32.const 5
          local.set 7
        end
        local.get 5
        local.get 7
        i32.store offset=28
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      local.get 2
                      local.get 1
                      i32.gt_u
                      local.tee 7
                      br_if 0 (;@8;)
                      local.get 3
                      local.get 1
                      i32.gt_u
                      br_if 0 (;@8;)
                      local.get 2
                      local.get 3
                      i32.gt_u
                      br_if 1 (;@7;)
                      local.get 2
                      i32.eqz
                      br_if 2 (;@6;)
                      block  ;; label = @9
                        block  ;; label = @10
                          local.get 2
                          local.get 1
                          i32.lt_u
                          br_if 0 (;@10;)
                          local.get 1
                          local.get 2
                          i32.ne
                          br_if 1 (;@9;)
                          br 4 (;@6;)
                        end
                        local.get 0
                        local.get 2
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        br_if 3 (;@6;)
                      end
                      local.get 5
                      local.get 2
                      i32.store offset=32
                      local.get 2
                      local.set 3
                      br 3 (;@5;)
                    end
                    local.get 5
                    local.get 2
                    local.get 3
                    local.get 7
                    select
                    i32.store offset=40
                    local.get 5
                    i32.const 48
                    i32.add
                    i32.const 20
                    i32.add
                    i32.const 3
                    i32.store
                    local.get 5
                    i32.const 72
                    i32.add
                    i32.const 20
                    i32.add
                    i32.const 23
                    i32.store
                    local.get 5
                    i32.const 84
                    i32.add
                    i32.const 23
                    i32.store
                    local.get 5
                    i64.const 3
                    i64.store offset=52 align=4
                    local.get 5
                    i32.const 1050696
                    i32.store offset=48
                    local.get 5
                    i32.const 20
                    i32.store offset=76
                    local.get 5
                    local.get 5
                    i32.const 72
                    i32.add
                    i32.store offset=64
                    local.get 5
                    local.get 5
                    i32.const 24
                    i32.add
                    i32.store offset=88
                    local.get 5
                    local.get 5
                    i32.const 16
                    i32.add
                    i32.store offset=80
                    local.get 5
                    local.get 5
                    i32.const 40
                    i32.add
                    i32.store offset=72
                    local.get 5
                    i32.const 48
                    i32.add
                    local.get 4
                    call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
                    unreachable
                  end
                  local.get 5
                  i32.const 100
                  i32.add
                  i32.const 23
                  i32.store
                  local.get 5
                  i32.const 72
                  i32.add
                  i32.const 20
                  i32.add
                  i32.const 23
                  i32.store
                  local.get 5
                  i32.const 84
                  i32.add
                  i32.const 20
                  i32.store
                  local.get 5
                  i32.const 48
                  i32.add
                  i32.const 20
                  i32.add
                  i32.const 4
                  i32.store
                  local.get 5
                  i64.const 4
                  i64.store offset=52 align=4
                  local.get 5
                  i32.const 1050756
                  i32.store offset=48
                  local.get 5
                  i32.const 20
                  i32.store offset=76
                  local.get 5
                  local.get 5
                  i32.const 72
                  i32.add
                  i32.store offset=64
                  local.get 5
                  local.get 5
                  i32.const 24
                  i32.add
                  i32.store offset=96
                  local.get 5
                  local.get 5
                  i32.const 16
                  i32.add
                  i32.store offset=88
                  local.get 5
                  local.get 5
                  i32.const 12
                  i32.add
                  i32.store offset=80
                  local.get 5
                  local.get 5
                  i32.const 8
                  i32.add
                  i32.store offset=72
                  local.get 5
                  i32.const 48
                  i32.add
                  local.get 4
                  call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
                  unreachable
                end
                local.get 5
                local.get 3
                i32.store offset=32
                local.get 3
                i32.eqz
                br_if 1 (;@4;)
              end
              loop  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 3
                    local.get 1
                    i32.lt_u
                    local.tee 7
                    br_if 0 (;@7;)
                    local.get 1
                    local.get 3
                    i32.eq
                    br_if 5 (;@2;)
                    br 1 (;@6;)
                  end
                  local.get 0
                  local.get 3
                  i32.add
                  local.tee 6
                  i32.load8_s
                  i32.const -64
                  i32.lt_s
                  br_if 0 (;@6;)
                  block  ;; label = @7
                    block  ;; label = @8
                      local.get 7
                      br_if 0 (;@8;)
                      local.get 1
                      local.get 3
                      i32.ne
                      br_if 1 (;@7;)
                      br 6 (;@2;)
                    end
                    local.get 6
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 4 (;@3;)
                  end
                  local.get 0
                  local.get 1
                  local.get 3
                  local.get 1
                  local.get 4
                  call $_ZN4core3str16slice_error_fail17h59c8ed8a521adb66E
                  unreachable
                end
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                br_if 0 (;@5;)
              end
            end
            i32.const 0
            local.set 3
          end
          local.get 3
          local.get 1
          i32.eq
          br_if 0 (;@2;)
          local.get 0
          local.get 3
          i32.add
          local.tee 0
          i32.load8_s
          local.tee 7
          i32.const 255
          i32.and
          local.set 6
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  local.get 7
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@6;)
                  local.get 0
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 1
                  local.get 7
                  i32.const 31
                  i32.and
                  local.set 2
                  local.get 6
                  i32.const 223
                  i32.gt_u
                  br_if 1 (;@5;)
                  local.get 2
                  i32.const 6
                  i32.shl
                  local.get 1
                  i32.or
                  local.set 6
                  br 2 (;@4;)
                end
                local.get 5
                local.get 6
                i32.store offset=36
                i32.const 1
                local.set 7
                br 2 (;@3;)
              end
              local.get 1
              i32.const 6
              i32.shl
              local.get 0
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.or
              local.set 6
              block  ;; label = @5
                local.get 7
                i32.const 255
                i32.and
                i32.const 240
                i32.ge_u
                br_if 0 (;@5;)
                local.get 6
                local.get 2
                i32.const 12
                i32.shl
                i32.or
                local.set 6
                br 1 (;@4;)
              end
              local.get 6
              i32.const 6
              i32.shl
              local.get 0
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 2
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              local.tee 6
              i32.const 1114112
              i32.eq
              br_if 2 (;@2;)
            end
            local.get 5
            local.get 6
            i32.store offset=36
            i32.const 1
            local.set 7
            local.get 6
            i32.const 128
            i32.lt_u
            br_if 0 (;@3;)
            i32.const 2
            local.set 7
            local.get 6
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            i32.const 3
            i32.const 4
            local.get 6
            i32.const 65536
            i32.lt_u
            select
            local.set 7
          end
          local.get 5
          local.get 3
          i32.store offset=40
          local.get 5
          local.get 7
          local.get 3
          i32.add
          i32.store offset=44
          local.get 5
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 5
          i32.store
          local.get 5
          i32.const 108
          i32.add
          i32.const 23
          i32.store
          local.get 5
          i32.const 100
          i32.add
          i32.const 23
          i32.store
          local.get 5
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 24
          i32.store
          local.get 5
          i32.const 84
          i32.add
          i32.const 25
          i32.store
          local.get 5
          i64.const 5
          i64.store offset=52 align=4
          local.get 5
          i32.const 1050840
          i32.store offset=48
          local.get 5
          i32.const 20
          i32.store offset=76
          local.get 5
          local.get 5
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 5
          local.get 5
          i32.const 24
          i32.add
          i32.store offset=104
          local.get 5
          local.get 5
          i32.const 16
          i32.add
          i32.store offset=96
          local.get 5
          local.get 5
          i32.const 40
          i32.add
          i32.store offset=88
          local.get 5
          local.get 5
          i32.const 36
          i32.add
          i32.store offset=80
          local.get 5
          local.get 5
          i32.const 32
          i32.add
          i32.store offset=72
          local.get 5
          i32.const 48
          i32.add
          local.get 4
          call $_ZN4core9panicking9panic_fmt17hbc500cb2b2c8690cE
          unreachable
        end
        i32.const 1049600
        i32.const 43
        local.get 4
        call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
        unreachable
      end
      local.get 0
      local.get 1
      i32.const 0
      local.get 7
      i32.const 1050640
      call $_ZN4core3str16slice_error_fail17h59c8ed8a521adb66E
      unreachable
    )
    (func $_ZN4core3fmt8builders11DebugStruct6finish17h7f96f0829decad05E (type 6) (param i32) (result i32)
      (local i32 i32)
      local.get 0
      i32.load8_u offset=4
      local.set 1
      block  ;; label = @1
        local.get 0
        i32.load8_u offset=5
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        i32.const 255
        i32.and
        local.set 2
        i32.const 1
        local.set 1
        block  ;; label = @2
          local.get 2
          br_if 0 (;@2;)
          block  ;; label = @3
            local.get 0
            i32.load
            local.tee 1
            i32.load8_u
            i32.const 4
            i32.and
            br_if 0 (;@3;)
            local.get 1
            i32.load offset=24
            i32.const 1049851
            i32.const 2
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            local.set 1
            br 1 (;@2;)
          end
          local.get 1
          i32.load offset=24
          i32.const 1049850
          i32.const 1
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          local.set 1
        end
        local.get 0
        local.get 1
        i32.store8 offset=4
      end
      local.get 1
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
    )
    (func $_ZN4core3fmt8builders10DebugTuple5field17h38cef908c7f0e964E (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i64 i64)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block  ;; label = @1
        block  ;; label = @2
          local.get 0
          i32.load8_u offset=8
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load offset=4
          local.set 4
          i32.const 1
          local.set 5
          br 1 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.set 4
        block  ;; label = @2
          local.get 0
          i32.load
          local.tee 6
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          local.get 6
          i32.load offset=24
          i32.const 1049845
          i32.const 1049855
          local.get 4
          select
          i32.const 2
          i32.const 1
          local.get 4
          select
          local.get 6
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          local.get 1
          local.get 6
          local.get 2
          i32.load offset=12
          call_indirect (type 2)
          local.set 5
          br 1 (;@1;)
        end
        block  ;; label = @2
          local.get 4
          br_if 0 (;@2;)
          local.get 6
          i32.load offset=24
          i32.const 1049853
          i32.const 2
          local.get 6
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          i32.const 0
          local.set 4
          br 1 (;@1;)
        end
        i32.const 1
        local.set 5
        local.get 3
        i32.const 1
        i32.store8 offset=23
        local.get 3
        i32.const 52
        i32.add
        i32.const 1049748
        i32.store
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 23
        i32.add
        i32.store
        local.get 3
        local.get 6
        i64.load offset=24 align=4
        i64.store offset=8
        local.get 6
        i64.load offset=8 align=4
        local.set 7
        local.get 6
        i64.load offset=16 align=4
        local.set 8
        local.get 3
        local.get 6
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 3
        local.get 8
        i64.store offset=40
        local.get 3
        local.get 7
        i64.store offset=32
        local.get 3
        local.get 6
        i64.load align=4
        i64.store offset=24
        local.get 3
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=48
        local.get 1
        local.get 3
        i32.const 24
        i32.add
        local.get 2
        i32.load offset=12
        call_indirect (type 2)
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=48
        i32.const 1049843
        i32.const 2
        local.get 3
        i32.load offset=52
        i32.load offset=12
        call_indirect (type 1)
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store8 offset=8
      local.get 0
      local.get 4
      i32.const 1
      i32.add
      i32.store offset=4
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt8builders10DebugInner5entry17h9a4e5e956be81377E (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i64 i64)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 1
      local.set 4
      block  ;; label = @1
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@1;)
        local.get 0
        i32.load8_u offset=5
        local.set 4
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  local.get 0
                  i32.load
                  local.tee 5
                  i32.load8_u
                  i32.const 4
                  i32.and
                  br_if 0 (;@6;)
                  local.get 4
                  i32.const 255
                  i32.and
                  br_if 1 (;@5;)
                  br 4 (;@2;)
                end
                local.get 4
                i32.const 255
                i32.and
                i32.eqz
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              i32.const 1
              local.set 4
              local.get 5
              i32.load offset=24
              i32.const 1049845
              i32.const 2
              local.get 5
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 2 (;@2;)
              br 3 (;@1;)
            end
            i32.const 1
            local.set 4
            local.get 5
            i32.load offset=24
            i32.const 1049858
            i32.const 1
            local.get 5
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            br_if 2 (;@1;)
          end
          i32.const 1
          local.set 4
          local.get 3
          i32.const 1
          i32.store8 offset=23
          local.get 3
          i32.const 52
          i32.add
          i32.const 1049748
          i32.store
          local.get 3
          i32.const 16
          i32.add
          local.get 3
          i32.const 23
          i32.add
          i32.store
          local.get 3
          local.get 5
          i64.load offset=24 align=4
          i64.store offset=8
          local.get 5
          i64.load offset=8 align=4
          local.set 6
          local.get 5
          i64.load offset=16 align=4
          local.set 7
          local.get 3
          local.get 5
          i32.load8_u offset=32
          i32.store8 offset=56
          local.get 3
          local.get 7
          i64.store offset=40
          local.get 3
          local.get 6
          i64.store offset=32
          local.get 3
          local.get 5
          i64.load align=4
          i64.store offset=24
          local.get 3
          local.get 3
          i32.const 8
          i32.add
          i32.store offset=48
          local.get 1
          local.get 3
          i32.const 24
          i32.add
          local.get 2
          i32.load offset=12
          call_indirect (type 2)
          br_if 1 (;@1;)
          local.get 3
          i32.load offset=48
          i32.const 1049843
          i32.const 2
          local.get 3
          i32.load offset=52
          i32.load offset=12
          call_indirect (type 1)
          local.set 4
          br 1 (;@1;)
        end
        local.get 1
        local.get 5
        local.get 2
        i32.load offset=12
        call_indirect (type 2)
        local.set 4
      end
      local.get 0
      i32.const 1
      i32.store8 offset=5
      local.get 0
      local.get 4
      i32.store8 offset=4
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3fmt8builders8DebugSet5entry17hca732acdaeb4c1ecE (type 1) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN4core3fmt8builders10DebugInner5entry17h9a4e5e956be81377E
      local.get 0
    )
    (func $_ZN4core3fmt8builders9DebugList6finish17h976f43ce51fe1d6aE (type 6) (param i32) (result i32)
      (local i32)
      i32.const 1
      local.set 1
      block  ;; label = @1
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.load offset=24
        i32.const 1049876
        i32.const 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
      end
      local.get 1
    )
    (func $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE (type 14) (param i32 i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          local.get 1
          i32.eqz
          br_if 0 (;@2;)
          i32.const 43
          i32.const 1114112
          local.get 0
          i32.load
          local.tee 6
          i32.const 1
          i32.and
          local.tee 1
          select
          local.set 7
          local.get 1
          local.get 5
          i32.add
          local.set 8
          br 1 (;@1;)
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 8
        local.get 0
        i32.load
        local.set 6
        i32.const 45
        local.set 7
      end
      block  ;; label = @1
        block  ;; label = @2
          local.get 6
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 0
          local.set 2
          br 1 (;@1;)
        end
        block  ;; label = @2
          block  ;; label = @3
            local.get 3
            br_if 0 (;@3;)
            i32.const 0
            local.set 9
            br 1 (;@2;)
          end
          local.get 3
          i32.const 3
          i32.and
          local.set 10
          block  ;; label = @3
            block  ;; label = @4
              local.get 3
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@4;)
              i32.const 0
              local.set 9
              local.get 2
              local.set 1
              br 1 (;@3;)
            end
            i32.const 0
            local.set 9
            i32.const 0
            local.get 3
            i32.const -4
            i32.and
            i32.sub
            local.set 11
            local.get 2
            local.set 1
            loop  ;; label = @4
              local.get 9
              local.get 1
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 9
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 11
              i32.const 4
              i32.add
              local.tee 11
              br_if 0 (;@4;)
            end
          end
          local.get 10
          i32.eqz
          br_if 0 (;@2;)
          loop  ;; label = @3
            local.get 9
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 9
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@3;)
          end
        end
        local.get 9
        local.get 8
        i32.add
        local.set 8
      end
      i32.const 1
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.eq
          br_if 0 (;@2;)
          local.get 0
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h336fb3a774dd5facE
          br_if 1 (;@1;)
          local.get 0
          i32.load offset=24
          local.get 4
          local.get 5
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          return
        end
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 9
                  local.get 8
                  i32.le_u
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 8
                  i32.and
                  br_if 4 (;@2;)
                  i32.const 0
                  local.set 1
                  local.get 9
                  local.get 8
                  i32.sub
                  local.tee 10
                  local.set 8
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 9
                  local.get 9
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
                end
                local.get 0
                local.get 7
                local.get 2
                local.get 3
                call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h336fb3a774dd5facE
                br_if 4 (;@1;)
                local.get 0
                i32.load offset=24
                local.get 4
                local.get 5
                local.get 0
                i32.const 28
                i32.add
                i32.load
                i32.load offset=12
                call_indirect (type 1)
                return
              end
              i32.const 0
              local.set 8
              local.get 10
              local.set 1
              br 1 (;@3;)
            end
            local.get 10
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 8
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          local.set 10
          local.get 0
          i32.load offset=4
          local.set 9
          local.get 0
          i32.load offset=24
          local.set 11
          block  ;; label = @3
            loop  ;; label = @4
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@3;)
              local.get 11
              local.get 9
              local.get 10
              i32.load offset=16
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@4;)
            end
            i32.const 1
            return
          end
          i32.const 1
          local.set 1
          local.get 9
          i32.const 1114112
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h336fb3a774dd5facE
          br_if 1 (;@1;)
          local.get 0
          i32.load offset=24
          local.get 4
          local.get 5
          local.get 0
          i32.load offset=28
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          local.get 0
          i32.load offset=28
          local.set 10
          local.get 0
          i32.load offset=24
          local.set 11
          i32.const 0
          local.set 1
          block  ;; label = @3
            loop  ;; label = @4
              block  ;; label = @5
                local.get 8
                local.get 1
                i32.ne
                br_if 0 (;@5;)
                local.get 8
                local.set 1
                br 2 (;@3;)
              end
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 11
              local.get 9
              local.get 10
              i32.load offset=16
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@4;)
            end
            local.get 1
            i32.const -1
            i32.add
            local.set 1
          end
          local.get 1
          local.get 8
          i32.lt_u
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=4
        local.get 0
        i32.load8_u offset=32
        local.set 12
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h336fb3a774dd5facE
        br_if 0 (;@1;)
        i32.const 0
        local.set 1
        local.get 9
        local.get 8
        i32.sub
        local.tee 10
        local.set 3
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              i32.const 1
              local.get 0
              i32.load8_u offset=32
              local.tee 9
              local.get 9
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
            end
            i32.const 0
            local.set 3
            local.get 10
            local.set 1
            br 1 (;@2;)
          end
          local.get 10
          i32.const 1
          i32.shr_u
          local.set 1
          local.get 10
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 3
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        local.set 10
        local.get 0
        i32.load offset=4
        local.set 9
        local.get 0
        i32.load offset=24
        local.set 11
        block  ;; label = @2
          loop  ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@2;)
            local.get 11
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@3;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 9
        i32.const 1114112
        i32.eq
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 4
        local.get 5
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 1)
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=28
        local.set 1
        local.get 0
        i32.load offset=24
        local.set 11
        i32.const 0
        local.set 10
        block  ;; label = @2
          loop  ;; label = @3
            local.get 3
            local.get 10
            i32.eq
            br_if 1 (;@2;)
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            local.get 11
            local.get 9
            local.get 1
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@3;)
          end
          i32.const 1
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.get 3
          i32.lt_u
          br_if 1 (;@1;)
        end
        local.get 0
        local.get 12
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=4
        i32.const 0
        return
      end
      local.get 1
    )
    (func $_ZN4core3fmt5Write10write_char17hb80e80132c950cd0E (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 1
              i32.const 128
              i32.lt_u
              br_if 0 (;@4;)
              local.get 1
              i32.const 2048
              i32.lt_u
              br_if 1 (;@3;)
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 2 (;@2;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.store8 offset=12
            i32.const 1
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 4
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt5Write9write_fmt17h3633fbe7ddbebc9dE (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1050124
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h9e7b9530a902cf30E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h6fab11ee0269f2feE (type 1) (param i32 i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hed44fd905acf524aE (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 1
              i32.const 128
              i32.lt_u
              br_if 0 (;@4;)
              local.get 1
              i32.const 2048
              i32.lt_u
              br_if 1 (;@3;)
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 2 (;@2;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.store8 offset=12
            i32.const 1
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 4
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h56a8e5fcb7490a9dE (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1050124
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h9e7b9530a902cf30E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h336fb3a774dd5facE (type 9) (param i32 i32 i32 i32) (result i32)
      (local i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 1
            i32.const 1114112
            i32.eq
            br_if 0 (;@3;)
            i32.const 1
            local.set 4
            local.get 0
            i32.load offset=24
            local.get 1
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=16
            call_indirect (type 2)
            br_if 1 (;@2;)
          end
          local.get 2
          br_if 1 (;@1;)
          i32.const 0
          local.set 4
        end
        local.get 4
        return
      end
      local.get 0
      i32.load offset=24
      local.get 2
      local.get 3
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
    )
    (func $_ZN4core3fmt9Formatter15debug_lower_hex17h81e8ba42b918c0c7E (type 6) (param i32) (result i32)
      local.get 0
      i32.load8_u
      i32.const 16
      i32.and
      i32.const 4
      i32.shr_u
    )
    (func $_ZN4core3fmt9Formatter15debug_upper_hex17h8e4f3a41c369cb99E (type 6) (param i32) (result i32)
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      i32.const 5
      i32.shr_u
    )
    (func $_ZN4core3fmt9Formatter12debug_struct17h6710d8b9bff04272E (type 15) (param i32 i32 i32) (result i64)
      i64.const 4294967296
      i64.const 0
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
      select
      local.get 0
      i64.extend_i32_u
      i64.or
    )
    (func $_ZN4core3fmt9Formatter10debug_list17h18e45534bb819322E (type 11) (param i32) (result i64)
      i64.const 4294967296
      i64.const 0
      local.get 0
      i32.load offset=24
      i32.const 1049859
      i32.const 1
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
      select
      local.get 0
      i64.extend_i32_u
      i64.or
    )
    (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h07955dca44baaf64E (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32)
      local.get 0
      i32.const 11
      i32.shl
      local.set 1
      i32.const 0
      local.set 2
      i32.const 32
      local.set 3
      i32.const 32
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          loop  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 3
                i32.const 1
                i32.shr_u
                local.get 2
                i32.add
                local.tee 3
                i32.const 2
                i32.shl
                i32.const 1052500
                i32.add
                i32.load
                i32.const 11
                i32.shl
                local.tee 5
                local.get 1
                i32.lt_u
                br_if 0 (;@5;)
                local.get 5
                local.get 1
                i32.eq
                br_if 3 (;@2;)
                local.get 3
                local.set 4
                br 1 (;@4;)
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 2
            end
            local.get 4
            local.get 2
            i32.sub
            local.set 3
            local.get 4
            local.get 2
            i32.gt_u
            br_if 0 (;@3;)
            br 2 (;@1;)
          end
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 2
      end
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 2
            i32.const 31
            i32.gt_u
            br_if 0 (;@3;)
            local.get 2
            i32.const 2
            i32.shl
            local.set 3
            i32.const 707
            local.set 4
            block  ;; label = @4
              local.get 2
              i32.const 31
              i32.eq
              br_if 0 (;@4;)
              local.get 3
              i32.const 1052504
              i32.add
              i32.load
              i32.const 21
              i32.shr_u
              local.set 4
            end
            i32.const 0
            local.set 5
            block  ;; label = @4
              local.get 2
              i32.const -1
              i32.add
              local.tee 1
              local.get 2
              i32.gt_u
              br_if 0 (;@4;)
              local.get 1
              i32.const 32
              i32.ge_u
              br_if 2 (;@2;)
              local.get 1
              i32.const 2
              i32.shl
              i32.const 1052500
              i32.add
              i32.load
              i32.const 2097151
              i32.and
              local.set 5
            end
            block  ;; label = @4
              local.get 4
              local.get 3
              i32.const 1052500
              i32.add
              i32.load
              i32.const 21
              i32.shr_u
              local.tee 2
              i32.const 1
              i32.add
              i32.eq
              br_if 0 (;@4;)
              local.get 0
              local.get 5
              i32.sub
              local.set 1
              local.get 2
              i32.const 707
              local.get 2
              i32.const 707
              i32.gt_u
              select
              local.set 3
              local.get 4
              i32.const -1
              i32.add
              local.set 5
              i32.const 0
              local.set 4
              loop  ;; label = @5
                local.get 3
                local.get 2
                i32.eq
                br_if 4 (;@1;)
                local.get 4
                local.get 2
                i32.const 1052628
                i32.add
                i32.load8_u
                i32.add
                local.tee 4
                local.get 1
                i32.gt_u
                br_if 1 (;@4;)
                local.get 5
                local.get 2
                i32.const 1
                i32.add
                local.tee 2
                i32.ne
                br_if 0 (;@5;)
              end
              local.get 5
              local.set 2
            end
            local.get 2
            i32.const 1
            i32.and
            return
          end
          local.get 2
          i32.const 32
          i32.const 1052380
          call $_ZN4core9panicking18panic_bounds_check17hd730cebac62172b8E
          unreachable
        end
        local.get 1
        i32.const 32
        i32.const 1052412
        call $_ZN4core9panicking18panic_bounds_check17hd730cebac62172b8E
        unreachable
      end
      local.get 3
      i32.const 707
      i32.const 1052396
      call $_ZN4core9panicking18panic_bounds_check17hd730cebac62172b8E
      unreachable
    )
    (func $_ZN4core7unicode9printable12is_printable17h06f1febde8be324fE (type 6) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          local.get 0
                          i32.const 65536
                          i32.lt_u
                          br_if 0 (;@10;)
                          local.get 0
                          i32.const 131072
                          i32.lt_u
                          br_if 1 (;@9;)
                          local.get 0
                          i32.const 2097120
                          i32.and
                          i32.const 173792
                          i32.ne
                          local.get 0
                          i32.const -177977
                          i32.add
                          i32.const 6
                          i32.gt_u
                          i32.and
                          local.get 0
                          i32.const 2097150
                          i32.and
                          i32.const 178206
                          i32.ne
                          i32.and
                          local.get 0
                          i32.const -183970
                          i32.add
                          i32.const 13
                          i32.gt_u
                          i32.and
                          local.get 0
                          i32.const -191457
                          i32.add
                          i32.const 3102
                          i32.gt_u
                          i32.and
                          local.get 0
                          i32.const -195102
                          i32.add
                          i32.const 1505
                          i32.gt_u
                          i32.and
                          local.get 0
                          i32.const -201547
                          i32.add
                          i32.const 716212
                          i32.gt_u
                          i32.and
                          local.get 0
                          i32.const 918000
                          i32.lt_u
                          i32.and
                          local.set 1
                          br 8 (;@2;)
                        end
                        i32.const 1050952
                        local.set 2
                        i32.const 0
                        local.set 3
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        i32.const 255
                        i32.and
                        local.set 4
                        loop  ;; label = @10
                          local.get 2
                          i32.const 2
                          i32.add
                          local.set 5
                          local.get 3
                          local.get 2
                          i32.load8_u offset=1
                          local.tee 1
                          i32.add
                          local.set 6
                          block  ;; label = @11
                            local.get 2
                            i32.load8_u
                            local.tee 2
                            local.get 4
                            i32.eq
                            br_if 0 (;@11;)
                            local.get 2
                            local.get 4
                            i32.gt_u
                            br_if 8 (;@3;)
                            local.get 6
                            local.set 3
                            local.get 5
                            local.set 2
                            local.get 5
                            i32.const 1051032
                            i32.ne
                            br_if 1 (;@10;)
                            br 8 (;@3;)
                          end
                          local.get 6
                          local.get 3
                          i32.lt_u
                          br_if 2 (;@8;)
                          local.get 6
                          i32.const 288
                          i32.gt_u
                          br_if 3 (;@7;)
                          local.get 3
                          i32.const 1051032
                          i32.add
                          local.set 2
                          block  ;; label = @11
                            loop  ;; label = @12
                              local.get 1
                              i32.eqz
                              br_if 1 (;@11;)
                              local.get 1
                              i32.const -1
                              i32.add
                              local.set 1
                              local.get 2
                              i32.load8_u
                              local.set 3
                              local.get 2
                              i32.const 1
                              i32.add
                              local.set 2
                              local.get 3
                              local.get 0
                              i32.const 255
                              i32.and
                              i32.ne
                              br_if 0 (;@12;)
                            end
                            i32.const 0
                            local.set 1
                            br 9 (;@2;)
                          end
                          local.get 6
                          local.set 3
                          local.get 5
                          local.set 2
                          local.get 5
                          i32.const 1051032
                          i32.ne
                          br_if 0 (;@10;)
                          br 7 (;@3;)
                        end
                      end
                      i32.const 1051623
                      local.set 2
                      i32.const 0
                      local.set 3
                      local.get 0
                      i32.const 8
                      i32.shr_u
                      i32.const 255
                      i32.and
                      local.set 4
                      loop  ;; label = @9
                        local.get 2
                        i32.const 2
                        i32.add
                        local.set 5
                        local.get 3
                        local.get 2
                        i32.load8_u offset=1
                        local.tee 1
                        i32.add
                        local.set 6
                        block  ;; label = @10
                          local.get 2
                          i32.load8_u
                          local.tee 2
                          local.get 4
                          i32.eq
                          br_if 0 (;@10;)
                          local.get 2
                          local.get 4
                          i32.gt_u
                          br_if 6 (;@4;)
                          local.get 6
                          local.set 3
                          local.get 5
                          local.set 2
                          local.get 5
                          i32.const 1051707
                          i32.ne
                          br_if 1 (;@9;)
                          br 6 (;@4;)
                        end
                        local.get 6
                        local.get 3
                        i32.lt_u
                        br_if 3 (;@6;)
                        local.get 6
                        i32.const 192
                        i32.gt_u
                        br_if 4 (;@5;)
                        local.get 3
                        i32.const 1051707
                        i32.add
                        local.set 2
                        block  ;; label = @10
                          loop  ;; label = @11
                            local.get 1
                            i32.eqz
                            br_if 1 (;@10;)
                            local.get 1
                            i32.const -1
                            i32.add
                            local.set 1
                            local.get 2
                            i32.load8_u
                            local.set 3
                            local.get 2
                            i32.const 1
                            i32.add
                            local.set 2
                            local.get 3
                            local.get 0
                            i32.const 255
                            i32.and
                            i32.ne
                            br_if 0 (;@11;)
                          end
                          i32.const 0
                          local.set 1
                          br 8 (;@2;)
                        end
                        local.get 6
                        local.set 3
                        local.get 5
                        local.set 2
                        local.get 5
                        i32.const 1051707
                        i32.ne
                        br_if 0 (;@9;)
                        br 5 (;@4;)
                      end
                    end
                    local.get 3
                    local.get 6
                    i32.const 1050920
                    call $_ZN4core5slice5index22slice_index_order_fail17h82105b845b90a452E
                    unreachable
                  end
                  local.get 6
                  i32.const 288
                  i32.const 1050920
                  call $_ZN4core5slice5index24slice_end_index_len_fail17hac7dfa48c1997a6eE
                  unreachable
                end
                local.get 3
                local.get 6
                i32.const 1050920
                call $_ZN4core5slice5index22slice_index_order_fail17h82105b845b90a452E
                unreachable
              end
              local.get 6
              i32.const 192
              i32.const 1050920
              call $_ZN4core5slice5index24slice_end_index_len_fail17hac7dfa48c1997a6eE
              unreachable
            end
            local.get 0
            i32.const 65535
            i32.and
            local.set 0
            i32.const 1051899
            local.set 2
            i32.const 1
            local.set 1
            block  ;; label = @4
              loop  ;; label = @5
                local.get 2
                i32.const 1
                i32.add
                local.set 6
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 2
                    i32.load8_u
                    local.tee 3
                    i32.const 24
                    i32.shl
                    i32.const 24
                    i32.shr_s
                    local.tee 5
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@7;)
                    local.get 6
                    local.set 2
                    br 1 (;@6;)
                  end
                  local.get 6
                  i32.const 1052337
                  i32.eq
                  br_if 2 (;@4;)
                  local.get 5
                  i32.const 127
                  i32.and
                  i32.const 8
                  i32.shl
                  local.get 2
                  i32.load8_u offset=1
                  i32.or
                  local.set 3
                  local.get 2
                  i32.const 2
                  i32.add
                  local.set 2
                end
                local.get 0
                local.get 3
                i32.sub
                local.tee 0
                i32.const 0
                i32.lt_s
                br_if 3 (;@2;)
                local.get 1
                i32.const 1
                i32.xor
                local.set 1
                local.get 2
                i32.const 1052337
                i32.ne
                br_if 0 (;@5;)
                br 3 (;@2;)
              end
            end
            i32.const 1049600
            i32.const 43
            i32.const 1050936
            call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
            unreachable
          end
          local.get 0
          i32.const 65535
          i32.and
          local.set 0
          i32.const 1051320
          local.set 2
          i32.const 1
          local.set 1
          loop  ;; label = @3
            local.get 2
            i32.const 1
            i32.add
            local.set 6
            block  ;; label = @4
              block  ;; label = @5
                local.get 2
                i32.load8_u
                local.tee 3
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                local.tee 5
                i32.const 0
                i32.lt_s
                br_if 0 (;@5;)
                local.get 6
                local.set 2
                br 1 (;@4;)
              end
              local.get 6
              i32.const 1051623
              i32.eq
              br_if 3 (;@1;)
              local.get 5
              i32.const 127
              i32.and
              i32.const 8
              i32.shl
              local.get 2
              i32.load8_u offset=1
              i32.or
              local.set 3
              local.get 2
              i32.const 2
              i32.add
              local.set 2
            end
            local.get 0
            local.get 3
            i32.sub
            local.tee 0
            i32.const 0
            i32.lt_s
            br_if 1 (;@2;)
            local.get 1
            i32.const 1
            i32.xor
            local.set 1
            local.get 2
            i32.const 1051623
            i32.ne
            br_if 0 (;@3;)
          end
        end
        local.get 1
        i32.const 1
        i32.and
        return
      end
      i32.const 1049600
      i32.const 43
      i32.const 1050936
      call $_ZN4core9panicking5panic17h7ae74ceab81e332cE
      unreachable
    )
    (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ecce93d9e28ad51E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i64 i32)
      i32.const 1
      local.set 2
      block  ;; label = @1
        local.get 1
        i32.load offset=24
        local.tee 3
        i32.const 39
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        local.tee 4
        call_indirect (type 2)
        br_if 0 (;@1;)
        i32.const 116
        local.set 5
        i32.const 2
        local.set 1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          local.get 0
                          i32.load
                          local.tee 0
                          i32.const -9
                          i32.add
                          br_table 8 (;@2;) 3 (;@7;) 1 (;@9;) 1 (;@9;) 2 (;@8;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 1 (;@9;) 4 (;@6;) 0 (;@10;)
                        end
                        local.get 0
                        i32.const 92
                        i32.eq
                        br_if 3 (;@6;)
                      end
                      local.get 0
                      call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h07955dca44baaf64E
                      br_if 3 (;@5;)
                      local.get 0
                      call $_ZN4core7unicode9printable12is_printable17h06f1febde8be324fE
                      i32.eqz
                      br_if 4 (;@4;)
                      i32.const 1
                      local.set 1
                      local.get 0
                      local.set 5
                      br 6 (;@2;)
                    end
                    i32.const 114
                    local.set 5
                    i32.const 2
                    local.set 1
                    br 5 (;@2;)
                  end
                  i32.const 110
                  local.set 5
                  i32.const 2
                  local.set 1
                  br 4 (;@2;)
                end
                i32.const 2
                local.set 1
                local.get 0
                local.set 5
                br 3 (;@2;)
              end
              local.get 0
              i32.const 1
              i32.or
              i32.clz
              i32.const 2
              i32.shr_u
              i32.const 7
              i32.xor
              i64.extend_i32_u
              i64.const 21474836480
              i64.or
              local.set 6
              br 1 (;@3;)
            end
            local.get 0
            i32.const 1
            i32.or
            i32.clz
            i32.const 2
            i32.shr_u
            i32.const 7
            i32.xor
            i64.extend_i32_u
            i64.const 21474836480
            i64.or
            local.set 6
          end
          i32.const 3
          local.set 1
          local.get 0
          local.set 5
        end
        loop  ;; label = @2
          local.get 1
          local.set 7
          i32.const 0
          local.set 1
          local.get 5
          local.set 0
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 7
                    br_table 1 (;@6;) 4 (;@3;) 2 (;@5;) 0 (;@7;) 1 (;@6;)
                  end
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            local.get 6
                            i64.const 32
                            i64.shr_u
                            i32.wrap_i64
                            i32.const 255
                            i32.and
                            br_table 5 (;@6;) 0 (;@11;) 4 (;@7;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 5 (;@6;)
                          end
                          local.get 6
                          i64.const -1095216660481
                          i64.and
                          local.set 6
                          i32.const 125
                          local.set 0
                          i32.const 3
                          local.set 1
                          br 7 (;@3;)
                        end
                        local.get 6
                        i64.const -1095216660481
                        i64.and
                        i64.const 8589934592
                        i64.or
                        local.set 6
                        i32.const 123
                        local.set 0
                        i32.const 3
                        local.set 1
                        br 6 (;@3;)
                      end
                      local.get 6
                      i64.const -1095216660481
                      i64.and
                      i64.const 12884901888
                      i64.or
                      local.set 6
                      i32.const 117
                      local.set 0
                      i32.const 3
                      local.set 1
                      br 5 (;@3;)
                    end
                    local.get 6
                    i64.const -1095216660481
                    i64.and
                    i64.const 17179869184
                    i64.or
                    local.set 6
                    i32.const 92
                    local.set 0
                    i32.const 3
                    local.set 1
                    br 4 (;@3;)
                  end
                  i32.const 48
                  i32.const 87
                  local.get 5
                  local.get 6
                  i32.wrap_i64
                  local.tee 1
                  i32.const 2
                  i32.shl
                  i32.shr_u
                  i32.const 15
                  i32.and
                  local.tee 0
                  i32.const 10
                  i32.lt_u
                  select
                  local.get 0
                  i32.add
                  local.set 0
                  local.get 1
                  i32.eqz
                  br_if 2 (;@4;)
                  local.get 6
                  i64.const -1
                  i64.add
                  i64.const 4294967295
                  i64.and
                  local.get 6
                  i64.const -4294967296
                  i64.and
                  i64.or
                  local.set 6
                  i32.const 3
                  local.set 1
                  br 3 (;@3;)
                end
                local.get 3
                i32.const 39
                local.get 4
                call_indirect (type 2)
                local.set 2
                br 4 (;@1;)
              end
              i32.const 92
              local.set 0
              i32.const 1
              local.set 1
              br 1 (;@3;)
            end
            local.get 6
            i64.const -1095216660481
            i64.and
            i64.const 4294967296
            i64.or
            local.set 6
            i32.const 3
            local.set 1
          end
          local.get 3
          local.get 0
          local.get 4
          call_indirect (type 2)
          i32.eqz
          br_if 0 (;@2;)
        end
      end
      local.get 2
    )
    (func $_ZN4core3str8converts9from_utf817h0bab9265e4f36d8eE (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i64 i32 i32)
      block  ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        i32.const 0
        local.get 2
        i32.const -7
        i32.add
        local.tee 3
        local.get 3
        local.get 2
        i32.gt_u
        select
        local.set 4
        local.get 1
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.get 1
        i32.sub
        local.set 5
        i32.const 0
        local.set 3
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              loop  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      local.get 1
                      local.get 3
                      i32.add
                      i32.load8_u
                      local.tee 6
                      i32.const 24
                      i32.shl
                      i32.const 24
                      i32.shr_s
                      local.tee 7
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@8;)
                      local.get 5
                      i32.const -1
                      i32.eq
                      br_if 1 (;@7;)
                      local.get 5
                      local.get 3
                      i32.sub
                      i32.const 3
                      i32.and
                      br_if 1 (;@7;)
                      block  ;; label = @9
                        local.get 3
                        local.get 4
                        i32.ge_u
                        br_if 0 (;@9;)
                        loop  ;; label = @10
                          local.get 1
                          local.get 3
                          i32.add
                          local.tee 6
                          i32.load
                          local.get 6
                          i32.const 4
                          i32.add
                          i32.load
                          i32.or
                          i32.const -2139062144
                          i32.and
                          br_if 1 (;@9;)
                          local.get 3
                          i32.const 8
                          i32.add
                          local.tee 3
                          local.get 4
                          i32.lt_u
                          br_if 0 (;@10;)
                        end
                      end
                      local.get 3
                      local.get 2
                      i32.ge_u
                      br_if 2 (;@6;)
                      loop  ;; label = @9
                        local.get 1
                        local.get 3
                        i32.add
                        i32.load8_s
                        i32.const 0
                        i32.lt_s
                        br_if 3 (;@6;)
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.add
                        local.tee 3
                        i32.ne
                        br_if 0 (;@9;)
                        br 8 (;@1;)
                      end
                    end
                    i64.const 1
                    local.set 8
                    i32.const 1
                    local.set 9
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            block  ;; label = @12
                              block  ;; label = @13
                                block  ;; label = @14
                                  block  ;; label = @15
                                    block  ;; label = @16
                                      local.get 6
                                      i32.const 1050383
                                      i32.add
                                      i32.load8_u
                                      i32.const -2
                                      i32.add
                                      br_table 0 (;@16;) 1 (;@15;) 2 (;@14;) 14 (;@2;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 6
                                    local.get 2
                                    i32.lt_u
                                    br_if 6 (;@9;)
                                    i32.const 0
                                    local.set 9
                                    i64.const 0
                                    local.set 8
                                    br 13 (;@2;)
                                  end
                                  i32.const 0
                                  local.set 9
                                  i64.const 0
                                  local.set 8
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 10
                                  local.get 2
                                  i32.ge_u
                                  br_if 12 (;@2;)
                                  local.get 1
                                  local.get 10
                                  i32.add
                                  i32.load8_u
                                  local.set 10
                                  local.get 6
                                  i32.const -224
                                  i32.add
                                  br_table 1 (;@13;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 3 (;@11;) 2 (;@12;) 3 (;@11;)
                                end
                                i32.const 0
                                local.set 9
                                i64.const 0
                                local.set 8
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 10
                                local.get 2
                                i32.ge_u
                                br_if 11 (;@2;)
                                local.get 1
                                local.get 10
                                i32.add
                                i32.load8_u
                                local.set 10
                                block  ;; label = @14
                                  block  ;; label = @15
                                    block  ;; label = @16
                                      block  ;; label = @17
                                        local.get 6
                                        i32.const -240
                                        i32.add
                                        br_table 1 (;@16;) 0 (;@17;) 0 (;@17;) 0 (;@17;) 2 (;@15;) 0 (;@17;)
                                      end
                                      local.get 7
                                      i32.const 15
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 2
                                      i32.gt_u
                                      br_if 13 (;@3;)
                                      local.get 10
                                      i32.const 24
                                      i32.shl
                                      i32.const 24
                                      i32.shr_s
                                      i32.const -1
                                      i32.gt_s
                                      br_if 13 (;@3;)
                                      local.get 10
                                      i32.const 255
                                      i32.and
                                      i32.const 192
                                      i32.ge_u
                                      br_if 13 (;@3;)
                                      br 2 (;@14;)
                                    end
                                    local.get 10
                                    i32.const 112
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 48
                                    i32.ge_u
                                    br_if 12 (;@3;)
                                    br 1 (;@14;)
                                  end
                                  local.get 10
                                  i32.const 24
                                  i32.shl
                                  i32.const 24
                                  i32.shr_s
                                  i32.const -1
                                  i32.gt_s
                                  br_if 11 (;@3;)
                                  local.get 10
                                  i32.const 255
                                  i32.and
                                  i32.const 143
                                  i32.gt_u
                                  br_if 11 (;@3;)
                                end
                                local.get 3
                                i32.const 2
                                i32.add
                                local.tee 6
                                local.get 2
                                i32.ge_u
                                br_if 11 (;@2;)
                                local.get 1
                                local.get 6
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.gt_s
                                br_if 9 (;@4;)
                                local.get 3
                                i32.const 3
                                i32.add
                                local.tee 6
                                local.get 2
                                i32.ge_u
                                br_if 11 (;@2;)
                                local.get 1
                                local.get 6
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.le_s
                                br_if 5 (;@8;)
                                i64.const 3
                                local.set 8
                                i32.const 1
                                local.set 9
                                br 11 (;@2;)
                              end
                              local.get 10
                              i32.const 224
                              i32.and
                              i32.const 160
                              i32.ne
                              br_if 9 (;@3;)
                              br 2 (;@10;)
                            end
                            local.get 10
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            i32.const -1
                            i32.gt_s
                            br_if 8 (;@3;)
                            local.get 10
                            i32.const 255
                            i32.and
                            i32.const 160
                            i32.ge_u
                            br_if 8 (;@3;)
                            br 1 (;@10;)
                          end
                          block  ;; label = @11
                            local.get 7
                            i32.const 31
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 12
                            i32.lt_u
                            br_if 0 (;@11;)
                            local.get 7
                            i32.const -2
                            i32.and
                            i32.const -18
                            i32.ne
                            br_if 8 (;@3;)
                            local.get 10
                            i32.const 24
                            i32.shl
                            i32.const 24
                            i32.shr_s
                            i32.const -1
                            i32.gt_s
                            br_if 8 (;@3;)
                            local.get 10
                            i32.const 255
                            i32.and
                            i32.const 192
                            i32.ge_u
                            br_if 8 (;@3;)
                            br 1 (;@10;)
                          end
                          local.get 10
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          i32.const -1
                          i32.gt_s
                          br_if 7 (;@3;)
                          local.get 10
                          i32.const 255
                          i32.and
                          i32.const 191
                          i32.gt_u
                          br_if 7 (;@3;)
                        end
                        local.get 3
                        i32.const 2
                        i32.add
                        local.tee 6
                        local.get 2
                        i32.ge_u
                        br_if 7 (;@2;)
                        local.get 1
                        local.get 6
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        br_if 5 (;@4;)
                        br 1 (;@8;)
                      end
                      local.get 1
                      local.get 6
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 5 (;@3;)
                    end
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 3
                    br 1 (;@6;)
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                end
                local.get 3
                local.get 2
                i32.lt_u
                br_if 0 (;@5;)
                br 4 (;@1;)
              end
            end
            i64.const 2
            local.set 8
            i32.const 1
            local.set 9
            br 1 (;@2;)
          end
          i64.const 1
          local.set 8
          i32.const 1
          local.set 9
        end
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        i32.const 11
        i32.add
        i32.const 0
        i32.store8
        local.get 0
        i32.const 9
        i32.add
        local.get 8
        i64.store16 align=1
        local.get 0
        i32.const 8
        i32.add
        local.get 9
        i32.store8
        local.get 0
        i32.const 1
        i32.store
        return
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      i32.store
      local.get 0
      i32.const 0
      i32.store
    )
    (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h841343116b1a825aE (type 2) (param i32 i32) (result i32)
      local.get 0
      i64.load8_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417h06402c54ff526c65E
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hffa6e58cfaf4dda0E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load8_u
      local.set 3
      i32.const 0
      local.set 0
      loop  ;; label = @1
        local.get 2
        local.get 0
        i32.add
        i32.const 127
        i32.add
        i32.const 48
        i32.const 87
        local.get 3
        i32.const 15
        i32.and
        local.tee 4
        i32.const 10
        i32.lt_u
        select
        local.get 4
        i32.add
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 255
        i32.and
        local.tee 4
        i32.const 4
        i32.shr_u
        local.set 3
        local.get 4
        i32.const 15
        i32.gt_u
        br_if 0 (;@1;)
      end
      block  ;; label = @1
        local.get 0
        i32.const 128
        i32.add
        local.tee 3
        i32.const 129
        i32.lt_u
        br_if 0 (;@1;)
        local.get 3
        i32.const 128
        i32.const 1049904
        call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1049920
      i32.const 2
      local.get 2
      local.get 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num3imp7fmt_u6417h06402c54ff526c65E (type 16) (param i64 i32 i32) (result i32)
      (local i32 i32 i64 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 39
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          local.get 0
          i64.const 10000
          i64.ge_u
          br_if 0 (;@2;)
          local.get 0
          local.set 5
          br 1 (;@1;)
        end
        i32.const 39
        local.set 4
        loop  ;; label = @2
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.add
          local.tee 6
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i64.const 10000
          i64.div_u
          local.tee 5
          i64.const 10000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 7
          i32.const 65535
          i32.and
          i32.const 100
          i32.div_u
          local.tee 8
          i32.const 1
          i32.shl
          i32.const 1049922
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 6
          i32.const -2
          i32.add
          local.get 7
          local.get 8
          i32.const 100
          i32.mul
          i32.sub
          i32.const 65535
          i32.and
          i32.const 1
          i32.shl
          i32.const 1049922
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i64.const 99999999
          i64.gt_u
          local.set 6
          local.get 5
          local.set 0
          local.get 6
          br_if 0 (;@2;)
        end
      end
      block  ;; label = @1
        local.get 5
        i32.wrap_i64
        local.tee 6
        i32.const 99
        i32.le_s
        br_if 0 (;@1;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 5
        i32.wrap_i64
        local.tee 6
        local.get 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049922
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
      end
      block  ;; label = @1
        block  ;; label = @2
          local.get 6
          i32.const 10
          i32.lt_s
          br_if 0 (;@2;)
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.const -2
          i32.add
          local.tee 4
          i32.add
          local.get 6
          i32.const 1
          i32.shl
          i32.const 1049922
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          br 1 (;@1;)
        end
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 48
        i32.add
        i32.store8
      end
      local.get 2
      local.get 1
      i32.const 1049588
      i32.const 0
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.add
      i32.const 39
      local.get 4
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
      local.set 4
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17hf06b1365152ca438E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load8_u
      local.set 3
      i32.const 0
      local.set 0
      loop  ;; label = @1
        local.get 2
        local.get 0
        i32.add
        i32.const 127
        i32.add
        i32.const 48
        i32.const 55
        local.get 3
        i32.const 15
        i32.and
        local.tee 4
        i32.const 10
        i32.lt_u
        select
        local.get 4
        i32.add
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 255
        i32.and
        local.tee 4
        i32.const 4
        i32.shr_u
        local.set 3
        local.get 4
        i32.const 15
        i32.gt_u
        br_if 0 (;@1;)
      end
      block  ;; label = @1
        local.get 0
        i32.const 128
        i32.add
        local.tee 3
        i32.const 129
        i32.lt_u
        br_if 0 (;@1;)
        local.get 3
        i32.const 128
        i32.const 1049904
        call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1049920
      i32.const 2
      local.get 2
      local.get 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h329d65fbd7e00db2E (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h48cfa322affe5736E
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8612e4f4711225a1E (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 1
                i32.load
                local.tee 3
                i32.const 16
                i32.and
                br_if 0 (;@5;)
                local.get 3
                i32.const 32
                i32.and
                br_if 1 (;@4;)
                local.get 0
                i64.load8_u
                i32.const 1
                local.get 1
                call $_ZN4core3fmt3num3imp7fmt_u6417h06402c54ff526c65E
                local.set 0
                br 2 (;@3;)
              end
              local.get 0
              i32.load8_u
              local.set 3
              i32.const 0
              local.set 0
              loop  ;; label = @5
                local.get 2
                local.get 0
                i32.add
                i32.const 127
                i32.add
                i32.const 48
                i32.const 87
                local.get 3
                i32.const 15
                i32.and
                local.tee 4
                i32.const 10
                i32.lt_u
                select
                local.get 4
                i32.add
                i32.store8
                local.get 0
                i32.const -1
                i32.add
                local.set 0
                local.get 3
                i32.const 255
                i32.and
                local.tee 4
                i32.const 4
                i32.shr_u
                local.set 3
                local.get 4
                i32.const 15
                i32.gt_u
                br_if 0 (;@5;)
              end
              local.get 0
              i32.const 128
              i32.add
              local.tee 3
              i32.const 129
              i32.ge_u
              br_if 2 (;@2;)
              local.get 1
              i32.const 1
              i32.const 1049920
              i32.const 2
              local.get 2
              local.get 0
              i32.add
              i32.const 128
              i32.add
              i32.const 0
              local.get 0
              i32.sub
              call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
              local.set 0
              br 1 (;@3;)
            end
            local.get 0
            i32.load8_u
            local.set 3
            i32.const 0
            local.set 0
            loop  ;; label = @4
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 55
              local.get 3
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 3
              i32.const 255
              i32.and
              local.tee 4
              i32.const 4
              i32.shr_u
              local.set 3
              local.get 4
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 3
            i32.const 129
            i32.ge_u
            br_if 2 (;@1;)
            local.get 1
            i32.const 1
            i32.const 1049920
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h2b8516fbf5cd108eE
            local.set 0
          end
          local.get 2
          i32.const 128
          i32.add
          global.set $__stack_pointer
          local.get 0
          return
        end
        local.get 3
        i32.const 128
        i32.const 1049904
        call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
        unreachable
      end
      local.get 3
      i32.const 128
      i32.const 1049904
      call $_ZN4core5slice5index26slice_start_index_len_fail17h19e6b41dfdf42e35E
      unreachable
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha7b646bc16fb1f08E (type 2) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block  ;; label = @1
        block  ;; label = @2
          local.get 0
          i32.load
          local.tee 0
          i32.load8_u
          i32.const 1
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load offset=24
          i32.const 1052448
          i32.const 4
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.load offset=24
        i32.const 1052444
        i32.const 4
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        i32.store8 offset=8
        local.get 2
        local.get 1
        i32.store
        local.get 2
        i32.const 0
        i32.store8 offset=9
        local.get 2
        i32.const 0
        i32.store offset=4
        local.get 2
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.const 1049860
        call $_ZN4core3fmt8builders10DebugTuple5field17h38cef908c7f0e964E
        drop
        local.get 2
        i32.load8_u offset=8
        local.set 1
        block  ;; label = @2
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.const 255
          i32.and
          local.set 0
          i32.const 1
          local.set 1
          local.get 0
          br_if 0 (;@2;)
          local.get 2
          i32.load
          local.set 0
          block  ;; label = @3
            local.get 3
            i32.const 1
            i32.ne
            br_if 0 (;@3;)
            local.get 2
            i32.load8_u offset=9
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.load8_u
            i32.const 4
            i32.and
            br_if 0 (;@3;)
            i32.const 1
            local.set 1
            local.get 0
            i32.load offset=24
            i32.const 1049856
            i32.const 1
            local.get 0
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@2;)
          end
          local.get 0
          i32.load offset=24
          i32.const 1049857
          i32.const 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          local.set 1
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        local.set 1
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h150b907e72450382E (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i64.const 4294967296
      i64.const 0
      local.get 1
      i32.load offset=24
      i32.const 1052452
      i32.const 9
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
      select
      local.get 1
      i64.extend_i32_u
      i64.or
      i64.store
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 2
      i32.const 1052461
      i32.const 11
      local.get 2
      i32.const 12
      i32.add
      i32.const 1052428
      call $_ZN4core3fmt8builders11DebugStruct5field17h6f9fe2e322d34177E
      drop
      local.get 2
      local.get 0
      i32.const 4
      i32.add
      i32.store offset=12
      local.get 2
      i32.const 1052472
      i32.const 9
      local.get 2
      i32.const 12
      i32.add
      i32.const 1052484
      call $_ZN4core3fmt8builders11DebugStruct5field17h6f9fe2e322d34177E
      drop
      local.get 2
      i32.load8_u offset=4
      local.set 1
      block  ;; label = @1
        local.get 2
        i32.load8_u offset=5
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        i32.const 255
        i32.and
        local.set 0
        i32.const 1
        local.set 1
        local.get 0
        br_if 0 (;@1;)
        block  ;; label = @2
          local.get 2
          i32.load
          local.tee 1
          i32.load8_u
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          local.get 1
          i32.load offset=24
          i32.const 1049851
          i32.const 2
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          local.set 1
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=24
        i32.const 1049850
        i32.const 1
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
    )
    (func $memcpy (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          local.get 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.set 5
        block  ;; label = @2
          local.get 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          local.get 1
          local.set 6
          loop  ;; label = @3
            local.get 3
            local.get 6
            i32.load8_u
            i32.store8
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 5
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        local.tee 7
        i32.const -4
        i32.and
        local.tee 8
        i32.add
        local.set 3
        block  ;; label = @2
          block  ;; label = @3
            local.get 1
            local.get 4
            i32.add
            local.tee 9
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const 1
            i32.lt_s
            br_if 1 (;@2;)
            local.get 9
            i32.const 3
            i32.shl
            local.tee 1
            i32.const 24
            i32.and
            local.set 2
            i32.const 0
            local.get 1
            i32.sub
            i32.const 24
            i32.and
            local.set 4
            local.get 9
            i32.const -4
            i32.and
            local.tee 6
            i32.const 4
            i32.add
            local.set 1
            local.get 6
            i32.load
            local.set 6
            loop  ;; label = @4
              local.get 5
              local.get 6
              local.get 2
              i32.shr_u
              local.get 1
              i32.load
              local.tee 6
              local.get 4
              i32.shl
              i32.or
              i32.store
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 5
              i32.const 4
              i32.add
              local.tee 5
              local.get 3
              i32.lt_u
              br_if 0 (;@4;)
              br 2 (;@2;)
            end
          end
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 0 (;@2;)
          local.get 9
          local.set 1
          loop  ;; label = @3
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 7
        i32.const 3
        i32.and
        local.set 2
        local.get 9
        local.get 8
        i32.add
        local.set 1
      end
      block  ;; label = @1
        local.get 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@1;)
        local.get 3
        local.get 2
        i32.add
        local.set 5
        loop  ;; label = @2
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
    )
    (func $memset (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          local.get 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.set 5
        block  ;; label = @2
          local.get 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          loop  ;; label = @3
            local.get 3
            local.get 1
            i32.store8
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 5
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        local.tee 4
        i32.const -4
        i32.and
        local.tee 2
        i32.add
        local.set 3
        block  ;; label = @2
          local.get 2
          i32.const 1
          i32.lt_s
          br_if 0 (;@2;)
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 2
          loop  ;; label = @3
            local.get 5
            local.get 2
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 4
        i32.const 3
        i32.and
        local.set 2
      end
      block  ;; label = @1
        local.get 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@1;)
        local.get 3
        local.get 2
        i32.add
        local.set 5
        loop  ;; label = @2
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
    )
    (func $canonical_abi_realloc (type 9) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 64
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 0
      i32.store offset=48
      local.get 6
      local.get 1
      i32.store offset=52
      local.get 6
      local.get 2
      i32.store offset=56
      local.get 6
      local.get 3
      i32.store offset=60
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 1
                br_if 0 (;@5;)
                local.get 3
                i32.eqz
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              i32.const 16
              local.set 7
              local.get 6
              local.get 7
              i32.add
              local.set 8
              local.get 8
              local.get 1
              local.get 2
              call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb554ac380dd7ad24E
              local.get 6
              i32.load offset=20
              local.set 9
              local.get 6
              i32.load offset=16
              local.set 10
              local.get 6
              local.get 10
              i32.store offset=32
              local.get 6
              local.get 9
              i32.store offset=36
              local.get 6
              i32.load offset=32
              local.set 11
              local.get 6
              i32.load offset=36
              local.set 12
              local.get 0
              local.get 11
              local.get 12
              local.get 3
              call $_ZN5alloc5alloc7realloc17h757f3f5b5e172a33E
              local.set 13
              local.get 6
              local.get 13
              i32.store offset=44
              br 2 (;@2;)
            end
            local.get 6
            local.get 2
            i32.store offset=28
            br 2 (;@1;)
          end
          i32.const 8
          local.set 14
          local.get 6
          local.get 14
          i32.add
          local.set 15
          local.get 15
          local.get 3
          local.get 2
          call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb554ac380dd7ad24E
          local.get 6
          i32.load offset=12
          local.set 16
          local.get 6
          i32.load offset=8
          local.set 17
          local.get 6
          local.get 17
          i32.store offset=32
          local.get 6
          local.get 16
          i32.store offset=36
          local.get 6
          i32.load offset=32
          local.set 18
          local.get 6
          i32.load offset=36
          local.set 19
          local.get 18
          local.get 19
          call $_ZN5alloc5alloc5alloc17h8d79e1c215c6c2d1E
          local.set 20
          local.get 6
          local.get 20
          i32.store offset=44
        end
        local.get 6
        i32.load offset=44
        local.set 21
        local.get 21
        call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hecdef426be9fe013E
        local.set 22
        i32.const 1
        local.set 23
        local.get 22
        local.get 23
        i32.and
        local.set 24
        block  ;; label = @2
          local.get 24
          br_if 0 (;@2;)
          local.get 6
          i32.load offset=44
          local.set 25
          local.get 6
          local.get 25
          i32.store offset=28
          br 1 (;@1;)
        end
        local.get 6
        i32.load offset=32
        local.set 26
        local.get 6
        i32.load offset=36
        local.set 27
        local.get 26
        local.get 27
        call $_ZN5alloc5alloc18handle_alloc_error17hfc3a3c0bb5c92416E
        unreachable
      end
      local.get 6
      i32.load offset=28
      local.set 28
      i32.const 64
      local.set 29
      local.get 6
      local.get 29
      i32.add
      local.set 30
      local.get 30
      global.set $__stack_pointer
      local.get 28
      return
    )
    (func $canonical_abi_free (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      block  ;; label = @1
        local.get 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 5
        local.get 1
        local.get 2
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hb554ac380dd7ad24E
        local.get 5
        i32.load offset=4
        local.set 6
        local.get 5
        i32.load
        local.set 7
        local.get 5
        local.get 7
        i32.store offset=24
        local.get 5
        local.get 6
        i32.store offset=28
        local.get 0
        local.get 7
        local.get 6
        call $_ZN5alloc5alloc7dealloc17h079cbd57a47cebfbE
      end
      i32.const 32
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (table (;0;) 37 37 funcref)
    (memory (;0;) 17)
    (global $__stack_pointer (mut i32) i32.const 1048576)
    (global (;1;) i32 i32.const 1053872)
    (global (;2;) i32 i32.const 1053872)
    (export "memory" (memory 0))
    (export "backend-0.1.0#fetch" (func $backend-0.1.0#fetch))
    (export "canonical_abi_realloc" (func $canonical_abi_realloc))
    (export "canonical_abi_free" (func $canonical_abi_free))
    (export "__data_end" (global 1))
    (export "__heap_base" (global 2))
    (elem (;0;) (i32.const 1) func $_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h461df62acf84f6eeE $_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb0c83dec0ac3155aE $_ZN3std5alloc24default_alloc_error_hook17hef43e042cb81a197E $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd6c44c8aad833069E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hd0125056a58a9d07E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h432834db7addc189E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h84d50ae8dad40cf4E $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h026e818ddc338470E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h6da39948fc946280E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h1495d35c0bd32143E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0c12f80ec16ca08aE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h763a53a5df734321E $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$GT$17hb7ebe08b18c9eae7E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf445004df805b183E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h546a951093a215e1E $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h2df9333c52f98cffE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b5449506b434641E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h18d155f6a424e025E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc696a1dbff47a71E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h6dd690ff3fa2a314E $_ZN4core3ops8function6FnOnce9call_once17h52dbb222e6702dbcE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h032077806f79c721E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4056574f479b5867E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd2f21153357bb9fE $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ecce93d9e28ad51E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h8f1945b60c08bb45E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3217d8680ef6475dE $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hf1ff84e211dd91ceE $_ZN4core3fmt5Write10write_char17hb80e80132c950cd0E $_ZN4core3fmt5Write9write_fmt17h3633fbe7ddbebc9dE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h8612e4f4711225a1E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h6fab11ee0269f2feE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hed44fd905acf524aE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h56a8e5fcb7490a9dE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h329d65fbd7e00db2E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha7b646bc16fb1f08E)
    (data $.rodata (i32.const 1048576) "src\5clib.rs\00\00\00\00\10\00\0a\00\00\00\11\00\00\00\01\00\00\00\00\00\00\00attempt to add with overflow/rustc/02072b482a8b5357f7fb5e5637444ae30e423c40/library/alloc/src/raw_vec.rs<\00\10\00L\00\00\00e\01\00\00\09\00\00\00\00\00\00\00\00\00\00\00attempt to divide by zeroTried to shrink to a larger capacity\00\00\00<\00\10\00L\00\00\00\a2\01\00\00\09\00\00\00called `Result::unwrap()` on an `Err` value\00\01\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00target\5cbindgen\5corigin\5csrc\5clib.rs,\01\10\00 \00\00\00\0f\00\00\00\16\00\00\00\00\00\00\00attempt to add with overflow,\01\10\00 \00\00\00\10\00\00\00\1f\00\00\00target\5cbindgen\5ccache\5csrc\5clib.rs\00\8c\01\10\00\1f\00\00\00\0f\00\00\00\11\00\00\00\00\00\00\00attempt to add with overflowinvalid enum discriminant\00\00\00\dc\01\10\00\19\00\00\00\8c\01\10\00\1f\00\00\00\16\00\00\00\12\00\00\00\8c\01\10\00\1f\00\00\00\12\00\00\00\1e\00\00\00\8c\01\10\00\1f\00\00\00\14\00\00\00'\00\00\00invalid args/rustc/02072b482a8b5357f7fb5e5637444ae30e423c40/library/core/src/fmt/mod.rs\00<\02\10\00K\00\00\00k\01\00\00\0d\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00called `Option::unwrap()` on a `None` value\00\01\00\00\00\00\00\00\00library/std/src/panicking.rs\e4\02\10\00\1c\00\00\00\f0\01\00\00\1f\00\00\00\e4\02\10\00\1c\00\00\00\f1\01\00\00\1e\00\00\00\08\00\00\00\10\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\0e\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00x\03\10\00\1c\00\00\00\fd\01\00\00\05\00\00\00FromUtf8Errorbytes\00\00\10\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00error\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\13\00\00\00..\00\00\f4\03\10\00\02\00\00\00called `Option::unwrap()` on a `None` value\00\1a\00\00\00\00\00\00\00\01\00\00\00\1b\00\00\00index out of bounds: the len is  but the index is \00\00<\04\10\00 \00\00\00\5c\04\10\00\12\00\00\00`: \00\f4\03\10\00\00\00\00\00\81\04\10\00\02\00\00\00\1a\00\00\00\0c\00\00\00\04\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00    library/core/src/fmt/builders.rs\b0\04\10\00 \00\00\00/\00\00\00!\00\00\00\b0\04\10\00 \00\00\000\00\00\00\12\00\00\00 {\0a,\0a,  { } }(\0a(,)\0a[\1a\00\00\00\04\00\00\00\04\00\00\00\1f\00\00\00]library/core/src/fmt/num.rs\15\05\10\00\1b\00\00\00e\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00\1a\00\00\00\04\00\00\00\04\00\00\00 \00\00\00!\00\00\00\22\00\00\00library/core/src/slice/memchr.rs$\06\10\00 \00\00\00[\00\00\00\05\00\00\00range start index  out of range for slice of length T\06\10\00\12\00\00\00f\06\10\00\22\00\00\00range end index \98\06\10\00\10\00\00\00f\06\10\00\22\00\00\00slice index starts at  but ends at \00\b8\06\10\00\16\00\00\00\ce\06\10\00\0d\00\00\00library/core/src/str/validations.rs\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00\00\ec\06\10\00#\00\00\00\1e\01\00\00\11\00\00\00[...]byte index  is out of bounds of `\00\00%\08\10\00\0b\00\00\000\08\10\00\16\00\00\00\80\04\10\00\01\00\00\00begin <= end ( <= ) when slicing `\00\00`\08\10\00\0e\00\00\00n\08\10\00\04\00\00\00r\08\10\00\10\00\00\00\80\04\10\00\01\00\00\00 is not a char boundary; it is inside  (bytes ) of `%\08\10\00\0b\00\00\00\a4\08\10\00&\00\00\00\ca\08\10\00\08\00\00\00\d2\08\10\00\06\00\00\00\80\04\10\00\01\00\00\00library/core/src/unicode/printable.rs\00\00\00\00\09\10\00%\00\00\00\0a\00\00\00\1c\00\00\00\00\09\10\00%\00\00\00\1a\00\00\006\00\00\00\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\af\7f\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\09\81\1b\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\16\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1M\03\80\a4\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\f2\9d\037\09\81\5c\14\80\b8\08\80\cb\05\0a\18;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\04k\02\af\03\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\bf\ee\efZb\f4\fc\ff\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bNC\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a6,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\84/\8f\d1\82G\a1\b9\829\07*\04\5c\06&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\e7\813-\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\92`G\09t<\80\f6\0as\08p\15F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\80\e1+\80\d5-\03\1a\04\02\81@\1f\11:\05\01\84\e0\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\05\10\03\0d\03t\0cY\07\0c\04\01\0f\0c\048\08\0a\06(\08\22N\81T\0c\15\03\05\03\07\09\1d\03\0b\05\06\0a\0a\06\08\08\07\09\80\cb%\0a\84\06library/core/src/unicode/unicode_data.rs\00\00\00\b1\0e\10\00(\00\00\00K\00\00\00(\00\00\00\b1\0e\10\00(\00\00\00W\00\00\00\16\00\00\00\b1\0e\10\00(\00\00\00R\00\00\00>\00\00\00\1a\00\00\00\04\00\00\00\04\00\00\00#\00\00\00SomeNoneUtf8Errorvalid_up_toerror_len\00\00\00\1a\00\00\00\04\00\00\00\04\00\00\00$\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef,\a0+*0 ,o\a6\e0,\02\a8`-\1e\fb`.\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\a190\1c\e1G\f3\1e!L\f0j\e1OOo!P\9d\bc\a1P\00\cfaQe\d1\a1Q\00\da!R\00\e0\e1S0\e1aU\ae\e2\a1V\d0\e8\e1V \00nW\f0\01\ffW\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03<\08*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\02\1e\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00.\02\17\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\01=\04\00\07m\07\00`\80\f0\00")
  )
  (import "cache-0.1.0" (instance (;0;) (type 4)))
  (import "backend-0.1.0" (instance (;1;) (type 6)))
  (module (;1;)
    (type (;0;) (func (param i32 i32 i32)))
    (type (;1;) (func (param i32 i32 i32 i32)))
    (type (;2;) (func (param i32 i32 i32)))
    (func (;0;) (type 0) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      i32.const 0
      call_indirect (type 0)
    )
    (func (;1;) (type 1) (param i32 i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 1
      call_indirect (type 1)
    )
    (func (;2;) (type 2) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      i32.const 2
      call_indirect (type 2)
    )
    (table (;0;) 3 3 funcref)
    (export "0" (func 0))
    (export "1" (func 1))
    (export "2" (func 2))
    (export "$imports" (table 0))
  )
  (module (;2;)
    (type (;0;) (func (param i32 i32 i32)))
    (type (;1;) (func (param i32 i32 i32 i32)))
    (type (;2;) (func (param i32 i32 i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 1)))
    (import "" "2" (func (;2;) (type 2)))
    (import "" "$imports" (table (;0;) 3 3 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2)
  )
  (instance (;2;) (instantiate (module 1)))
  (alias export (instance 2) "0" (func (;0;)))
  (alias export (instance 2) "1" (func (;1;)))
  (alias export (instance 2) "2" (func (;2;)))
  (instance (;3;) core (export "get" (func 0)) (export "put" (func 1)))
  (instance (;4;) core (export "fetch" (func 2)))
  (instance (;5;) (instantiate (module 0) (with "cache-0.1.0" (instance 3)) (with "backend-0.1.0" (instance 4))))
  (alias export (instance 2) "$imports" (table (;0;)))
  (alias export (instance 0) "get" (func (;3;)))
  (alias export (instance 0) "put" (func (;4;)))
  (alias export (instance 1) "fetch" (func (;5;)))
  (func (;6;) (canon.lower utf8 (into (instance 5)) (func 3)))
  (func (;7;) (canon.lower utf8 (into (instance 5)) (func 4)))
  (func (;8;) (canon.lower utf8 (into (instance 5)) (func 5)))
  (instance (;6;) core (export "$imports" (table 0)) (export "0" (func 6)) (export "1" (func 7)) (export "2" (func 8)))
  (instance (;7;) (instantiate (module 2) (with "" (instance 6))))
  (alias export (instance 5) "backend-0.1.0#fetch" (func (;9;)))
  (func (;10;) (canon.lift (type 5) utf8 (into (instance 5)) (func 9)))
  (instance (;8;) (export "fetch" (func 10)))
  (export "backend-0.1.0" (instance 8))
)
