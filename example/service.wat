(component
  (type (;0;) (list u8))
  (type (;1;) (option 0))
  (type (;2;) (func (param "key" string) (result 1)))
  (type (;3;) (func (param "key" string) (param "value" 0)))
  (type (;4;) 
    (instance
      (alias outer 1 2 (type (;0;)))
      (export "get" (func (type 0)))
      (alias outer 1 3 (type (;1;)))
      (export "put" (func (type 1)))
    )
  )
  (type (;5;) (func (param "url" string) (result 0)))
  (type (;6;) 
    (instance
      (alias outer 1 5 (type (;0;)))
      (export "fetch" (func (type 0)))
    )
  )
  (import "cache-0.1.0" (instance (;0;) (type 4)))
  (import "backend-0.1.0" (instance (;1;) (type 6)))
  (core module (;0;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32 i32 i32) (result i32)))
    (type (;2;) (func (param i32 i32) (result i32)))
    (type (;3;) (func (param i32 i32 i32)))
    (type (;4;) (func (param i32 i32 i32 i32)))
    (type (;5;) (func (param i32) (result i32)))
    (type (;6;) (func (param i32)))
    (type (;7;) (func (param i32 i32 i32 i32 i32)))
    (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;9;) (func (param i32 i32 i32 i32 i32 i32 i32)))
    (type (;10;) (func))
    (type (;11;) (func (result i32)))
    (type (;12;) (func (param i32) (result i64)))
    (type (;13;) (func (param i32 i32 i32 i32 i32) (result i32)))
    (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
    (type (;15;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
    (type (;16;) (func (param i32 i32 i32) (result i64)))
    (type (;17;) (func (param i64 i32 i32) (result i32)))
    (import "backend-0.1.0" "fetch" (func $_ZN6origin5fetch10wit_import17hc12acca99bc23a90E (;0;) (type 3)))
    (import "cache-0.1.0" "get" (func $_ZN5cache3get10wit_import17h15f1355f653503e4E (;1;) (type 3)))
    (import "cache-0.1.0" "put" (func $_ZN5cache3put10wit_import17h593ceb26aaf18a7eE (;2;) (type 4)))
    (func $_ZN4core10intrinsics19copy_nonoverlapping17h2efef7c35a3abd5fE (;3;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core6option15Option$LT$T$GT$5ok_or17heb59d83de6d1ab5bE (;4;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha81f2d0cf0b2e33fE (;5;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf530fe037ea55f88E (;6;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h685993b7d0e1f939E (;7;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9cd1d1df8a6a7849E (;8;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3a6cc7dca37e40aaE (;9;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9cd1d1df8a6a7849E
      local.set 4
      local.get 4
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h59e26bf97020ac61E
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
    (func $_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h57083dc03c185321E (;10;) (type 3) (param i32 i32 i32)
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
    (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hec5d20afb26f257bE (;11;) (type 5) (param i32) (result i32)
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
      call $_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h085884b28cca9c6eE
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
    (func $_ZN4core3mem6forget17h03e681016c96e61aE (;12;) (type 0) (param i32 i32)
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
    (func $_ZN5alloc7raw_vec14handle_reserve17hebc45ad616f7ce5aE (;13;) (type 6) (param i32)
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
      call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h74474b2b627b02a1E
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
        call $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E
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
      call $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E
      unreachable
      unreachable
    )
    (func $_ZN4core3fmt9Arguments6new_v117h3862c6b75dfd4a54E (;14;) (type 7) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 64
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=48
      local.get 7
      local.get 2
      i32.store offset=52
      local.get 7
      local.get 3
      i32.store offset=56
      local.get 7
      local.get 4
      i32.store offset=60
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
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1
        local.set 20
        local.get 7
        local.get 20
        i32.store8 offset=15
      end
      local.get 7
      i32.load8_u offset=15
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
        i32.store offset=40
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 7
        i32.load offset=40
        local.set 25
        local.get 7
        i32.load offset=44
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
        i32.const 64
        local.set 27
        local.get 7
        local.get 27
        i32.add
        local.set 28
        local.get 28
        global.set $__stack_pointer
        return
      end
      i32.const 16
      local.set 29
      local.get 7
      local.get 29
      i32.add
      local.set 30
      local.get 30
      local.set 31
      i32.const 1048588
      local.set 32
      local.get 32
      local.set 33
      i32.const 1
      local.set 34
      i32.const 1048596
      local.set 35
      local.get 35
      local.set 36
      i32.const 0
      local.set 37
      local.get 31
      local.get 33
      local.get 34
      local.get 36
      local.get 37
      call $_ZN4core3fmt9Arguments6new_v117h3862c6b75dfd4a54E
      i32.const 16
      local.set 38
      local.get 7
      local.get 38
      i32.add
      local.set 39
      local.get 39
      local.set 40
      i32.const 1048672
      local.set 41
      local.get 41
      local.set 42
      local.get 40
      local.get 42
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17h1518b2c914ff7222E (;15;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hb6c4dbce4fb3bb03E
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
      call $_ZN4core5slice3raw18from_raw_parts_mut17h94af3ff140a59e46E
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
      call $_ZN4core3ptr4read17h88e8b813c7726b09E
      i32.const 8
      local.set 26
      local.get 6
      local.get 26
      i32.add
      local.set 27
      local.get 27
      local.get 19
      local.get 18
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h4ae789ebd4834622E
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hb6c4dbce4fb3bb03E (;16;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9cd1d1df8a6a7849E
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h368efc3dfd79da92E (;17;) (type 0) (param i32 i32)
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
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h2f4d1f71b57a124dE
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
        call $_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3a6cc7dca37e40aaE
        local.set 26
        local.get 26
        call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hec5d20afb26f257bE
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h3e52a6a1a58c6a96E (;18;) (type 0) (param i32 i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h07e3624719ee9f18E
      i32.const 8
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.set 10
      local.get 10
      call $_ZN5alloc7raw_vec14handle_reserve17hebc45ad616f7ce5aE
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h07e3624719ee9f18E (;19;) (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 192
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=144
      local.get 5
      local.get 2
      i32.store offset=148
      local.get 5
      local.get 1
      i32.store offset=188
      i32.const 1
      local.set 6
      block  ;; label = @1
        block  ;; label = @2
          local.get 6
          br_if 0 (;@2;)
          i32.const -1
          local.set 7
          local.get 5
          local.get 7
          i32.store offset=184
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.set 8
        local.get 5
        local.get 8
        i32.store offset=184
      end
      local.get 5
      i32.load offset=184
      local.set 9
      local.get 2
      local.set 10
      local.get 9
      local.set 11
      local.get 10
      local.get 11
      i32.le_u
      local.set 12
      i32.const -1
      local.set 13
      local.get 12
      local.get 13
      i32.xor
      local.set 14
      i32.const 1
      local.set 15
      local.get 14
      local.get 15
      i32.and
      local.set 16
      block  ;; label = @1
        block  ;; label = @2
          local.get 16
          br_if 0 (;@2;)
          i32.const 72
          local.set 17
          local.get 5
          local.get 17
          i32.add
          local.set 18
          local.get 18
          local.set 19
          local.get 19
          local.get 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h368efc3dfd79da92E
          br 1 (;@1;)
        end
        i32.const 24
        local.set 20
        local.get 5
        local.get 20
        i32.add
        local.set 21
        local.get 21
        local.set 22
        i32.const 1048724
        local.set 23
        local.get 23
        local.set 24
        i32.const 1
        local.set 25
        i32.const 1048732
        local.set 26
        local.get 26
        local.set 27
        i32.const 0
        local.set 28
        local.get 22
        local.get 24
        local.get 25
        local.get 27
        local.get 28
        call $_ZN4core3fmt9Arguments6new_v117h3862c6b75dfd4a54E
        i32.const 24
        local.set 29
        local.get 5
        local.get 29
        i32.add
        local.set 30
        local.get 30
        local.set 31
        i32.const 1048808
        local.set 32
        local.get 32
        local.set 33
        local.get 31
        local.get 33
        call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
        unreachable
      end
      local.get 5
      i32.load offset=72
      local.set 34
      i32.const 0
      local.set 35
      local.get 34
      local.set 36
      local.get 35
      local.set 37
      local.get 36
      local.get 37
      i32.eq
      local.set 38
      i32.const 0
      local.set 39
      i32.const 1
      local.set 40
      i32.const 1
      local.set 41
      local.get 38
      local.get 41
      i32.and
      local.set 42
      local.get 39
      local.get 40
      local.get 42
      select
      local.set 43
      i32.const 1
      local.set 44
      local.get 43
      local.set 45
      local.get 44
      local.set 46
      local.get 45
      local.get 46
      i32.eq
      local.set 47
      i32.const 1
      local.set 48
      local.get 47
      local.get 48
      i32.and
      local.set 49
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 49
            i32.eqz
            br_if 0 (;@3;)
            i32.const 72
            local.set 50
            local.get 5
            local.get 50
            i32.add
            local.set 51
            local.get 51
            local.set 52
            i32.const 88
            local.set 53
            local.get 5
            local.get 53
            i32.add
            local.set 54
            local.get 54
            local.set 55
            local.get 52
            i64.load align=4
            local.set 56
            local.get 55
            local.get 56
            i64.store align=4
            i32.const 8
            local.set 57
            local.get 55
            local.get 57
            i32.add
            local.set 58
            local.get 52
            local.get 57
            i32.add
            local.set 59
            local.get 59
            i32.load
            local.set 60
            local.get 58
            local.get 60
            i32.store
            i32.const 56
            local.set 61
            local.get 5
            local.get 61
            i32.add
            local.set 62
            local.get 62
            local.set 63
            i32.const 88
            local.set 64
            local.get 5
            local.get 64
            i32.add
            local.set 65
            local.get 65
            local.set 66
            local.get 66
            i64.load align=4
            local.set 67
            local.get 63
            local.get 67
            i64.store align=4
            i32.const 8
            local.set 68
            local.get 63
            local.get 68
            i32.add
            local.set 69
            local.get 66
            local.get 68
            i32.add
            local.set 70
            local.get 70
            i32.load
            local.set 71
            local.get 69
            local.get 71
            i32.store
            local.get 5
            i32.load offset=56
            local.set 72
            local.get 5
            local.get 72
            i32.store offset=152
            local.get 5
            i32.load offset=60
            local.set 73
            local.get 5
            i32.load offset=64
            local.set 74
            local.get 5
            local.get 73
            i32.store offset=48
            local.get 5
            local.get 74
            i32.store offset=52
            br 1 (;@2;)
          end
          i32.const 0
          local.set 75
          local.get 0
          local.get 75
          i32.store
          br 1 (;@1;)
        end
        i32.const 0
        local.set 76
        local.get 2
        local.get 76
        i32.shl
        local.set 77
        local.get 5
        local.get 77
        i32.store offset=156
        i32.const 48
        local.set 78
        local.get 5
        local.get 78
        i32.add
        local.set 79
        local.get 79
        local.set 80
        local.get 80
        call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
        local.set 81
        i32.const 16
        local.set 82
        local.get 5
        local.get 82
        i32.add
        local.set 83
        local.get 83
        local.get 77
        local.get 81
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h2f4d1f71b57a124dE
        local.get 5
        i32.load offset=16
        local.set 84
        local.get 5
        i32.load offset=20
        local.set 85
        local.get 5
        local.get 85
        i32.store offset=108
        local.get 5
        local.get 84
        i32.store offset=104
        local.get 5
        i32.load offset=48
        local.set 86
        local.get 5
        i32.load offset=52
        local.set 87
        local.get 5
        i32.load offset=104
        local.set 88
        local.get 5
        i32.load offset=108
        local.set 89
        i32.const 8
        local.set 90
        local.get 5
        local.get 90
        i32.add
        local.set 91
        local.get 91
        local.get 1
        local.get 72
        local.get 86
        local.get 87
        local.get 88
        local.get 89
        call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h03e6eba116d74239E
        local.get 5
        i32.load offset=12
        local.set 92
        local.get 5
        i32.load offset=8
        local.set 93
        i32.const 104
        local.set 94
        local.get 5
        local.get 94
        i32.add
        local.set 95
        local.get 95
        local.set 96
        local.get 5
        local.get 96
        i32.store offset=140
        local.get 5
        i32.load offset=140
        local.set 97
        i32.const 128
        local.set 98
        local.get 5
        local.get 98
        i32.add
        local.set 99
        local.get 99
        local.set 100
        local.get 100
        local.get 93
        local.get 92
        local.get 97
        call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d5c43f1297aea4bE
        i32.const 112
        local.set 101
        local.get 5
        local.get 101
        i32.add
        local.set 102
        local.get 102
        local.set 103
        i32.const 128
        local.set 104
        local.get 5
        local.get 104
        i32.add
        local.set 105
        local.get 105
        local.set 106
        local.get 103
        local.get 106
        call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h48189fcdfc6d6affE
        local.get 5
        i32.load offset=112
        local.set 107
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 107
              br_table 0 (;@4;) 1 (;@3;) 0 (;@4;)
            end
            local.get 5
            i32.load offset=116
            local.set 108
            local.get 5
            i32.load offset=120
            local.set 109
            local.get 5
            local.get 108
            i32.store offset=168
            local.get 5
            local.get 109
            i32.store offset=172
            local.get 5
            local.get 108
            i32.store offset=176
            local.get 5
            local.get 109
            i32.store offset=180
            local.get 1
            local.get 108
            local.get 109
            local.get 2
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h5101418a91c09ec4E
            br 1 (;@2;)
          end
          local.get 5
          i32.load offset=116
          local.set 110
          local.get 5
          i32.load offset=120
          local.set 111
          local.get 5
          local.get 110
          i32.store offset=160
          local.get 5
          local.get 111
          i32.store offset=164
          i32.const 1048824
          local.set 112
          local.get 112
          local.set 113
          local.get 0
          local.get 110
          local.get 111
          local.get 113
          call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc9c7396c9cf9fa89E
          br 1 (;@1;)
        end
        i32.const 0
        local.set 114
        local.get 0
        local.get 114
        i32.store
      end
      i32.const 192
      local.set 115
      local.get 5
      local.get 115
      i32.add
      local.set 116
      local.get 116
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17h5101418a91c09ec4E (;20;) (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
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
      local.get 0
      i32.store offset=12
      local.get 6
      local.get 1
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 6
      local.get 3
      i32.store offset=28
      local.get 1
      local.get 2
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf160ce23cff5f687E
      local.set 7
      local.get 7
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE
      local.set 8
      local.get 8
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h59e26bf97020ac61E
      local.set 9
      local.get 0
      local.get 9
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
      i32.const 32
      local.set 10
      local.get 6
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink28_$u7b$$u7b$closure$u7d$$u7d$17h2fffa7232735f2bcE (;21;) (type 0) (param i32 i32)
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
    (func $_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h0cfc32530979daaaE (;22;) (type 3) (param i32 i32 i32)
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
      call $_ZN5alloc11collections15TryReserveError4kind17h4a18cfce757b9db6E
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
    (func $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h2f4d1f71b57a124dE (;23;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb219a3dff289075dE
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
    (func $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE (;24;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E (;25;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3num7nonzero12NonZeroUsize3get17h15f05c2d2a8f2c35E
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
    (func $_ZN4core5alloc6layout6Layout8dangling17hf7b68bb82a40d3bcE (;26;) (type 5) (param i32) (result i32)
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
      call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
      local.set 4
      local.get 4
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdd8820395eac8018E
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
    (func $_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h544853589dd4ee3dE (;27;) (type 0) (param i32 i32)
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
    (func $_ZN5alloc5boxed70Box$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$C$A$GT$11assume_init17ha8924e4895d3a1b7E (;28;) (type 3) (param i32 i32 i32)
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
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h886afdf2058509f1E
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
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hf0f4550449fc471bE
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
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h886afdf2058509f1E (;29;) (type 3) (param i32 i32 i32)
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
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17hb05bc3f423e2b888E
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h685993b7d0e1f939E
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
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hf0f4550449fc471bE (;30;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17hf530fe037ea55f88E
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
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17h4ae789ebd4834622E (;31;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17ha81f2d0cf0b2e33fE
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
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17hb05bc3f423e2b888E (;32;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr4read17h88e8b813c7726b09E
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
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h01fb2a8155fad9dcE
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
      call $_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h57083dc03c185321E
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
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17h01fb2a8155fad9dcE (;33;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h685993b7d0e1f939E
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
    (func $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hb219a3dff289075dE (;34;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3num7nonzero12NonZeroUsize3get17h15f05c2d2a8f2c35E (;35;) (type 5) (param i32) (result i32)
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
    (func $_ZN5alloc5alloc5alloc17hfc10bd98c814647fE (;36;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
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
      call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
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
    (func $_ZN5alloc5alloc7dealloc17h4b0bbdfc8d0b4041E (;37;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
      local.set 7
      local.get 5
      local.set 8
      local.get 8
      call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
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
    (func $_ZN5alloc5alloc7realloc17he59fff7b2a74a382E (;38;) (type 8) (param i32 i32 i32 i32) (result i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
      local.set 8
      local.get 6
      local.set 9
      local.get 9
      call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
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
    (func $_ZN5alloc5alloc12alloc_zeroed17h55d5b6abf6c994ffE (;39;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
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
      call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
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
    (func $_ZN5alloc5alloc6Global10alloc_impl17h58cf899691350bc9E (;40;) (type 7) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
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
                call $_ZN4core5alloc6layout6Layout8dangling17hf7b68bb82a40d3bcE
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
                  call $_ZN5alloc5alloc5alloc17hfc10bd98c814647fE
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
                call $_ZN5alloc5alloc12alloc_zeroed17h55d5b6abf6c994ffE
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
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17he230f33c33201246E
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
          call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h4b6d1c892dc14da8E
          local.set 30
          local.get 30
          call $_ZN4core6option15Option$LT$T$GT$5ok_or17heb59d83de6d1ab5bE
          local.set 31
          local.get 31
          call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha3a2dfa86a684f4fE
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
              call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17he230f33c33201246E
              local.get 7
              i32.load offset=20
              local.set 38
              local.get 7
              i32.load offset=16
              local.set 39
              br 1 (;@3;)
            end
            i32.const 1048916
            local.set 40
            i32.const 24
            local.set 41
            local.get 7
            local.get 41
            i32.add
            local.set 42
            local.get 42
            local.get 40
            call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hfc26c524f946c61dE
            local.get 7
            i32.load offset=24
            local.set 43
            local.get 7
            i32.load offset=28
            local.set 44
            local.get 7
            local.get 44
            i32.store offset=44
            local.get 7
            local.get 43
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
      local.set 45
      local.get 7
      i32.load offset=44
      local.set 46
      local.get 0
      local.get 46
      i32.store offset=4
      local.get 0
      local.get 45
      i32.store
      i32.const 80
      local.set 47
      local.get 7
      local.get 47
      i32.add
      local.set 48
      local.get 48
      global.set $__stack_pointer
      return
      unreachable
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h6a7275089cb9bd59E (;41;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN5alloc5alloc6Global10alloc_impl17h58cf899691350bc9E
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
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h820dfe5fd2a9773cE (;42;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
      local.set 8
      block  ;; label = @1
        block  ;; label = @2
          local.get 8
          br_if 0 (;@2;)
          br 1 (;@1;)
        end
        local.get 1
        call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE
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
        call $_ZN5alloc5alloc7dealloc17h4b0bbdfc8d0b4041E
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
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h03e6eba116d74239E (;43;) (type 9) (param i32 i32 i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
      call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
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
                call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h820dfe5fd2a9773cE
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
              call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
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
              call $_ZN4core5alloc6layout6Layout5align17h53b688efa7be39b8E
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
                  call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h6a7275089cb9bd59E
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
                call $_ZN4core5alloc6layout6Layout4size17h3b9dc07a19a1fc8aE
                drop
                local.get 2
                call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE
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
                call $_ZN5alloc5alloc7realloc17he59fff7b2a74a382E
                local.set 47
                local.get 9
                local.get 47
                i32.store offset=128
                local.get 47
                call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h4b6d1c892dc14da8E
                local.set 48
                local.get 48
                call $_ZN4core6option15Option$LT$T$GT$5ok_or17heb59d83de6d1ab5bE
                local.set 49
                local.get 49
                call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha3a2dfa86a684f4fE
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
                    call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17he230f33c33201246E
                    local.get 9
                    i32.load offset=20
                    local.set 56
                    local.get 9
                    i32.load offset=16
                    local.set 57
                    br 1 (;@6;)
                  end
                  i32.const 1048932
                  local.set 58
                  i32.const 24
                  local.set 59
                  local.get 9
                  local.get 59
                  i32.add
                  local.set 60
                  local.get 60
                  local.get 58
                  call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hfc26c524f946c61dE
                  local.get 9
                  i32.load offset=24
                  local.set 61
                  local.get 9
                  i32.load offset=28
                  local.set 62
                  local.get 9
                  local.get 62
                  i32.store offset=76
                  local.get 9
                  local.get 61
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
              local.set 63
              local.get 9
              local.get 63
              i32.add
              local.set 64
              local.get 64
              local.get 39
              local.get 38
              call $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f91c6e7a36ddfa9E
              local.get 9
              i32.load offset=40
              local.set 65
              local.get 9
              i32.load offset=44
              local.set 66
              local.get 9
              local.get 66
              i32.store offset=92
              local.get 9
              local.get 65
              i32.store offset=88
              local.get 9
              i32.load offset=88
              local.set 67
              local.get 67
              i32.eqz
              local.set 68
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 68
                    br_table 0 (;@7;) 1 (;@6;) 0 (;@7;)
                  end
                  local.get 9
                  i32.load offset=88
                  local.set 69
                  local.get 9
                  i32.load offset=92
                  local.set 70
                  local.get 9
                  local.get 69
                  i32.store offset=144
                  local.get 9
                  local.get 70
                  i32.store offset=148
                  local.get 9
                  local.get 69
                  i32.store offset=152
                  local.get 9
                  local.get 70
                  i32.store offset=156
                  local.get 2
                  call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE
                  local.set 71
                  br 1 (;@5;)
                end
                i32.const 1048948
                local.set 72
                i32.const 32
                local.set 73
                local.get 9
                local.get 73
                i32.add
                local.set 74
                local.get 74
                local.get 72
                call $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hfc26c524f946c61dE
                local.get 9
                i32.load offset=32
                local.set 75
                local.get 9
                i32.load offset=36
                local.set 76
                local.get 9
                local.get 76
                i32.store offset=76
                local.get 9
                local.get 75
                i32.store offset=72
                br 3 (;@2;)
              end
              local.get 69
              local.get 70
              call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hed800f3f26633399E
              local.set 77
              local.get 71
              local.get 77
              local.get 33
              call $_ZN4core10intrinsics19copy_nonoverlapping17h2efef7c35a3abd5fE
              local.get 9
              i32.load offset=56
              local.set 78
              local.get 9
              i32.load offset=60
              local.set 79
              local.get 1
              local.get 2
              local.get 78
              local.get 79
              call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h820dfe5fd2a9773cE
              local.get 9
              local.get 69
              i32.store offset=72
              local.get 9
              local.get 70
              i32.store offset=76
              br 1 (;@3;)
            end
            i32.const 64
            local.set 80
            local.get 9
            local.get 80
            i32.add
            local.set 81
            local.get 81
            local.set 82
            local.get 82
            call $_ZN4core5alloc6layout6Layout8dangling17hf7b68bb82a40d3bcE
            local.set 83
            i32.const 0
            local.set 84
            i32.const 8
            local.set 85
            local.get 9
            local.get 85
            i32.add
            local.set 86
            local.get 86
            local.get 83
            local.get 84
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17he230f33c33201246E
            local.get 9
            i32.load offset=12
            local.set 87
            local.get 9
            i32.load offset=8
            local.set 88
            local.get 9
            local.get 88
            i32.store offset=72
            local.get 9
            local.get 87
            i32.store offset=76
          end
          br 1 (;@1;)
        end
      end
      local.get 9
      i32.load offset=72
      local.set 89
      local.get 9
      i32.load offset=76
      local.set 90
      local.get 0
      local.get 90
      i32.store offset=4
      local.get 0
      local.get 89
      i32.store
      i32.const 160
      local.set 91
      local.get 9
      local.get 91
      i32.add
      local.set 92
      local.get 92
      global.set $__stack_pointer
      return
      unreachable
      unreachable
    )
    (func $_ZN4core3ptr8metadata14from_raw_parts17hae9d07ff64938b62E (;44;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr8metadata18from_raw_parts_mut17h1dc5c638fcaf3928E (;45;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr8metadata18from_raw_parts_mut17hc7416744a40043a5E (;46;) (type 3) (param i32 i32 i32)
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
    (func $_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he38509b4ce7a1981E (;47;) (type 10)
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17h3314417941bccdd5E (;48;) (type 5) (param i32) (result i32)
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
      local.get 0
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 1
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          local.get 4
          br_if 0 (;@2;)
          i32.const -1
          local.set 5
          local.get 3
          local.get 5
          i32.store offset=8
          br 1 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 3
        local.get 6
        i32.store offset=8
      end
      local.get 3
      i32.load offset=8
      local.set 7
      local.get 7
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17he35d0221cf1d191dE (;49;) (type 6) (param i32)
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
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$8capacity17h3314417941bccdd5E
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
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h3e52a6a1a58c6a96E
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h379765418d3e1eaaE (;50;) (type 0) (param i32 i32)
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
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17he35d0221cf1d191dE
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
      i32.store offset=92
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
      call $_ZN4core3ptr4read17h45e1dfc8e75a4d09E
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
      i32.store offset=88
      i32.const 24
      local.set 48
      local.get 4
      local.get 48
      i32.add
      local.set 49
      local.get 49
      local.set 50
      local.get 50
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hedd2b235ff63c408E
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17h1518b2c914ff7222E
      local.get 4
      i32.load offset=12
      local.set 54
      local.get 4
      i32.load offset=8
      local.set 55
      local.get 4
      local.get 55
      local.get 54
      call $_ZN5alloc5boxed70Box$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$C$A$GT$11assume_init17ha8924e4895d3a1b7E
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17hedd2b235ff63c408E (;51;) (type 5) (param i32) (result i32)
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h989cd89942707ce1E (;52;) (type 5) (param i32) (result i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hb6c4dbce4fb3bb03E
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 4
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h0121c121fafb5c53E
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9c5d4beefdea4d6dE (;53;) (type 5) (param i32) (result i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hb6c4dbce4fb3bb03E
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 4
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h0121c121fafb5c53E
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
    (func $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0997ae80adf057e3E (;54;) (type 0) (param i32 i32)
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
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h989cd89942707ce1E
      local.set 5
      local.get 1
      i32.load offset=8
      local.set 6
      local.get 4
      local.get 5
      local.get 6
      call $_ZN4core5slice3raw14from_raw_parts17h27681318df45ab96E
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
    (func $_ZN4core3str8converts19from_utf8_unchecked17h2677a0e966a3656bE (;55;) (type 3) (param i32 i32 i32)
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
    (func $_ZN5alloc11collections15TryReserveError4kind17h4a18cfce757b9db6E (;56;) (type 0) (param i32 i32)
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
      call $_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hd874752bb9dc5e9aE
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
    (func $_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hd874752bb9dc5e9aE (;57;) (type 0) (param i32 i32)
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
        call $_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h544853589dd4ee3dE
        local.get 4
        i32.load offset=4
        local.set 12
        local.get 4
        i32.load
        local.set 13
        local.get 11
        call $_ZN4core5clone5Clone5clone17h58fb37ac06be483cE
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
    (func $_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h8a1edb2682b628b5E (;58;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h74474b2b627b02a1E (;59;) (type 0) (param i32 i32)
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
        call $_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h0cfc32530979daaaE
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
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h8d5c43f1297aea4bE (;60;) (type 4) (param i32 i32 i32 i32)
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
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink28_$u7b$$u7b$closure$u7d$$u7d$17h2fffa7232735f2bcE
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
    (func $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7b9943e7f3e8345dE (;61;) (type 3) (param i32 i32 i32)
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
      i32.const 1048964
      local.set 33
      local.get 33
      local.set 34
      i32.const 43
      local.set 35
      i32.const 1049008
      local.set 36
      local.get 36
      local.set 37
      local.get 34
      local.get 35
      local.get 32
      local.get 37
      local.get 2
      call $_ZN4core6result13unwrap_failed17ha62420c192a556daE
      unreachable
      unreachable
    )
    (func $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f91c6e7a36ddfa9E (;62;) (type 3) (param i32 i32 i32)
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
    (func $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h48189fcdfc6d6affE (;63;) (type 0) (param i32 i32)
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
    (func $_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha3a2dfa86a684f4fE (;64;) (type 5) (param i32) (result i32)
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
    (func $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc9c7396c9cf9fa89E (;65;) (type 4) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 6
      i32.load offset=16
      local.set 7
      local.get 6
      i32.load offset=20
      local.set 8
      local.get 6
      local.get 7
      i32.store offset=24
      local.get 6
      local.get 8
      i32.store offset=28
      i32.const 8
      local.set 9
      local.get 6
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.get 7
      local.get 8
      call $_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h8a1edb2682b628b5E
      local.get 6
      i32.load offset=12
      local.set 11
      local.get 6
      i32.load offset=8
      local.set 12
      local.get 0
      local.get 12
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store offset=8
      i32.const 1
      local.set 13
      local.get 0
      local.get 13
      i32.store
      i32.const 32
      local.set 14
      local.get 6
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      return
    )
    (func $_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hfc26c524f946c61dE (;66;) (type 0) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
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
      call $_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17he38509b4ce7a1981E
      i32.const 0
      local.set 5
      local.get 4
      local.get 5
      i32.store offset=8
      local.get 4
      i32.load offset=8
      local.set 6
      local.get 4
      i32.load offset=12
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      i32.const 32
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h65686b5ac63a21f2E (;67;) (type 6) (param i32)
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
      call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2a08324ba0fbd565E
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
    (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2a08324ba0fbd565E (;68;) (type 6) (param i32)
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
      call $_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc235316f66f76f97E
      local.get 0
      call $_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7570d8c9888384e1E
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
    (func $_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc235316f66f76f97E (;69;) (type 6) (param i32)
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
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9c5d4beefdea4d6dE
      local.set 4
      local.get 0
      i32.load offset=8
      local.set 5
      local.get 3
      local.get 4
      local.get 5
      call $_ZN4core3ptr24slice_from_raw_parts_mut17hf11a74c83e22a99eE
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
    (func $_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h7570d8c9888384e1E (;70;) (type 6) (param i32)
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
      call $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d08910969e73e2E
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
    (func $_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h47395b718847d4aeE (;71;) (type 6) (param i32)
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
      call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2a08324ba0fbd565E
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
    (func $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9d08910969e73e2E (;72;) (type 6) (param i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h368efc3dfd79da92E
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
        call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h820dfe5fd2a9773cE
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
    (func $_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h5d893879011f78e7E (;73;) (type 6) (param i32)
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
        call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2a08324ba0fbd565E
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
    (func $_ZN4core5clone5Clone5clone17h58fb37ac06be483cE (;74;) (type 6) (param i32)
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
    (func $_ZN4core3ptr20slice_from_raw_parts17h5105f2c1255dc290E (;75;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h182a78c8016cec55E
      local.set 6
      local.get 5
      local.get 6
      local.get 2
      call $_ZN4core3ptr8metadata14from_raw_parts17hae9d07ff64938b62E
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
    (func $_ZN4core3ptr24slice_from_raw_parts_mut17hb696bd5d0e497c16E (;76;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr8metadata18from_raw_parts_mut17hc7416744a40043a5E
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
    (func $_ZN4core3ptr24slice_from_raw_parts_mut17hf11a74c83e22a99eE (;77;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr8metadata18from_raw_parts_mut17h1dc5c638fcaf3928E
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
    (func $_ZN4core3ptr4read17h45e1dfc8e75a4d09E (;78;) (type 0) (param i32 i32)
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
      i32.store offset=28
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
      i32.store offset=32
      local.get 4
      local.get 10
      i32.store offset=36
      local.get 4
      local.get 9
      i32.store offset=40
      local.get 4
      local.get 10
      i32.store offset=44
      local.get 0
      local.get 10
      i32.store offset=4
      local.get 0
      local.get 9
      i32.store
      return
    )
    (func $_ZN4core3ptr4read17h88e8b813c7726b09E (;79;) (type 6) (param i32)
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
    (func $_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h182a78c8016cec55E (;80;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core5slice3raw14from_raw_parts17h27681318df45ab96E (;81;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core5slice3raw20debug_check_data_len17hefcdefb4d097688dE
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core3ptr20slice_from_raw_parts17h5105f2c1255dc290E
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
    (func $_ZN4core5slice3raw20debug_check_data_len17hefcdefb4d097688dE (;82;) (type 0) (param i32 i32)
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
    (func $_ZN4core5slice3raw18from_raw_parts_mut17h94af3ff140a59e46E (;83;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core5slice3raw20debug_check_data_len17h9e9fe1bcd0c00490E
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core3ptr24slice_from_raw_parts_mut17hb696bd5d0e497c16E
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
    (func $_ZN4core5slice3raw20debug_check_data_len17h9e9fe1bcd0c00490E (;84;) (type 0) (param i32 i32)
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
    (func $_ZN5alloc6string6String9from_utf817hbb20a4574f9e291eE (;85;) (type 0) (param i32 i32)
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
      call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0997ae80adf057e3E
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
      call $_ZN4core3str8converts9from_utf817hf541b0dc2f467004E
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
    (func $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c0ffc721fb95a4bE (;86;) (type 0) (param i32 i32)
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
      call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0997ae80adf057e3E
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
      call $_ZN4core3str8converts19from_utf8_unchecked17h2677a0e966a3656bE
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
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h607ac15535ba3572E (;87;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdd8820395eac8018E (;88;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h4b6d1c892dc14da8E (;89;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h0121c121fafb5c53E
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
        call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdd8820395eac8018E
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
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h34b19e30dad88fa2E (;90;) (type 3) (param i32 i32 i32)
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
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE (;91;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hf160ce23cff5f687E (;92;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h34b19e30dad88fa2E
      local.get 4
      i32.load offset=4
      drop
      local.get 4
      i32.load
      local.set 5
      local.get 5
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdd8820395eac8018E
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
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17he230f33c33201246E (;93;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE
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
      call $_ZN4core3ptr24slice_from_raw_parts_mut17hf11a74c83e22a99eE
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
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h607ac15535ba3572E
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
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h490e0c991297726dE (;94;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h34b19e30dad88fa2E
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
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdd8820395eac8018E
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
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17hed800f3f26633399E (;95;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17h490e0c991297726dE
      local.set 5
      local.get 5
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h770f3edb9092635eE
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
    (func $_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h085884b28cca9c6eE (;96;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9cd1d1df8a6a7849E
      local.set 4
      local.get 4
      call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdd8820395eac8018E
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
    (func $_ZN55_$LT$service..Component$u20$as$u20$backend..Backend$GT$5fetch17h1a5eb47cc524ea20E (;97;) (type 0) (param i32 i32)
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
      call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c0ffc721fb95a4bE
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
      call $_ZN5cache3get17h1297f764e36d0556E
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
          call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h65686b5ac63a21f2E
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
        call $_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h5d893879011f78e7E
        i32.const 16
        local.set 50
        local.get 4
        local.get 50
        i32.add
        local.set 51
        local.get 51
        local.get 1
        call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c0ffc721fb95a4bE
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
        call $_ZN6origin5fetch17h8a381fb0ecd9acf9E
        i32.const 8
        local.set 57
        local.get 4
        local.get 57
        i32.add
        local.set 58
        local.get 58
        local.get 1
        call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4c0ffc721fb95a4bE
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
        call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0997ae80adf057e3E
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
        call $_ZN5cache3put17h0880af8c01767c92E
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
        call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h65686b5ac63a21f2E
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
    (func $backend-0.1.0#fetch (;98;) (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
      i32.store offset=96
      local.get 4
      local.get 1
      i32.store offset=100
      local.get 4
      local.get 1
      i32.store offset=104
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
      call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h22e03b8a71105067E
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
      call $_ZN5alloc6string6String9from_utf817hbb20a4574f9e291eE
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
      i32.const 1049036
      local.set 20
      local.get 20
      local.set 21
      local.get 16
      local.get 19
      local.get 21
      call $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7b9943e7f3e8345dE
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
      call $_ZN55_$LT$service..Component$u20$as$u20$backend..Backend$GT$5fetch17h1a5eb47cc524ea20E
      i32.const 1053544
      local.set 28
      local.get 28
      local.set 29
      i32.const 8
      local.set 30
      local.get 29
      local.get 30
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h52ffbb7cd5db0eaeE
      local.set 31
      local.get 4
      local.get 31
      i32.store offset=108
      i32.const 80
      local.set 32
      local.get 4
      local.get 32
      i32.add
      local.set 33
      local.get 33
      local.set 34
      i32.const 8
      local.set 35
      local.get 4
      local.get 35
      i32.add
      local.set 36
      local.get 36
      local.set 37
      local.get 37
      i64.load align=4
      local.set 38
      local.get 34
      local.get 38
      i64.store align=4
      i32.const 8
      local.set 39
      local.get 34
      local.get 39
      i32.add
      local.set 40
      local.get 37
      local.get 39
      i32.add
      local.set 41
      local.get 41
      i32.load
      local.set 42
      local.get 40
      local.get 42
      i32.store
      i32.const 80
      local.set 43
      local.get 4
      local.get 43
      i32.add
      local.set 44
      local.get 4
      local.get 44
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h379765418d3e1eaaE
      local.get 4
      i32.load offset=4
      local.set 45
      local.get 4
      i32.load
      local.set 46
      local.get 4
      local.get 46
      i32.store offset=112
      local.get 4
      local.get 45
      i32.store offset=116
      local.get 46
      local.get 45
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb2a1e64ce7d4d818E
      local.set 47
      local.get 4
      local.get 47
      i32.store offset=120
      local.get 4
      local.get 45
      i32.store offset=124
      local.get 46
      local.get 45
      call $_ZN4core3mem6forget17h03e681016c96e61aE
      i32.const 4
      local.set 48
      local.get 31
      local.get 48
      i32.add
      local.set 49
      local.get 49
      local.get 31
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
            local.get 45
            i32.store
            i32.const 0
            local.set 53
            local.get 31
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
          i32.const 1049056
          local.set 57
          local.get 57
          local.set 58
          i32.const 28
          local.set 59
          i32.const 1049036
          local.set 60
          local.get 60
          local.set 61
          local.get 58
          local.get 59
          local.get 61
          call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
          unreachable
        end
        local.get 54
        local.get 47
        i32.store
        i32.const 128
        local.set 62
        local.get 4
        local.get 62
        i32.add
        local.set 63
        local.get 63
        global.set $__stack_pointer
        local.get 31
        return
      end
      i32.const 1049056
      local.set 64
      local.get 64
      local.set 65
      i32.const 28
      local.set 66
      i32.const 1049036
      local.set 67
      local.get 67
      local.set 68
      local.get 65
      local.get 66
      local.get 68
      call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
      unreachable
    )
    (func $__rust_alloc (;99;) (type 2) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc
      local.set 2
      local.get 2
      return
    )
    (func $__rust_dealloc (;100;) (type 3) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      call $__rdl_dealloc
      return
    )
    (func $__rust_realloc (;101;) (type 8) (param i32 i32 i32 i32) (result i32)
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
    (func $__rust_alloc_zeroed (;102;) (type 2) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc_zeroed
      local.set 2
      local.get 2
      return
    )
    (func $__rust_alloc_error_handler (;103;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $__rg_oom
      return
    )
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$3len17hfbfe8bcb3be87293E (;104;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h71b8712dc0bfc1ccE (;105;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h09c1fe8219e1b1e7E (;106;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hbf463d1ca80edd92E (;107;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h349a62c945ab2965E
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
    (func $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17hba90ac6c5b04df9cE (;108;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h341c44ceae517e65E
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h341c44ceae517e65E (;109;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17hbf463d1ca80edd92E
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
    (func $_ZN6origin5fetch17h8a381fb0ecd9acf9E (;110;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h71b8712dc0bfc1ccE
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=16
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$3len17hfbfe8bcb3be87293E
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=20
      i32.const 1053552
      local.set 8
      local.get 8
      local.set 9
      i32.const 8
      local.set 10
      local.get 9
      local.get 10
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h09c1fe8219e1b1e7E
      local.set 11
      local.get 5
      local.get 11
      i32.store offset=24
      local.get 6
      local.get 7
      local.get 11
      call $_ZN6origin5fetch10wit_import17hc12acca99bc23a90E
      i32.const 4
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
            i32.const 1049136
            local.set 22
            local.get 22
            local.set 23
            i32.const 28
            local.set 24
            i32.const 1049116
            local.set 25
            local.get 25
            local.set 26
            local.get 23
            local.get 24
            local.get 26
            call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
            unreachable
          end
          local.get 19
          i32.load
          local.set 27
          local.get 0
          local.get 27
          local.get 17
          local.get 17
          call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17hba90ac6c5b04df9cE
          br 1 (;@1;)
        end
        i32.const 1049136
        local.set 28
        local.get 28
        local.set 29
        i32.const 28
        local.set 30
        i32.const 1049164
        local.set 31
        local.get 31
        local.set 32
        local.get 29
        local.get 30
        local.get 32
        call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h349a62c945ab2965E (;111;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb2a1e64ce7d4d818E (;112;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h52ffbb7cd5db0eaeE (;113;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h22e03b8a71105067E (;114;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h7f5fcebc4ddf15d7E
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
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h7f5fcebc4ddf15d7E (;115;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h2cdd440efc5ce291E
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
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h75f75959066b2b94E (;116;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h1c04945bf42764a3E (;117;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN4core7convert3num63_$LT$impl$u20$core..convert..From$LT$u8$GT$$u20$for$u20$i32$GT$4from17h55046c54b31588f8E (;118;) (type 5) (param i32) (result i32)
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
      i32.store8 offset=15
      i32.const 255
      local.set 4
      local.get 0
      local.get 4
      i32.and
      local.set 5
      local.get 5
      return
    )
    (func $_ZN4core3fmt9Arguments6new_v117h5dcc30676b599171E (;119;) (type 7) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 64
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=48
      local.get 7
      local.get 2
      i32.store offset=52
      local.get 7
      local.get 3
      i32.store offset=56
      local.get 7
      local.get 4
      i32.store offset=60
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
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1
        local.set 20
        local.get 7
        local.get 20
        i32.store8 offset=15
      end
      local.get 7
      i32.load8_u offset=15
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
        i32.store offset=40
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 7
        i32.load offset=40
        local.set 25
        local.get 7
        i32.load offset=44
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
        i32.const 64
        local.set 27
        local.get 7
        local.get 27
        i32.add
        local.set 28
        local.get 28
        global.set $__stack_pointer
        return
      end
      i32.const 16
      local.set 29
      local.get 7
      local.get 29
      i32.add
      local.set 30
      local.get 30
      local.set 31
      i32.const 1049192
      local.set 32
      local.get 32
      local.set 33
      i32.const 1
      local.set 34
      i32.const 1049200
      local.set 35
      local.get 35
      local.set 36
      i32.const 0
      local.set 37
      local.get 31
      local.get 33
      local.get 34
      local.get 36
      local.get 37
      call $_ZN4core3fmt9Arguments6new_v117h5dcc30676b599171E
      i32.const 16
      local.set 38
      local.get 7
      local.get 38
      i32.add
      local.set 39
      local.get 39
      local.set 40
      i32.const 1049276
      local.set 41
      local.get 41
      local.set 42
      local.get 40
      local.get 42
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN5cache3get17h1297f764e36d0556E (;120;) (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
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
      i32.store offset=48
      local.get 5
      local.get 2
      i32.store offset=52
      local.get 5
      local.get 1
      i32.store offset=56
      local.get 5
      local.get 2
      i32.store offset=60
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h1c04945bf42764a3E
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=64
      local.get 1
      local.get 2
      call $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h75f75959066b2b94E
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=68
      i32.const 1053560
      local.set 8
      local.get 8
      local.set 9
      i32.const 12
      local.set 10
      local.get 9
      local.get 10
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h52ffbb7cd5db0eaeE
      local.set 11
      local.get 5
      local.get 11
      i32.store offset=72
      local.get 6
      local.get 7
      local.get 11
      call $_ZN5cache3get10wit_import17h15f1355f653503e4E
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
          local.get 15
          br_if 0 (;@2;)
          local.get 13
          i32.load8_u
          local.set 16
          local.get 16
          call $_ZN4core7convert3num63_$LT$impl$u20$core..convert..From$LT$u8$GT$$u20$for$u20$i32$GT$4from17h55046c54b31588f8E
          local.set 17
          br 1 (;@1;)
        end
        i32.const 1049344
        local.set 18
        local.get 18
        local.set 19
        i32.const 28
        local.set 20
        i32.const 1049324
        local.set 21
        local.get 21
        local.set 22
        local.get 19
        local.get 20
        local.get 22
        call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
        unreachable
      end
      i32.const 1
      local.set 23
      local.get 17
      local.get 23
      i32.gt_u
      drop
      local.get 17
      local.set 24
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
                          local.get 24
                          br_table 1 (;@9;) 2 (;@8;) 0 (;@10;)
                        end
                        i32.const 24
                        local.set 25
                        local.get 5
                        local.get 25
                        i32.add
                        local.set 26
                        local.get 26
                        local.set 27
                        i32.const 1049400
                        local.set 28
                        local.get 28
                        local.set 29
                        i32.const 1
                        local.set 30
                        i32.const 1049408
                        local.set 31
                        local.get 31
                        local.set 32
                        i32.const 0
                        local.set 33
                        local.get 27
                        local.get 29
                        local.get 30
                        local.get 32
                        local.get 33
                        call $_ZN4core3fmt9Arguments6new_v117h5dcc30676b599171E
                        br 2 (;@7;)
                      end
                      i32.const 0
                      local.set 34
                      local.get 0
                      local.get 34
                      i32.store
                      br 7 (;@1;)
                    end
                    i32.const 8
                    local.set 35
                    local.get 11
                    local.get 35
                    i32.add
                    local.set 36
                    local.get 36
                    local.get 11
                    i32.lt_s
                    local.set 37
                    i32.const 1
                    local.set 38
                    local.get 37
                    local.get 38
                    i32.and
                    local.set 39
                    local.get 39
                    br_if 2 (;@5;)
                    br 1 (;@6;)
                  end
                  i32.const 24
                  local.set 40
                  local.get 5
                  local.get 40
                  i32.add
                  local.set 41
                  local.get 41
                  local.set 42
                  i32.const 1049408
                  local.set 43
                  local.get 43
                  local.set 44
                  local.get 42
                  local.get 44
                  call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
                  unreachable
                end
                local.get 36
                i32.load
                local.set 45
                local.get 5
                local.get 45
                i32.store offset=76
                i32.const 4
                local.set 46
                local.get 11
                local.get 46
                i32.add
                local.set 47
                local.get 47
                local.get 11
                i32.lt_s
                local.set 48
                i32.const 1
                local.set 49
                local.get 48
                local.get 49
                i32.and
                local.set 50
                local.get 50
                br_if 2 (;@3;)
                br 1 (;@4;)
              end
              i32.const 1049344
              local.set 51
              local.get 51
              local.set 52
              i32.const 28
              local.set 53
              i32.const 1049424
              local.set 54
              local.get 54
              local.set 55
              local.get 52
              local.get 53
              local.get 55
              call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
              unreachable
            end
            local.get 47
            i32.load
            local.set 56
            i32.const 8
            local.set 57
            local.get 5
            local.get 57
            i32.add
            local.set 58
            local.get 58
            local.set 59
            local.get 59
            local.get 56
            local.get 45
            local.get 45
            call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h22e03b8a71105067E
            br 1 (;@2;)
          end
          i32.const 1049344
          local.set 60
          local.get 60
          local.set 61
          i32.const 28
          local.set 62
          i32.const 1049440
          local.set 63
          local.get 63
          local.set 64
          local.get 61
          local.get 62
          local.get 64
          call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
          unreachable
        end
        i32.const 8
        local.set 65
        local.get 5
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
      end
      i32.const 80
      local.set 73
      local.get 5
      local.get 73
      i32.add
      local.set 74
      local.get 74
      global.set $__stack_pointer
      return
    )
    (func $_ZN5cache3put17h0880af8c01767c92E (;121;) (type 4) (param i32 i32 i32 i32)
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
      call $_ZN4core3str21_$LT$impl$u20$str$GT$6as_ptr17h1c04945bf42764a3E
      local.set 7
      local.get 6
      local.get 7
      i32.store offset=24
      local.get 0
      local.get 1
      call $_ZN4core3str21_$LT$impl$u20$str$GT$3len17h75f75959066b2b94E
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
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb2a1e64ce7d4d818E
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
      call $_ZN5cache3put10wit_import17h593ceb26aaf18a7eE
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17from_raw_parts_in17h2cdd440efc5ce291E (;122;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h59e26bf97020ac61E
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
    (func $_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h59e26bf97020ac61E (;123;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h0121c121fafb5c53E (;124;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h31e8e5119b58559eE
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
    (func $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h31e8e5119b58559eE (;125;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h2d9fa466338c8419E (;126;) (type 6) (param i32))
    (func $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$GT$17h8cc2d5abb01ea564E (;127;) (type 6) (param i32)
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
    (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hd59899e4f8969acaE (;128;) (type 6) (param i32)
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
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h19307cc5d90fab9fE (;129;) (type 3) (param i32 i32 i32)
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
        local.tee 4
        i32.const 1
        i32.shl
        local.tee 1
        local.get 2
        local.get 1
        local.get 2
        i32.gt_u
        select
        local.tee 1
        i32.const 8
        local.get 1
        i32.const 8
        i32.gt_u
        select
        local.set 1
        block  ;; label = @2
          block  ;; label = @3
            local.get 4
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
            local.get 4
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
        local.get 1
        i32.const 1
        local.get 3
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h6303b8ccd2911159E
        block  ;; label = @2
          local.get 3
          i32.load
          i32.eqz
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
          call $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E
          unreachable
        end
        local.get 3
        i32.load offset=4
        local.set 2
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 2
        i32.store
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E
      unreachable
    )
    (func $_ZN5alloc7raw_vec11finish_grow17h6303b8ccd2911159E (;130;) (type 4) (param i32 i32 i32 i32)
      (local i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        local.get 2
                        i32.eqz
                        br_if 0 (;@9;)
                        i32.const 1
                        local.set 4
                        local.get 1
                        i32.const 0
                        i32.lt_s
                        br_if 1 (;@8;)
                        local.get 3
                        i32.load
                        local.tee 5
                        i32.eqz
                        br_if 2 (;@7;)
                        local.get 3
                        i32.load offset=4
                        local.tee 3
                        br_if 5 (;@4;)
                        local.get 1
                        br_if 3 (;@6;)
                        local.get 2
                        local.set 3
                        br 4 (;@5;)
                      end
                      local.get 0
                      local.get 1
                      i32.store offset=4
                      i32.const 1
                      local.set 4
                    end
                    i32.const 0
                    local.set 1
                    br 6 (;@1;)
                  end
                  local.get 1
                  br_if 0 (;@6;)
                  local.get 2
                  local.set 3
                  br 1 (;@5;)
                end
                local.get 1
                local.get 2
                call $__rust_alloc
                local.set 3
              end
              local.get 3
              i32.eqz
              br_if 1 (;@3;)
              br 2 (;@2;)
            end
            local.get 5
            local.get 3
            local.get 2
            local.get 1
            call $__rust_realloc
            local.tee 3
            br_if 1 (;@2;)
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
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
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2fefae3f37931f2bE (;131;) (type 5) (param i32) (result i32)
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
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
            local.set 2
            i32.const 0
            local.set 3
            local.get 2
            local.get 2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 2
            i32.const 0
            i32.load offset=1053596
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
                  i32.const 1053864
                  i32.add
                  i32.load
                  local.tee 0
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 2
                  local.get 5
                  call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h36ac46c2531b340cE
                  i32.shl
                  local.set 6
                  i32.const 0
                  local.set 7
                  i32.const 0
                  local.set 4
                  loop  ;; label = @7
                    block  ;; label = @8
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
                call $_ZN8dlmalloc8dlmalloc9left_bits17hacac5fff18d15d50E
                i32.const 0
                i32.load offset=1053596
                i32.and
                local.tee 0
                i32.eqz
                br_if 3 (;@2;)
                local.get 0
                call $_ZN8dlmalloc8dlmalloc9least_bit17he1679cf76a7d2685E
                i32.ctz
                i32.const 2
                i32.shl
                i32.const 1053864
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
                call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
                call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h20bee2022357dd21E
                local.tee 0
                br_if 0 (;@5;)
              end
              local.get 4
              i32.eqz
              br_if 2 (;@2;)
            end
            block  ;; label = @4
              i32.const 0
              i32.load offset=1053992
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
            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
            local.tee 0
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
            local.set 7
            local.get 4
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
            block  ;; label = @4
              block  ;; label = @5
                local.get 3
                i32.const 16
                i32.const 8
                call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                i32.lt_u
                br_if 0 (;@5;)
                local.get 0
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
                local.get 7
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                block  ;; label = @6
                  local.get 3
                  i32.const 256
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 7
                  local.get 3
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E
                  br 2 (;@4;)
                end
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 4
                i32.const 3
                i32.shl
                i32.const 1053600
                i32.add
                local.set 3
                block  ;; label = @6
                  block  ;; label = @7
                    i32.const 0
                    i32.load offset=1053592
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
                  i32.store offset=1053592
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
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hd4326a8963a8844dE
            end
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          i32.const -5
          i32.add
          local.get 0
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        i32.const 0
                        i32.load offset=1053592
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
                        i32.load offset=1053992
                        i32.le_u
                        br_if 7 (;@2;)
                        local.get 0
                        br_if 1 (;@8;)
                        i32.const 0
                        i32.load offset=1053596
                        local.tee 0
                        i32.eqz
                        br_if 7 (;@2;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc9least_bit17he1679cf76a7d2685E
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1053864
                        i32.add
                        i32.load
                        local.tee 4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
                        local.get 2
                        i32.sub
                        local.set 3
                        block  ;; label = @10
                          local.get 4
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h20bee2022357dd21E
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@10;)
                          loop  ;; label = @11
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
                            call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h20bee2022357dd21E
                            local.tee 0
                            br_if 0 (;@11;)
                          end
                        end
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                        local.tee 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        local.set 7
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
                        local.get 3
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        i32.lt_u
                        br_if 5 (;@4;)
                        local.get 7
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                        local.set 7
                        local.get 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
                        local.get 7
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                        i32.const 0
                        i32.load offset=1053992
                        local.tee 4
                        i32.eqz
                        br_if 4 (;@5;)
                        local.get 4
                        i32.const 3
                        i32.shr_u
                        local.tee 8
                        i32.const 3
                        i32.shl
                        i32.const 1053600
                        i32.add
                        local.set 6
                        i32.const 0
                        i32.load offset=1054000
                        local.set 4
                        i32.const 0
                        i32.load offset=1053592
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
                          i32.const 1053608
                          i32.add
                          i32.load
                          local.tee 0
                          i32.const 8
                          i32.add
                          i32.load
                          local.tee 3
                          local.get 4
                          i32.const 1053600
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
                        i32.store offset=1053592
                      end
                      local.get 0
                      local.get 2
                      i32.const 3
                      i32.shl
                      call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hd4326a8963a8844dE
                      local.get 0
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
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
                        call $_ZN8dlmalloc8dlmalloc9left_bits17hacac5fff18d15d50E
                        local.get 0
                        local.get 3
                        i32.shl
                        i32.and
                        call $_ZN8dlmalloc8dlmalloc9least_bit17he1679cf76a7d2685E
                        i32.ctz
                        local.tee 3
                        i32.const 3
                        i32.shl
                        local.tee 7
                        i32.const 1053608
                        i32.add
                        i32.load
                        local.tee 0
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 4
                        local.get 7
                        i32.const 1053600
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
                      i32.load offset=1053592
                      i32.const -2
                      local.get 3
                      i32.rotl
                      i32.and
                      i32.store offset=1053592
                    end
                    local.get 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
                    local.get 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                    local.tee 4
                    local.get 3
                    i32.const 3
                    i32.shl
                    local.get 2
                    i32.sub
                    local.tee 7
                    call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                    block  ;; label = @8
                      i32.const 0
                      i32.load offset=1053992
                      local.tee 2
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 2
                      i32.const 3
                      i32.shr_u
                      local.tee 6
                      i32.const 3
                      i32.shl
                      i32.const 1053600
                      i32.add
                      local.set 3
                      i32.const 0
                      i32.load offset=1054000
                      local.set 2
                      block  ;; label = @9
                        block  ;; label = @10
                          i32.const 0
                          i32.load offset=1053592
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
                        i32.store offset=1053592
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
                    i32.store offset=1054000
                    i32.const 0
                    local.get 7
                    i32.store offset=1053992
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                    local.set 3
                    br 6 (;@1;)
                  end
                  i32.const 0
                  local.get 5
                  local.get 8
                  i32.or
                  i32.store offset=1053592
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
              i32.store offset=1054000
              i32.const 0
              local.get 3
              i32.store offset=1053992
              br 1 (;@3;)
            end
            local.get 0
            local.get 3
            local.get 2
            i32.add
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hd4326a8963a8844dE
          end
          local.get 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
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
                          i32.load offset=1053992
                          local.tee 3
                          local.get 2
                          i32.ge_u
                          br_if 0 (;@10;)
                          i32.const 0
                          i32.load offset=1053996
                          local.tee 0
                          local.get 2
                          i32.gt_u
                          br_if 2 (;@8;)
                          local.get 1
                          i32.const 1053592
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
                          local.tee 0
                          i32.sub
                          local.get 0
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                          i32.add
                          i32.const 20
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                          i32.add
                          i32.const 16
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                          i32.add
                          i32.const 8
                          i32.add
                          i32.const 65536
                          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17h22b7ae7103c4522cE
                          local.get 1
                          i32.load
                          local.tee 3
                          br_if 1 (;@9;)
                          i32.const 0
                          local.set 3
                          br 9 (;@1;)
                        end
                        i32.const 0
                        i32.load offset=1054000
                        local.set 0
                        block  ;; label = @10
                          local.get 3
                          local.get 2
                          i32.sub
                          local.tee 3
                          i32.const 16
                          i32.const 8
                          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                          i32.ge_u
                          br_if 0 (;@10;)
                          i32.const 0
                          i32.const 0
                          i32.store offset=1054000
                          i32.const 0
                          i32.load offset=1053992
                          local.set 2
                          i32.const 0
                          i32.const 0
                          i32.store offset=1053992
                          local.get 0
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hd4326a8963a8844dE
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                          local.set 3
                          br 9 (;@1;)
                        end
                        local.get 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        local.set 4
                        i32.const 0
                        local.get 3
                        i32.store offset=1053992
                        i32.const 0
                        local.get 4
                        i32.store offset=1054000
                        local.get 4
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                        local.get 0
                        local.get 2
                        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                        local.set 3
                        br 8 (;@1;)
                      end
                      local.get 1
                      i32.load offset=8
                      local.set 5
                      i32.const 0
                      i32.const 0
                      i32.load offset=1054008
                      local.get 1
                      i32.load offset=4
                      local.tee 6
                      i32.add
                      local.tee 0
                      i32.store offset=1054008
                      i32.const 0
                      i32.const 0
                      i32.load offset=1054012
                      local.tee 4
                      local.get 0
                      local.get 4
                      local.get 0
                      i32.gt_u
                      select
                      i32.store offset=1054012
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            i32.const 0
                            i32.load offset=1054004
                            i32.eqz
                            br_if 0 (;@11;)
                            i32.const 1054016
                            local.set 0
                            loop  ;; label = @12
                              local.get 3
                              local.get 0
                              call $_ZN8dlmalloc8dlmalloc7Segment3top17he9ce965dff337f4fE
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
                          i32.load offset=1054036
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
                        call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h4d4b9ff2e41c71efE
                        br_if 0 (;@9;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h42a509b8233399acE
                        local.get 5
                        i32.ne
                        br_if 0 (;@9;)
                        local.get 0
                        i32.const 0
                        i32.load offset=1054004
                        call $_ZN8dlmalloc8dlmalloc7Segment5holds17ha8fc9fa3051ce55fE
                        br_if 3 (;@6;)
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=1054036
                      local.tee 0
                      local.get 3
                      local.get 3
                      local.get 0
                      i32.gt_u
                      select
                      i32.store offset=1054036
                      local.get 3
                      local.get 6
                      i32.add
                      local.set 4
                      i32.const 1054016
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
                          call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h4d4b9ff2e41c71efE
                          br_if 0 (;@10;)
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h42a509b8233399acE
                          local.get 5
                          i32.eq
                          br_if 1 (;@9;)
                        end
                        i32.const 0
                        i32.load offset=1054004
                        local.set 4
                        i32.const 1054016
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
                              call $_ZN8dlmalloc8dlmalloc7Segment3top17he9ce965dff337f4fE
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
                        call $_ZN8dlmalloc8dlmalloc7Segment3top17he9ce965dff337f4fE
                        local.tee 7
                        i32.const 20
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.tee 9
                        i32.sub
                        i32.const -23
                        i32.add
                        local.set 0
                        local.get 4
                        local.get 0
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                        local.tee 8
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.get 8
                        i32.sub
                        i32.add
                        local.tee 0
                        local.get 0
                        local.get 4
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        i32.add
                        i32.lt_u
                        select
                        local.tee 8
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                        local.set 10
                        local.get 8
                        local.get 9
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        local.set 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
                        local.tee 11
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.set 12
                        i32.const 20
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.set 13
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.set 14
                        i32.const 0
                        local.get 3
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                        local.tee 15
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.get 15
                        i32.sub
                        local.tee 16
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        local.tee 15
                        i32.store offset=1054004
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
                        i32.store offset=1053996
                        local.get 15
                        local.get 11
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
                        local.tee 12
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.set 13
                        i32.const 20
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.set 14
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        local.set 16
                        local.get 15
                        local.get 11
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
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
                        i32.store offset=1054032
                        local.get 8
                        local.get 9
                        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
                        i32.const 0
                        i64.load offset=1054016 align=4
                        local.set 17
                        local.get 10
                        i32.const 8
                        i32.add
                        i32.const 0
                        i64.load offset=1054024 align=4
                        i64.store align=4
                        local.get 10
                        local.get 17
                        i64.store align=4
                        i32.const 0
                        local.get 5
                        i32.store offset=1054028
                        i32.const 0
                        local.get 6
                        i32.store offset=1054020
                        i32.const 0
                        local.get 3
                        i32.store offset=1054016
                        i32.const 0
                        local.get 10
                        i32.store offset=1054024
                        loop  ;; label = @10
                          local.get 0
                          i32.const 4
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                          local.set 3
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h411554e62cd84933E
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
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E
                        block  ;; label = @10
                          local.get 0
                          i32.const 256
                          i32.lt_u
                          br_if 0 (;@10;)
                          local.get 4
                          local.get 0
                          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E
                          br 8 (;@2;)
                        end
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        local.tee 3
                        i32.const 3
                        i32.shl
                        i32.const 1053600
                        i32.add
                        local.set 0
                        block  ;; label = @10
                          block  ;; label = @11
                            i32.const 0
                            i32.load offset=1053592
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
                          i32.store offset=1053592
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
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                      local.tee 0
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                      local.set 4
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                      local.tee 6
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                      local.set 8
                      local.get 3
                      local.get 4
                      local.get 0
                      i32.sub
                      i32.add
                      local.tee 3
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                      local.set 4
                      local.get 3
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
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
                        i32.load offset=1054004
                        local.get 0
                        i32.eq
                        br_if 0 (;@9;)
                        i32.const 0
                        i32.load offset=1054000
                        local.get 0
                        i32.eq
                        br_if 4 (;@5;)
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h1d29ca00bc367943E
                        br_if 5 (;@4;)
                        block  ;; label = @10
                          block  ;; label = @11
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
                            local.tee 7
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@11;)
                            local.get 0
                            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
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
                          i32.load offset=1053592
                          i32.const -2
                          local.get 7
                          i32.const 3
                          i32.shr_u
                          i32.rotl
                          i32.and
                          i32.store offset=1053592
                        end
                        local.get 7
                        local.get 2
                        i32.add
                        local.set 2
                        local.get 0
                        local.get 7
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        local.set 0
                        br 5 (;@4;)
                      end
                      i32.const 0
                      local.get 4
                      i32.store offset=1054004
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053996
                      local.get 2
                      i32.add
                      local.tee 0
                      i32.store offset=1053996
                      local.get 4
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 3
                      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                      local.set 3
                      br 7 (;@1;)
                    end
                    i32.const 0
                    local.get 0
                    local.get 2
                    i32.sub
                    local.tee 3
                    i32.store offset=1053996
                    i32.const 0
                    i32.const 0
                    i32.load offset=1054004
                    local.tee 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                    local.tee 4
                    i32.store offset=1054004
                    local.get 4
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
                    local.get 0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
                    local.set 3
                    br 6 (;@1;)
                  end
                  i32.const 0
                  local.get 3
                  i32.store offset=1054036
                  br 3 (;@3;)
                end
                local.get 0
                local.get 0
                i32.load offset=4
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 0
                i32.load offset=1054004
                i32.const 0
                i32.load offset=1053996
                local.get 6
                i32.add
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$8init_top17h8b0b84789e2d9fdcE
                br 3 (;@2;)
              end
              i32.const 0
              local.get 4
              i32.store offset=1054000
              i32.const 0
              i32.const 0
              i32.load offset=1053992
              local.get 2
              i32.add
              local.tee 0
              i32.store offset=1053992
              local.get 4
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
              local.set 3
              br 3 (;@1;)
            end
            local.get 4
            local.get 2
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E
            block  ;; label = @4
              local.get 2
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 4
              local.get 2
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
              local.set 3
              br 3 (;@1;)
            end
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 2
            i32.const 3
            i32.shl
            i32.const 1053600
            i32.add
            local.set 0
            block  ;; label = @4
              block  ;; label = @5
                i32.const 0
                i32.load offset=1053592
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
              i32.store offset=1053592
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
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
            local.set 3
            br 2 (;@1;)
          end
          i32.const 0
          i32.const 4095
          i32.store offset=1054040
          i32.const 0
          local.get 5
          i32.store offset=1054028
          i32.const 0
          local.get 6
          i32.store offset=1054020
          i32.const 0
          local.get 3
          i32.store offset=1054016
          i32.const 0
          i32.const 1053600
          i32.store offset=1053612
          i32.const 0
          i32.const 1053608
          i32.store offset=1053620
          i32.const 0
          i32.const 1053600
          i32.store offset=1053608
          i32.const 0
          i32.const 1053616
          i32.store offset=1053628
          i32.const 0
          i32.const 1053608
          i32.store offset=1053616
          i32.const 0
          i32.const 1053624
          i32.store offset=1053636
          i32.const 0
          i32.const 1053616
          i32.store offset=1053624
          i32.const 0
          i32.const 1053632
          i32.store offset=1053644
          i32.const 0
          i32.const 1053624
          i32.store offset=1053632
          i32.const 0
          i32.const 1053640
          i32.store offset=1053652
          i32.const 0
          i32.const 1053632
          i32.store offset=1053640
          i32.const 0
          i32.const 1053648
          i32.store offset=1053660
          i32.const 0
          i32.const 1053640
          i32.store offset=1053648
          i32.const 0
          i32.const 1053656
          i32.store offset=1053668
          i32.const 0
          i32.const 1053648
          i32.store offset=1053656
          i32.const 0
          i32.const 1053664
          i32.store offset=1053676
          i32.const 0
          i32.const 1053656
          i32.store offset=1053664
          i32.const 0
          i32.const 1053664
          i32.store offset=1053672
          i32.const 0
          i32.const 1053672
          i32.store offset=1053684
          i32.const 0
          i32.const 1053672
          i32.store offset=1053680
          i32.const 0
          i32.const 1053680
          i32.store offset=1053692
          i32.const 0
          i32.const 1053680
          i32.store offset=1053688
          i32.const 0
          i32.const 1053688
          i32.store offset=1053700
          i32.const 0
          i32.const 1053688
          i32.store offset=1053696
          i32.const 0
          i32.const 1053696
          i32.store offset=1053708
          i32.const 0
          i32.const 1053696
          i32.store offset=1053704
          i32.const 0
          i32.const 1053704
          i32.store offset=1053716
          i32.const 0
          i32.const 1053704
          i32.store offset=1053712
          i32.const 0
          i32.const 1053712
          i32.store offset=1053724
          i32.const 0
          i32.const 1053712
          i32.store offset=1053720
          i32.const 0
          i32.const 1053720
          i32.store offset=1053732
          i32.const 0
          i32.const 1053720
          i32.store offset=1053728
          i32.const 0
          i32.const 1053728
          i32.store offset=1053740
          i32.const 0
          i32.const 1053736
          i32.store offset=1053748
          i32.const 0
          i32.const 1053728
          i32.store offset=1053736
          i32.const 0
          i32.const 1053744
          i32.store offset=1053756
          i32.const 0
          i32.const 1053736
          i32.store offset=1053744
          i32.const 0
          i32.const 1053752
          i32.store offset=1053764
          i32.const 0
          i32.const 1053744
          i32.store offset=1053752
          i32.const 0
          i32.const 1053760
          i32.store offset=1053772
          i32.const 0
          i32.const 1053752
          i32.store offset=1053760
          i32.const 0
          i32.const 1053768
          i32.store offset=1053780
          i32.const 0
          i32.const 1053760
          i32.store offset=1053768
          i32.const 0
          i32.const 1053776
          i32.store offset=1053788
          i32.const 0
          i32.const 1053768
          i32.store offset=1053776
          i32.const 0
          i32.const 1053784
          i32.store offset=1053796
          i32.const 0
          i32.const 1053776
          i32.store offset=1053784
          i32.const 0
          i32.const 1053792
          i32.store offset=1053804
          i32.const 0
          i32.const 1053784
          i32.store offset=1053792
          i32.const 0
          i32.const 1053800
          i32.store offset=1053812
          i32.const 0
          i32.const 1053792
          i32.store offset=1053800
          i32.const 0
          i32.const 1053808
          i32.store offset=1053820
          i32.const 0
          i32.const 1053800
          i32.store offset=1053808
          i32.const 0
          i32.const 1053816
          i32.store offset=1053828
          i32.const 0
          i32.const 1053808
          i32.store offset=1053816
          i32.const 0
          i32.const 1053824
          i32.store offset=1053836
          i32.const 0
          i32.const 1053816
          i32.store offset=1053824
          i32.const 0
          i32.const 1053832
          i32.store offset=1053844
          i32.const 0
          i32.const 1053824
          i32.store offset=1053832
          i32.const 0
          i32.const 1053840
          i32.store offset=1053852
          i32.const 0
          i32.const 1053832
          i32.store offset=1053840
          i32.const 0
          i32.const 1053848
          i32.store offset=1053860
          i32.const 0
          i32.const 1053840
          i32.store offset=1053848
          i32.const 0
          i32.const 1053848
          i32.store offset=1053856
          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
          local.tee 4
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 7
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 8
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 5
          i32.const 0
          local.get 3
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
          local.tee 0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.get 0
          i32.sub
          local.tee 10
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
          local.tee 0
          i32.store offset=1054004
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
          i32.store offset=1053996
          local.get 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
          local.tee 4
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 7
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 6
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.set 8
          local.get 0
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
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
          i32.store offset=1054032
        end
        i32.const 0
        local.set 3
        i32.const 0
        i32.load offset=1053996
        local.tee 0
        local.get 2
        i32.le_u
        br_if 0 (;@1;)
        i32.const 0
        local.get 0
        local.get 2
        i32.sub
        local.tee 3
        i32.store offset=1053996
        i32.const 0
        i32.const 0
        i32.load offset=1054004
        local.tee 0
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
        local.tee 4
        i32.store offset=1054004
        local.get 4
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E
        local.get 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
        local.set 3
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E (;132;) (type 6) (param i32)
      (local i32 i32 i32 i32 i32)
      local.get 0
      i32.load offset=24
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hf5dbf1a695fac572E
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
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17h4dc3c7f6f0802890E
          local.tee 4
          local.get 0
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hf5dbf1a695fac572E
          local.tee 3
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
          i32.store offset=12
          local.get 3
          local.get 4
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
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
            i32.const 1053864
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
          i32.load offset=1053596
          i32.const -2
          local.get 0
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=1053596
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
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E (;133;) (type 0) (param i32 i32)
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
      i32.const 1053864
      i32.add
      local.set 3
      local.get 0
      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                i32.const 0
                i32.load offset=1053596
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
                call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h36ac46c2531b340cE
                local.set 2
                local.get 5
                call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
                call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
              i32.store offset=1053596
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
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
              local.get 1
              i32.ne
              br_if 0 (;@4;)
            end
          end
          local.get 2
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E
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
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$8init_top17h8b0b84789e2d9fdcE (;134;) (type 0) (param i32 i32)
      (local i32 i32 i32 i32)
      local.get 0
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
      local.tee 2
      i32.const 8
      call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
      local.get 2
      i32.sub
      local.tee 2
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
      local.set 0
      i32.const 0
      local.get 1
      local.get 2
      i32.sub
      local.tee 1
      i32.store offset=1053996
      i32.const 0
      local.get 0
      i32.store offset=1054004
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
      local.tee 2
      i32.const 8
      call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
      local.set 3
      i32.const 20
      i32.const 8
      call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
      local.set 4
      i32.const 16
      i32.const 8
      call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
      local.set 5
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
      local.get 5
      local.get 4
      local.get 3
      local.get 2
      i32.sub
      i32.add
      i32.add
      i32.store offset=4
      i32.const 0
      i32.const 2097152
      i32.store offset=1054032
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hdd2c7b32fd9ea886E (;135;) (type 0) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block  ;; label = @1
        local.get 1
        i32.const 1
        i32.add
        local.tee 3
        local.get 1
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 4
        i32.const 1
        i32.shl
        local.tee 1
        local.get 3
        local.get 1
        local.get 3
        i32.gt_u
        select
        local.tee 1
        i32.const 8
        local.get 1
        i32.const 8
        i32.gt_u
        select
        local.set 1
        block  ;; label = @2
          block  ;; label = @3
            local.get 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            i32.const 1
            i32.store
            local.get 2
            local.get 4
            i32.store offset=20
            local.get 2
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@2;)
          end
          local.get 2
          i32.const 0
          i32.store offset=16
        end
        local.get 2
        local.get 1
        i32.const 1
        local.get 2
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h6303b8ccd2911159E
        block  ;; label = @2
          local.get 2
          i32.load
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 1 (;@1;)
          local.get 2
          i32.load offset=4
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E
          unreachable
        end
        local.get 2
        i32.load offset=4
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E
      unreachable
    )
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h41fb508ceee1f558E (;136;) (type 0) (param i32 i32)
      (local i32 i32 i32 i32)
      local.get 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
      local.set 2
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17hae23a37ce588a018E
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.set 3
            block  ;; label = @4
              block  ;; label = @5
                local.get 0
                call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
                br_if 0 (;@5;)
                local.get 3
                local.get 1
                i32.add
                local.set 1
                local.get 0
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17hff099046b8cff288E
                local.tee 0
                i32.const 0
                i32.load offset=1054000
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
                i32.store offset=1053992
                local.get 0
                local.get 1
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E
                return
              end
              i32.const 1053592
              local.get 0
              local.get 3
              i32.sub
              local.get 3
              local.get 1
              i32.add
              i32.const 16
              i32.add
              local.tee 0
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17he34c55096b06c311E
              i32.eqz
              br_if 2 (;@2;)
              i32.const 0
              i32.const 0
              i32.load offset=1054008
              local.get 0
              i32.sub
              i32.store offset=1054008
              return
            end
            block  ;; label = @4
              local.get 3
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 0
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
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
            i32.load offset=1053592
            i32.const -2
            local.get 3
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store offset=1053592
          end
          block  ;; label = @3
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hbff4e714bbaba45cE
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            local.get 2
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E
            br 2 (;@1;)
          end
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.const 0
              i32.load offset=1054004
              i32.eq
              br_if 0 (;@4;)
              local.get 2
              i32.const 0
              i32.load offset=1054000
              i32.ne
              br_if 1 (;@3;)
              i32.const 0
              local.get 0
              i32.store offset=1054000
              i32.const 0
              i32.const 0
              i32.load offset=1053992
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1053992
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
              return
            end
            i32.const 0
            local.get 0
            i32.store offset=1054004
            i32.const 0
            i32.const 0
            i32.load offset=1053996
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1053996
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1054000
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            i32.const 0
            i32.store offset=1053992
            i32.const 0
            i32.const 0
            i32.store offset=1054000
            return
          end
          local.get 2
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
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
            i32.load offset=1053592
            i32.const -2
            local.get 3
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store offset=1053592
          end
          local.get 0
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
          local.get 0
          i32.const 0
          i32.load offset=1054000
          i32.ne
          br_if 1 (;@1;)
          i32.const 0
          local.get 1
          i32.store offset=1053992
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
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E
        return
      end
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 2
      i32.const 3
      i32.shl
      i32.const 1053600
      i32.add
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          i32.const 0
          i32.load offset=1053592
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
        i32.store offset=1053592
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
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17he46612a523ab9825E (;137;) (type 6) (param i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h2172617900af803cE
      local.set 0
      local.get 0
      local.get 0
      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
      local.tee 1
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
      local.set 2
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17hae23a37ce588a018E
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.set 3
            block  ;; label = @4
              block  ;; label = @5
                local.get 0
                call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
                br_if 0 (;@5;)
                local.get 3
                local.get 1
                i32.add
                local.set 1
                local.get 0
                local.get 3
                call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17hff099046b8cff288E
                local.tee 0
                i32.const 0
                i32.load offset=1054000
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
                i32.store offset=1053992
                local.get 0
                local.get 1
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E
                return
              end
              i32.const 1053592
              local.get 0
              local.get 3
              i32.sub
              local.get 3
              local.get 1
              i32.add
              i32.const 16
              i32.add
              local.tee 0
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17he34c55096b06c311E
              i32.eqz
              br_if 2 (;@2;)
              i32.const 0
              i32.const 0
              i32.load offset=1054008
              local.get 0
              i32.sub
              i32.store offset=1054008
              return
            end
            block  ;; label = @4
              local.get 3
              i32.const 256
              i32.lt_u
              br_if 0 (;@4;)
              local.get 0
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
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
            i32.load offset=1053592
            i32.const -2
            local.get 3
            i32.const 3
            i32.shr_u
            i32.rotl
            i32.and
            i32.store offset=1053592
          end
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hbff4e714bbaba45cE
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              local.get 1
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E
              br 1 (;@3;)
            end
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 2
                    i32.const 0
                    i32.load offset=1054004
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 0
                    i32.load offset=1054000
                    i32.ne
                    br_if 1 (;@6;)
                    i32.const 0
                    local.get 0
                    i32.store offset=1054000
                    i32.const 0
                    i32.const 0
                    i32.load offset=1053992
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.store offset=1053992
                    local.get 0
                    local.get 1
                    call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                    return
                  end
                  i32.const 0
                  local.get 0
                  i32.store offset=1054004
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053996
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1053996
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=1054000
                  i32.eq
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                local.get 2
                call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
                    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
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
                  i32.load offset=1053592
                  i32.const -2
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1053592
                end
                local.get 0
                local.get 1
                call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                local.get 0
                i32.const 0
                i32.load offset=1054000
                i32.ne
                br_if 2 (;@3;)
                i32.const 0
                local.get 1
                i32.store offset=1053992
                br 3 (;@2;)
              end
              i32.const 0
              i32.const 0
              i32.store offset=1053992
              i32.const 0
              i32.const 0
              i32.store offset=1054000
            end
            i32.const 0
            i32.load offset=1054032
            local.get 1
            i32.ge_u
            br_if 1 (;@2;)
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
            local.set 0
            local.get 0
            local.get 0
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
            i32.load offset=1054004
            i32.eqz
            br_if 1 (;@2;)
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
            local.tee 0
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 1
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 3
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 4
            i32.const 0
            local.set 2
            block  ;; label = @4
              i32.const 0
              i32.load offset=1053996
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
              i32.load offset=1054004
              local.set 1
              i32.const 1054016
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
                    call $_ZN8dlmalloc8dlmalloc7Segment3top17he9ce965dff337f4fE
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
              call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h4d4b9ff2e41c71efE
              br_if 0 (;@4;)
              i32.const 1053592
              local.get 0
              i32.const 12
              i32.add
              i32.load
              i32.const 1
              i32.shr_u
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hd2ea68d8f6f2fe53E
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load offset=4
              local.get 3
              i32.lt_u
              br_if 0 (;@4;)
              i32.const 1054016
              local.set 1
              loop  ;; label = @5
                local.get 0
                local.get 1
                call $_ZN8dlmalloc8dlmalloc7Segment5holds17ha8fc9fa3051ce55fE
                br_if 1 (;@4;)
                local.get 1
                i32.load offset=8
                local.tee 1
                br_if 0 (;@5;)
              end
              i32.const 1053592
              local.get 0
              i32.load
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 1
              local.get 3
              i32.sub
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17h177413caa222145fE
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
              i32.load offset=1054008
              local.get 3
              i32.sub
              i32.store offset=1054008
              i32.const 0
              i32.load offset=1053996
              local.set 1
              i32.const 0
              i32.load offset=1054004
              local.set 0
              i32.const 0
              local.get 0
              local.get 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
              local.tee 2
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
              local.get 2
              i32.sub
              local.tee 2
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
              local.tee 0
              i32.store offset=1054004
              i32.const 0
              local.get 1
              local.get 3
              local.get 2
              i32.add
              i32.sub
              local.tee 1
              i32.store offset=1053996
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
              local.tee 2
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
              local.set 4
              i32.const 20
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
              local.set 5
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
              local.set 6
              local.get 0
              local.get 1
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
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
              i32.store offset=1054032
              local.get 3
              local.set 2
            end
            local.get 2
            i32.const 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h2ecb6a518613516cE
            i32.sub
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            i32.load offset=1053996
            i32.const 0
            i32.load offset=1054032
            i32.le_u
            br_if 1 (;@2;)
            i32.const 0
            i32.const -1
            i32.store offset=1054032
            return
          end
          local.get 1
          i32.const 256
          i32.lt_u
          br_if 1 (;@1;)
          local.get 0
          local.get 1
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E
          i32.const 0
          i32.const 0
          i32.load offset=1054040
          i32.const -1
          i32.add
          local.tee 0
          i32.store offset=1054040
          local.get 0
          br_if 0 (;@2;)
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h2ecb6a518613516cE
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
      i32.const 1053600
      i32.add
      local.set 1
      block  ;; label = @1
        block  ;; label = @2
          i32.const 0
          i32.load offset=1053592
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
        i32.store offset=1053592
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
    (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h2ecb6a518613516cE (;138;) (type 11) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        i32.const 0
        i32.load offset=1054024
        local.tee 0
        br_if 0 (;@1;)
        i32.const 0
        i32.const 4095
        i32.store offset=1054040
        i32.const 0
        return
      end
      i32.const 1054016
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
            i32.const 1053592
            local.get 4
            i32.const 12
            i32.add
            i32.load
            i32.const 1
            i32.shr_u
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hd2ea68d8f6f2fe53E
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h4d4b9ff2e41c71efE
            br_if 0 (;@3;)
            local.get 6
            local.get 6
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
            local.tee 7
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.get 7
            i32.sub
            i32.add
            local.tee 7
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
            local.set 8
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
            local.tee 9
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 10
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 11
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 12
            local.get 7
            call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h1d29ca00bc367943E
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
                i32.load offset=1054000
                local.get 7
                i32.eq
                br_if 0 (;@5;)
                local.get 7
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
                br 1 (;@4;)
              end
              i32.const 0
              i32.const 0
              i32.store offset=1053992
              i32.const 0
              i32.const 0
              i32.store offset=1054000
            end
            block  ;; label = @4
              i32.const 1053592
              local.get 6
              local.get 5
              call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17he34c55096b06c311E
              br_if 0 (;@4;)
              local.get 7
              local.get 8
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7b4ffd273310ed85E
              br 1 (;@3;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1054008
            local.get 5
            i32.sub
            i32.store offset=1054008
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
      i32.store offset=1054040
      local.get 2
    )
    (func $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h23cc83bd27bf5cdaE (;139;) (type 2) (param i32 i32) (result i32)
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
                call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                local.get 1
                i32.gt_u
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              local.get 0
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2fefae3f37931f2bE
              local.set 2
              br 2 (;@2;)
            end
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 1
          end
          call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
          local.set 3
          i32.const 0
          local.set 2
          local.get 3
          local.get 3
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          i32.const -5
          i32.add
          local.get 0
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.tee 4
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          i32.add
          i32.const -4
          i32.add
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2fefae3f37931f2bE
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h2172617900af803cE
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
            call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h2172617900af803cE
            local.set 2
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 3
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
              call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
              local.get 0
              local.get 2
              call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
              local.get 0
              local.get 2
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h41fb508ceee1f558E
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
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
          br_if 1 (;@1;)
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
          local.tee 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
          local.get 4
          i32.add
          i32.le_u
          br_if 1 (;@1;)
          local.get 1
          local.get 4
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
          local.set 2
          local.get 1
          local.get 4
          call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
          local.get 2
          local.get 0
          local.get 4
          i32.sub
          local.tee 0
          call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
          local.get 2
          local.get 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h41fb508ceee1f558E
          br 1 (;@1;)
        end
        local.get 2
        return
      end
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
      local.set 0
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
      drop
      local.get 0
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h65c16dea774409feE (;140;) (type 12) (param i32) (result i64)
      i64.const 418481887179059574
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h9f4a2bd22df7e64aE (;141;) (type 12) (param i32) (result i64)
      i64.const -8867930603987265711
    )
    (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hbae7b0c17d0cd96bE (;142;) (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 1
              i32.const 128
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              i32.const 0
              i32.store offset=12
              local.get 1
              i32.const 2048
              i32.ge_u
              br_if 1 (;@3;)
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
              br 2 (;@2;)
            end
            block  ;; label = @4
              local.get 0
              i32.load offset=8
              local.tee 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 0
              local.get 3
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hdd2c7b32fd9ea886E
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
            br 2 (;@1;)
          end
          block  ;; label = @3
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@3;)
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
            br 1 (;@2;)
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
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h19307cc5d90fab9fE
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
    (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h9f6add6df687a1bfE (;143;) (type 6) (param i32)
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h4939ceabc7a11060E
      unreachable
    )
    (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h4939ceabc7a11060E (;144;) (type 3) (param i32 i32 i32)
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
            i32.const 1049456
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
        i32.const 1049612
        local.get 1
        call $_ZN4core5panic10panic_info9PanicInfo7message17hbbb973caa451b919E
        local.get 2
        local.get 1
        call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h2d967851d58bdc57E
        call $_ZN3std9panicking20rust_panic_with_hook17h623ac32ff431b114E
        unreachable
      end
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 1049592
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo7message17hbbb973caa451b919E
      local.get 2
      local.get 1
      call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h2d967851d58bdc57E
      call $_ZN3std9panicking20rust_panic_with_hook17h623ac32ff431b114E
      unreachable
    )
    (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h7c5b918e99310291E (;145;) (type 2) (param i32 i32) (result i32)
      block  ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        i32.const 1049456
        i32.const 43
        local.get 1
        call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
        unreachable
      end
      local.get 0
    )
    (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hf36fa2f04a35a920E (;146;) (type 5) (param i32) (result i32)
      block  ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        i32.const 1049456
        i32.const 43
        i32.const 1049544
        call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
        unreachable
      end
      local.get 0
    )
    (func $_ZN3std5alloc24default_alloc_error_hook17hf9a5b071c6ecdddeE (;147;) (type 0) (param i32 i32))
    (func $rust_oom (;148;) (type 0) (param i32 i32)
      (local i32)
      local.get 0
      local.get 1
      i32.const 0
      i32.load offset=1053572
      local.tee 2
      i32.const 3
      local.get 2
      select
      call_indirect (type 0)
      unreachable
      unreachable
    )
    (func $__rdl_alloc (;149;) (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h23cc83bd27bf5cdaE
    )
    (func $__rdl_dealloc (;150;) (type 3) (param i32 i32 i32)
      local.get 0
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17he46612a523ab9825E
    )
    (func $__rdl_realloc (;151;) (type 8) (param i32 i32 i32 i32) (result i32)
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
              call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h23cc83bd27bf5cdaE
              local.tee 2
              br_if 1 (;@3;)
              i32.const 0
              return
            end
            call $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E
            local.set 1
            i32.const 0
            local.set 2
            local.get 1
            local.get 1
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.add
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
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
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            i32.const -5
            i32.add
            local.get 3
            i32.gt_u
            select
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
            local.set 4
            local.get 0
            call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h2172617900af803cE
            local.set 1
            local.get 1
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
            local.tee 5
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
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
                            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
                            br_if 0 (;@11;)
                            local.get 5
                            local.get 4
                            i32.ge_u
                            br_if 1 (;@10;)
                            local.get 6
                            i32.const 0
                            i32.load offset=1054004
                            i32.eq
                            br_if 2 (;@9;)
                            local.get 6
                            i32.const 0
                            i32.load offset=1054000
                            i32.eq
                            br_if 3 (;@8;)
                            local.get 6
                            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hbff4e714bbaba45cE
                            br_if 7 (;@4;)
                            local.get 6
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
                            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h8329e74e0bcc0b33E
                            br 5 (;@6;)
                          end
                          local.get 1
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
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
                          i32.const 1053592
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
                          i32.const 1053592
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17hd9c2f20f6b517719E
                          call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                          local.tee 5
                          i32.const 1
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17h367e613bf7979b3cE
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
                          call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h411554e62cd84933E
                          local.set 0
                          local.get 1
                          local.get 2
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                          local.get 0
                          i32.store offset=4
                          local.get 1
                          local.get 3
                          i32.const -12
                          i32.add
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                          i32.const 0
                          i32.store offset=4
                          i32.const 0
                          i32.const 0
                          i32.load offset=1054008
                          local.get 5
                          local.get 7
                          i32.sub
                          i32.add
                          local.tee 3
                          i32.store offset=1054008
                          i32.const 0
                          i32.const 0
                          i32.load offset=1054036
                          local.tee 2
                          local.get 4
                          local.get 4
                          local.get 2
                          i32.gt_u
                          select
                          i32.store offset=1054036
                          i32.const 0
                          i32.const 0
                          i32.load offset=1054012
                          local.tee 2
                          local.get 3
                          local.get 2
                          local.get 3
                          i32.gt_u
                          select
                          i32.store offset=1054012
                          br 9 (;@1;)
                        end
                        local.get 5
                        local.get 4
                        i32.sub
                        local.tee 5
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        i32.lt_u
                        br_if 4 (;@5;)
                        local.get 1
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                        local.set 6
                        local.get 1
                        local.get 4
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
                        local.get 6
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
                        local.get 6
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h41fb508ceee1f558E
                        br 4 (;@5;)
                      end
                      i32.const 0
                      i32.load offset=1053996
                      local.get 5
                      i32.add
                      local.tee 5
                      local.get 4
                      i32.le_u
                      br_if 4 (;@4;)
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                      local.set 6
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
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
                      i32.store offset=1053996
                      i32.const 0
                      local.get 6
                      i32.store offset=1054004
                      br 3 (;@5;)
                    end
                    i32.const 0
                    i32.load offset=1053992
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
                        call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                        i32.ge_u
                        br_if 0 (;@9;)
                        local.get 1
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
                        i32.const 0
                        local.set 6
                        i32.const 0
                        local.set 5
                        br 1 (;@8;)
                      end
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                      local.tee 5
                      local.get 6
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                      local.set 7
                      local.get 1
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
                      local.get 5
                      local.get 6
                      call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE
                      local.get 7
                      call $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17ha33848fdac41eaefE
                    end
                    i32.const 0
                    local.get 5
                    i32.store offset=1054000
                    i32.const 0
                    local.get 6
                    i32.store offset=1053992
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
                  i32.load offset=1053592
                  i32.const -2
                  local.get 7
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1053592
                end
                block  ;; label = @6
                  local.get 8
                  i32.const 16
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 1
                  local.get 4
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE
                  local.set 5
                  local.get 1
                  local.get 4
                  call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
                  local.get 5
                  local.get 8
                  call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
                  local.get 5
                  local.get 8
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h41fb508ceee1f558E
                  br 1 (;@5;)
                end
                local.get 1
                local.get 5
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E
              end
              local.get 1
              br_if 3 (;@1;)
            end
            local.get 3
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h2fefae3f37931f2bE
            local.tee 4
            i32.eqz
            br_if 1 (;@2;)
            local.get 4
            local.get 0
            local.get 3
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E
            i32.const -8
            i32.const -4
            local.get 1
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
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
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17he46612a523ab9825E
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
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17he46612a523ab9825E
        end
        local.get 2
        return
      end
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
      drop
      local.get 1
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E
    )
    (func $__rdl_alloc_zeroed (;152;) (type 2) (param i32 i32) (result i32)
      block  ;; label = @1
        local.get 0
        local.get 1
        call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h23cc83bd27bf5cdaE
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        block  ;; label = @2
          i32.const 1053592
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$15allocates_zeros17h7d373e3b5e0719beE
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h2172617900af803cE
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE
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
    (func $rust_begin_unwind (;153;) (type 6) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 0
      call $_ZN4core5panic10panic_info9PanicInfo8location17h5e42e6c75deaf22aE
      i32.const 1049528
      call $_ZN4core6option15Option$LT$T$GT$6unwrap17h7c5b918e99310291E
      local.set 2
      local.get 0
      call $_ZN4core5panic10panic_info9PanicInfo7message17hbbb973caa451b919E
      call $_ZN4core6option15Option$LT$T$GT$6unwrap17hf36fa2f04a35a920E
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
      call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h9f6add6df687a1bfE
      unreachable
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h91ddf63ec07fed85E (;154;) (type 0) (param i32 i32)
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
        local.get 1
        i32.load offset=4
        br_if 0 (;@1;)
        local.get 1
        i32.load
        local.set 4
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.tee 5
        i32.const 0
        i32.store
        local.get 2
        i64.const 1
        i64.store offset=8
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
        local.get 4
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 4
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1049632
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E
        drop
        local.get 3
        i32.const 8
        i32.add
        local.get 5
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
      local.tee 4
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
      i64.const 1
      i64.store offset=4 align=4
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
        call $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E
        unreachable
      end
      local.get 1
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 0
      i32.const 1049560
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h12abc82705b82f7fE (;155;) (type 0) (param i32 i32)
      (local i32 i32 i32)
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
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.tee 4
        i32.const 0
        i32.store
        local.get 2
        i64.const 1
        i64.store offset=8
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
        i32.const 1049632
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E
        drop
        local.get 3
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 3
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 0
      i32.const 1049560
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h7e1fbbe1ae7cf7b6E (;156;) (type 0) (param i32 i32)
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
        call $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E
        unreachable
      end
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049576
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h02734b0b0633bb71E (;157;) (type 0) (param i32 i32)
      local.get 0
      i32.const 1049576
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN3std9panicking20rust_panic_with_hook17h623ac32ff431b114E (;158;) (type 7) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      i32.const 1
      local.set 6
      i32.const 0
      i32.const 0
      i32.load offset=1053588
      local.tee 7
      i32.const 1
      i32.add
      i32.store offset=1053588
      block  ;; label = @1
        block  ;; label = @2
          i32.const 0
          i32.load8_u offset=1054048
          i32.eqz
          br_if 0 (;@2;)
          i32.const 0
          i32.load offset=1054056
          i32.const 1
          i32.add
          local.set 6
          br 1 (;@1;)
        end
        i32.const 0
        i32.const 1
        i32.store8 offset=1054048
      end
      i32.const 0
      local.get 6
      i32.store offset=1054056
      block  ;; label = @1
        block  ;; label = @2
          local.get 7
          i32.const 0
          i32.lt_s
          br_if 0 (;@2;)
          local.get 6
          i32.const 2
          i32.gt_u
          br_if 0 (;@2;)
          local.get 5
          local.get 4
          i32.store8 offset=24
          local.get 5
          local.get 3
          i32.store offset=20
          local.get 5
          local.get 2
          i32.store offset=16
          i32.const 0
          i32.load offset=1053576
          local.tee 7
          i32.const -1
          i32.le_s
          br_if 0 (;@2;)
          i32.const 0
          local.get 7
          i32.const 1
          i32.add
          local.tee 7
          i32.store offset=1053576
          block  ;; label = @3
            i32.const 0
            i32.load offset=1053584
            local.tee 2
            i32.eqz
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1053580
            local.set 7
            local.get 5
            local.get 0
            local.get 1
            i32.load offset=16
            call_indirect (type 0)
            local.get 5
            local.get 5
            i64.load
            i64.store offset=8
            local.get 7
            local.get 5
            i32.const 8
            i32.add
            local.get 2
            i32.load offset=20
            call_indirect (type 0)
            i32.const 0
            i32.load offset=1053576
            local.set 7
          end
          i32.const 0
          local.get 7
          i32.const -1
          i32.add
          i32.store offset=1053576
          local.get 6
          i32.const 1
          i32.gt_u
          br_if 0 (;@2;)
          local.get 4
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
    (func $rust_panic (;159;) (type 0) (param i32 i32)
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
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h83941b921eb65d3bE (;160;) (type 1) (param i32 i32 i32) (result i32)
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
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h19307cc5d90fab9fE
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
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc27d15451f1c85eaE (;161;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hbae7b0c17d0cd96bE
      drop
      i32.const 0
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h97b2f7bbe03aaa72E (;162;) (type 2) (param i32 i32) (result i32)
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
      i32.const 1049632
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $__rust_start_panic (;163;) (type 5) (param i32) (result i32)
      unreachable
      unreachable
    )
    (func $_ZN8dlmalloc8dlmalloc8align_up17h5bab4ebd6a272344E (;164;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN8dlmalloc8dlmalloc9left_bits17hacac5fff18d15d50E (;165;) (type 5) (param i32) (result i32)
      local.get 0
      i32.const 1
      i32.shl
      local.tee 0
      i32.const 0
      local.get 0
      i32.sub
      i32.or
    )
    (func $_ZN8dlmalloc8dlmalloc9least_bit17he1679cf76a7d2685E (;166;) (type 5) (param i32) (result i32)
      i32.const 0
      local.get 0
      i32.sub
      local.get 0
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h36ac46c2531b340cE (;167;) (type 5) (param i32) (result i32)
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
    (func $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h411554e62cd84933E (;168;) (type 11) (result i32)
      i32.const 7
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk4size17h21e6256dacef1d17E (;169;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=4
      i32.const -8
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hbff4e714bbaba45cE (;170;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=4
      i32.const 2
      i32.and
      i32.const 1
      i32.shr_u
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17hae23a37ce588a018E (;171;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17ha33848fdac41eaefE (;172;) (type 6) (param i32)
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h1d29ca00bc367943E (;173;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=4
      i32.const 3
      i32.and
      i32.const 1
      i32.ne
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17h4fb25d673441e93bE (;174;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=4
      i32.const 3
      i32.and
      i32.eqz
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h0aa33b46d8ec6355E (;175;) (type 0) (param i32 i32)
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
      local.get 0
      local.get 1
      i32.add
      local.tee 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hd4326a8963a8844dE (;176;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h34173eeb1c4e1668E (;177;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      i32.or
      i32.store offset=4
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17h1db3711750c6e26eE (;178;) (type 0) (param i32 i32)
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
    (func $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h4e149f1c99319e99E (;179;) (type 3) (param i32 i32 i32)
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
    (func $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17h4d99beb5cc19a5feE (;180;) (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.add
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17hff099046b8cff288E (;181;) (type 2) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.sub
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17hc5f2207675abaeb7E (;182;) (type 5) (param i32) (result i32)
      local.get 0
      i32.const 8
      i32.add
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk10mem_offset17h7f8bbc746e6d1d66E (;183;) (type 11) (result i32)
      i32.const 8
    )
    (func $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h2172617900af803cE (;184;) (type 5) (param i32) (result i32)
      local.get 0
      i32.const -8
      i32.add
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17h20bee2022357dd21E (;185;) (type 5) (param i32) (result i32)
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
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17he10ba08935823944E (;186;) (type 5) (param i32) (result i32)
      local.get 0
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hf5dbf1a695fac572E (;187;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=12
    )
    (func $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17h4dc3c7f6f0802890E (;188;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=8
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h4d4b9ff2e41c71efE (;189;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=12
      i32.const 1
      i32.and
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h42a509b8233399acE (;190;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=12
      i32.const 1
      i32.shr_u
    )
    (func $_ZN8dlmalloc8dlmalloc7Segment5holds17ha8fc9fa3051ce55fE (;191;) (type 2) (param i32 i32) (result i32)
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
    (func $_ZN8dlmalloc8dlmalloc7Segment3top17he9ce965dff337f4fE (;192;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      i32.add
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17h22b7ae7103c4522cE (;193;) (type 3) (param i32 i32 i32)
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
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17h367e613bf7979b3cE (;194;) (type 13) (param i32 i32 i32 i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17h177413caa222145fE (;195;) (type 8) (param i32 i32 i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17he34c55096b06c311E (;196;) (type 1) (param i32 i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hd2ea68d8f6f2fe53E (;197;) (type 2) (param i32 i32) (result i32)
      i32.const 0
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$15allocates_zeros17h7d373e3b5e0719beE (;198;) (type 5) (param i32) (result i32)
      i32.const 1
    )
    (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17hd9c2f20f6b517719E (;199;) (type 5) (param i32) (result i32)
      i32.const 65536
    )
    (func $_ZN4core3ops8function6FnOnce9call_once17h104529aa81b44c4eE (;200;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN5alloc5alloc18handle_alloc_error8rt_error17hc05c98d79426d4d3E
      unreachable
    )
    (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17hc05c98d79426d4d3E (;201;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $__rust_alloc_error_handler
      unreachable
    )
    (func $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h1dee28d988c24e68E (;202;) (type 6) (param i32))
    (func $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E (;203;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN4core10intrinsics17const_eval_select17hbbf517c24e8eee9cE
      unreachable
    )
    (func $_ZN5alloc7raw_vec17capacity_overflow17h6cc29c2e3c52ebb8E (;204;) (type 10)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      local.get 0
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1049684
      i32.store offset=24
      local.get 0
      i64.const 1
      i64.store offset=12 align=4
      local.get 0
      i32.const 1049704
      i32.store offset=8
      local.get 0
      i32.const 8
      i32.add
      i32.const 1049712
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN4core10intrinsics17const_eval_select17hbbf517c24e8eee9cE (;205;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN4core3ops8function6FnOnce9call_once17h104529aa81b44c4eE
      unreachable
    )
    (func $__rg_oom (;206;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      call $rust_oom
      unreachable
    )
    (func $_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd51166172bbfa00E (;207;) (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 1
      i32.const 1049728
      i32.const 13
      call $_ZN4core3fmt9Formatter12debug_struct17ha977b1ed6bb999d3E
      i64.store
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 2
      i32.const 1049741
      i32.const 5
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049748
      call $_ZN4core3fmt8builders11DebugStruct5field17ha17f926ddbc76bc6E
      drop
      local.get 2
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=12
      local.get 2
      i32.const 1049764
      i32.const 5
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049772
      call $_ZN4core3fmt8builders11DebugStruct5field17ha17f926ddbc76bc6E
      drop
      local.get 2
      call $_ZN4core3fmt8builders11DebugStruct6finish17hca2b8d984b1c8354E
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h261adddec5b85affE (;208;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.set 0
      block  ;; label = @1
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_lower_hex17hda1966ef6acea071E
        br_if 0 (;@1;)
        block  ;; label = @2
          local.get 1
          call $_ZN4core3fmt9Formatter15debug_upper_hex17ha5c6d01aedf399b3E
          br_if 0 (;@2;)
          local.get 0
          local.get 1
          call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4110e08c3d446775E
          return
        end
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h78f1f52be23db7efE
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hc729f77ac029c8a3E
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd764aeadf3195527E (;209;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e931cfdb7166e31E
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6854f7535f653ecE (;210;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core3fmt9Formatter10debug_list17hcc0d31ad81615f98E
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
          i32.const 1049788
          call $_ZN4core3fmt8builders8DebugSet5entry17h2ebc80f2a405af07E
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
      call $_ZN4core3fmt8builders9DebugList6finish17h97668722a33c7b45E
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3ops8function6FnOnce9call_once17h0fb29489d2b00b7bE (;211;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      drop
      loop (result i32)  ;; label = @1
        br 0 (;@1;)
      end
    )
    (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hb157a09373bf5ee3E (;212;) (type 6) (param i32))
    (func $_ZN4core9panicking18panic_bounds_check17he4f030d1ec9ef522E (;213;) (type 3) (param i32 i32 i32)
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
      i32.const 1049928
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
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E (;214;) (type 3) (param i32 i32 i32)
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
      i32.const 1050480
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
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN4core5slice5index24slice_end_index_len_fail17h307ffac6a7b3d799E (;215;) (type 3) (param i32 i32 i32)
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
      i32.const 1050512
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
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN4core3fmt9Formatter3pad17h2c9022a4c9c225b1E (;216;) (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      i32.load offset=16
      local.set 3
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  i32.const 1
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 1
                  i32.ne
                  br_if 1 (;@5;)
                end
                local.get 3
                i32.const 1
                i32.ne
                br_if 3 (;@2;)
                local.get 1
                local.get 2
                i32.add
                local.set 5
                local.get 0
                i32.const 20
                i32.add
                i32.load
                local.tee 6
                br_if 1 (;@4;)
                i32.const 0
                local.set 7
                local.get 1
                local.set 8
                br 2 (;@3;)
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
              local.set 3
              br 3 (;@1;)
            end
            i32.const 0
            local.set 7
            local.get 1
            local.set 8
            loop  ;; label = @4
              local.get 8
              local.tee 3
              local.get 5
              i32.eq
              br_if 2 (;@2;)
              block  ;; label = @5
                block  ;; label = @6
                  local.get 3
                  i32.load8_s
                  local.tee 8
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 8
                  br 1 (;@5;)
                end
                block  ;; label = @6
                  local.get 8
                  i32.const -32
                  i32.ge_u
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 2
                  i32.add
                  local.set 8
                  br 1 (;@5;)
                end
                block  ;; label = @6
                  local.get 8
                  i32.const -16
                  i32.ge_u
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 3
                  i32.add
                  local.set 8
                  br 1 (;@5;)
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
                i32.const 255
                i32.and
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                i32.const 1114112
                i32.eq
                br_if 3 (;@2;)
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
              br_if 0 (;@4;)
            end
          end
          local.get 8
          local.get 5
          i32.eq
          br_if 0 (;@2;)
          block  ;; label = @3
            local.get 8
            i32.load8_s
            local.tee 3
            i32.const -1
            i32.gt_s
            br_if 0 (;@3;)
            local.get 3
            i32.const -32
            i32.lt_u
            br_if 0 (;@3;)
            local.get 3
            i32.const -16
            i32.lt_u
            br_if 0 (;@3;)
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
            i32.const 255
            i32.and
            i32.const 18
            i32.shl
            i32.const 1835008
            i32.and
            i32.or
            i32.const 1114112
            i32.eq
            br_if 1 (;@2;)
          end
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                local.get 7
                br_if 0 (;@5;)
                i32.const 0
                local.set 8
                br 1 (;@4;)
              end
              block  ;; label = @5
                local.get 7
                local.get 2
                i32.lt_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 3
                local.get 2
                local.set 8
                local.get 7
                local.get 2
                i32.eq
                br_if 1 (;@4;)
                br 2 (;@3;)
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
              br_if 1 (;@3;)
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
        block  ;; label = @2
          local.get 4
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
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 1
            local.get 2
            call $_ZN4core3str5count14do_count_chars17h916e21cd03064b1eE
            local.set 8
            br 1 (;@2;)
          end
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
            local.get 2
            i32.const -4
            i32.and
            local.set 6
            i32.const 0
            local.set 8
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
              i32.const -4
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
          local.set 6
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
              local.set 6
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
            local.set 6
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
          local.set 0
          block  ;; label = @3
            loop  ;; label = @4
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              i32.eqz
              br_if 1 (;@3;)
              local.get 0
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
          local.get 0
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
              local.get 6
              local.get 3
              i32.ne
              br_if 0 (;@4;)
              local.get 6
              local.get 6
              i32.lt_u
              return
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 0
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
          local.get 6
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
    (func $_ZN4core9panicking5panic17he88f1b1582b09c8cE (;217;) (type 3) (param i32 i32 i32)
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
      i32.const 1049804
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
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN4core5slice5index22slice_index_order_fail17hf1f5107bf9624a94E (;218;) (type 3) (param i32 i32 i32)
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
      i32.const 1050564
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
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h1de381c7fe17233bE (;219;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i64.load32_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417h370531919577d25bE
    )
    (func $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE (;220;) (type 0) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 1
      i32.store8 offset=24
      local.get 2
      local.get 1
      i32.store offset=20
      local.get 2
      local.get 0
      i32.store offset=16
      local.get 2
      i32.const 1049860
      i32.store offset=12
      local.get 2
      i32.const 1049804
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.add
      call $rust_begin_unwind
      unreachable
    )
    (func $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E (;221;) (type 1) (param i32 i32 i32) (result i32)
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
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
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
            local.set 8
            local.get 0
            i32.const -1
            i32.add
            i32.const 134217727
            i32.and
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
    (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf878370c7dd27ea0E (;222;) (type 2) (param i32 i32) (result i32)
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
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h596db3bf82f8abcbE
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
        i32.const 1049804
        i32.store offset=24
        local.get 2
        i64.const 1
        i64.store offset=12 align=4
        local.get 2
        i32.const 1049808
        i32.store offset=8
        local.get 5
        local.get 4
        local.get 2
        i32.const 8
        i32.add
        call $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E
        br_if 0 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h596db3bf82f8abcbE
        local.set 3
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h596db3bf82f8abcbE (;223;) (type 2) (param i32 i32) (result i32)
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
                call $_ZN4core3fmt3num3imp7fmt_u6417h370531919577d25bE
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
              i32.const 1050152
              i32.const 2
              local.get 2
              local.get 3
              i32.add
              i32.const 128
              i32.add
              i32.const 0
              local.get 3
              i32.sub
              call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
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
            i32.const 1050152
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
            local.set 0
            br 2 (;@1;)
          end
          local.get 0
          i32.const 128
          i32.const 1050136
          call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
          unreachable
        end
        local.get 0
        i32.const 128
        i32.const 1050136
        call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
        unreachable
      end
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h02851016e297d883E (;224;) (type 12) (param i32) (result i64)
      i64.const 1502398661243083777
    )
    (func $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17hafade5aaff30feefE (;225;) (type 3) (param i32 i32 i32)
      (local i32 i32 i64)
      i32.const 116
      local.set 3
      i32.const 2
      local.set 4
      block  ;; label = @1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        local.get 1
                        i32.const -9
                        i32.add
                        br_table 8 (;@1;) 2 (;@7;) 5 (;@4;) 5 (;@4;) 1 (;@8;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 3 (;@6;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 5 (;@4;) 4 (;@5;) 0 (;@9;)
                      end
                      i32.const 92
                      local.set 3
                      local.get 1
                      i32.const 92
                      i32.eq
                      br_if 5 (;@3;)
                      br 4 (;@4;)
                    end
                    i32.const 114
                    local.set 3
                    br 4 (;@3;)
                  end
                  i32.const 110
                  local.set 3
                  br 3 (;@3;)
                end
                local.get 2
                i32.const 65536
                i32.and
                i32.eqz
                br_if 1 (;@4;)
                i32.const 34
                local.set 3
                br 2 (;@3;)
              end
              local.get 2
              i32.const 256
              i32.and
              i32.eqz
              br_if 0 (;@4;)
              i32.const 39
              local.set 3
              br 1 (;@3;)
            end
            block  ;; label = @4
              local.get 2
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h400c9b341f99bc60E
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
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
              local.set 5
              br 2 (;@2;)
            end
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    local.get 1
                    i32.const 65536
                    i32.lt_u
                    br_if 0 (;@7;)
                    local.get 1
                    i32.const 131072
                    i32.ge_u
                    br_if 1 (;@6;)
                    local.get 1
                    i32.const 1051847
                    i32.const 42
                    i32.const 1051931
                    i32.const 192
                    i32.const 1052123
                    i32.const 438
                    call $_ZN4core7unicode9printable5check17h90149b830d9a10dbE
                    br_if 3 (;@4;)
                    br 2 (;@5;)
                  end
                  local.get 1
                  i32.const 1051176
                  i32.const 40
                  i32.const 1051256
                  i32.const 288
                  i32.const 1051544
                  i32.const 303
                  call $_ZN4core7unicode9printable5check17h90149b830d9a10dbE
                  i32.eqz
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                local.get 1
                i32.const 2097120
                i32.and
                i32.const 173792
                i32.eq
                br_if 0 (;@5;)
                local.get 1
                i32.const -177984
                i32.add
                i32.const -8
                i32.gt_u
                br_if 0 (;@5;)
                local.get 1
                i32.const 2097150
                i32.and
                i32.const 178206
                i32.eq
                br_if 0 (;@5;)
                local.get 1
                i32.const -183984
                i32.add
                i32.const -15
                i32.gt_u
                br_if 0 (;@5;)
                local.get 1
                i32.const -194560
                i32.add
                i32.const -3104
                i32.gt_u
                br_if 0 (;@5;)
                local.get 1
                i32.const -196608
                i32.add
                i32.const -1507
                i32.gt_u
                br_if 0 (;@5;)
                local.get 1
                i32.const -917760
                i32.add
                i32.const -716214
                i32.gt_u
                br_if 0 (;@5;)
                local.get 1
                i32.const 918000
                i32.lt_u
                br_if 1 (;@4;)
              end
              local.get 1
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
              local.set 5
              br 2 (;@2;)
            end
            i32.const 1
            local.set 4
            local.get 1
            local.set 3
          end
          br 1 (;@1;)
        end
        i32.const 3
        local.set 4
        local.get 1
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 0
      i32.const 8
      i32.add
      local.get 5
      i64.store align=4
    )
    (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h400c9b341f99bc60E (;226;) (type 5) (param i32) (result i32)
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
                i32.const 1052708
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
              i32.const 1052712
              i32.add
              i32.load
              i32.const 21
              i32.shr_u
              local.set 4
            end
            i32.const 0
            local.set 1
            block  ;; label = @4
              local.get 2
              i32.const -1
              i32.add
              local.tee 5
              local.get 2
              i32.gt_u
              br_if 0 (;@4;)
              local.get 5
              i32.const 32
              i32.ge_u
              br_if 2 (;@2;)
              local.get 5
              i32.const 2
              i32.shl
              i32.const 1052708
              i32.add
              i32.load
              i32.const 2097151
              i32.and
              local.set 1
            end
            block  ;; label = @4
              local.get 4
              local.get 3
              i32.const 1052708
              i32.add
              i32.load
              i32.const 21
              i32.shr_u
              local.tee 2
              i32.const -1
              i32.xor
              i32.add
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              local.get 1
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
                i32.const 1052836
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
          i32.const 1052604
          call $_ZN4core9panicking18panic_bounds_check17he4f030d1ec9ef522E
          unreachable
        end
        local.get 5
        i32.const 32
        i32.const 1052636
        call $_ZN4core9panicking18panic_bounds_check17he4f030d1ec9ef522E
        unreachable
      end
      local.get 3
      i32.const 707
      i32.const 1052620
      call $_ZN4core9panicking18panic_bounds_check17he4f030d1ec9ef522E
      unreachable
    )
    (func $_ZN4core7unicode9printable5check17h90149b830d9a10dbE (;227;) (type 14) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      i32.const 1
      local.set 7
      block  ;; label = @1
        block  ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          local.get 2
          i32.const 1
          i32.shl
          i32.add
          local.set 8
          local.get 0
          i32.const 65280
          i32.and
          i32.const 8
          i32.shr_u
          local.set 9
          i32.const 0
          local.set 10
          local.get 0
          i32.const 255
          i32.and
          local.set 11
          block  ;; label = @3
            loop  ;; label = @4
              local.get 1
              i32.const 2
              i32.add
              local.set 12
              local.get 10
              local.get 1
              i32.load8_u offset=1
              local.tee 2
              i32.add
              local.set 13
              block  ;; label = @5
                local.get 1
                i32.load8_u
                local.tee 1
                local.get 9
                i32.eq
                br_if 0 (;@5;)
                local.get 1
                local.get 9
                i32.gt_u
                br_if 3 (;@2;)
                local.get 13
                local.set 10
                local.get 12
                local.set 1
                local.get 12
                local.get 8
                i32.ne
                br_if 1 (;@4;)
                br 3 (;@2;)
              end
              block  ;; label = @5
                local.get 13
                local.get 10
                i32.lt_u
                br_if 0 (;@5;)
                local.get 13
                local.get 4
                i32.gt_u
                br_if 2 (;@3;)
                local.get 3
                local.get 10
                i32.add
                local.set 1
                block  ;; label = @6
                  loop  ;; label = @7
                    local.get 2
                    i32.eqz
                    br_if 1 (;@6;)
                    local.get 2
                    i32.const -1
                    i32.add
                    local.set 2
                    local.get 1
                    i32.load8_u
                    local.set 10
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 10
                    local.get 11
                    i32.ne
                    br_if 0 (;@7;)
                  end
                  i32.const 0
                  local.set 7
                  br 5 (;@1;)
                end
                local.get 13
                local.set 10
                local.get 12
                local.set 1
                local.get 12
                local.get 8
                i32.ne
                br_if 1 (;@4;)
                br 3 (;@2;)
              end
            end
            local.get 10
            local.get 13
            i32.const 1051144
            call $_ZN4core5slice5index22slice_index_order_fail17hf1f5107bf9624a94E
            unreachable
          end
          local.get 13
          local.get 4
          i32.const 1051144
          call $_ZN4core5slice5index24slice_end_index_len_fail17h307ffac6a7b3d799E
          unreachable
        end
        local.get 6
        i32.eqz
        br_if 0 (;@1;)
        local.get 5
        local.get 6
        i32.add
        local.set 11
        local.get 0
        i32.const 65535
        i32.and
        local.set 1
        i32.const 1
        local.set 7
        block  ;; label = @2
          loop  ;; label = @3
            local.get 5
            i32.const 1
            i32.add
            local.set 10
            block  ;; label = @4
              block  ;; label = @5
                local.get 5
                i32.load8_u
                local.tee 2
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                local.tee 13
                i32.const 0
                i32.lt_s
                br_if 0 (;@5;)
                local.get 10
                local.set 5
                br 1 (;@4;)
              end
              local.get 10
              local.get 11
              i32.eq
              br_if 2 (;@2;)
              local.get 13
              i32.const 127
              i32.and
              i32.const 8
              i32.shl
              local.get 5
              i32.load8_u offset=1
              i32.or
              local.set 2
              local.get 5
              i32.const 2
              i32.add
              local.set 5
            end
            local.get 1
            local.get 2
            i32.sub
            local.tee 1
            i32.const 0
            i32.lt_s
            br_if 2 (;@1;)
            local.get 7
            i32.const 1
            i32.xor
            local.set 7
            local.get 5
            local.get 11
            i32.ne
            br_if 0 (;@3;)
            br 2 (;@1;)
          end
        end
        i32.const 1049816
        i32.const 43
        i32.const 1051160
        call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
        unreachable
      end
      local.get 7
      i32.const 1
      i32.and
    )
    (func $_ZN4core3fmt8builders11DebugStruct5field17ha17f926ddbc76bc6E (;228;) (type 13) (param i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i64 i64)
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
          i32.load
          local.tee 9
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load offset=24
          i32.const 1050077
          i32.const 1050079
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
          i32.const 1049961
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
          i32.const 1050072
          i32.const 3
          local.get 8
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@1;)
          local.get 8
          i32.load
          local.set 9
        end
        i32.const 1
        local.set 6
        local.get 5
        i32.const 1
        i32.store8 offset=23
        local.get 5
        i32.const 52
        i32.add
        i32.const 1049980
        i32.store
        local.get 5
        i32.const 16
        i32.add
        local.get 5
        i32.const 23
        i32.add
        i32.store
        local.get 5
        local.get 9
        i32.store offset=24
        local.get 5
        local.get 8
        i64.load offset=24 align=4
        i64.store offset=8
        local.get 8
        i64.load offset=8 align=4
        local.set 10
        local.get 8
        i64.load offset=16 align=4
        local.set 11
        local.get 5
        local.get 8
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 5
        local.get 8
        i32.load offset=4
        i32.store offset=28
        local.get 5
        local.get 11
        i64.store offset=40
        local.get 5
        local.get 10
        i64.store offset=32
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
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE
        br_if 0 (;@1;)
        local.get 5
        i32.const 8
        i32.add
        i32.const 1049961
        i32.const 2
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE
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
        i32.const 1050075
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
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb15fe0cb47bd378bE (;229;) (type 2) (param i32 i32) (result i32)
      local.get 1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      call $_ZN4core3fmt9Formatter3pad17h2c9022a4c9c225b1E
    )
    (func $_ZN4core5panic10panic_info9PanicInfo7message17hbbb973caa451b919E (;230;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=8
    )
    (func $_ZN4core5panic10panic_info9PanicInfo8location17h5e42e6c75deaf22aE (;231;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load offset=12
    )
    (func $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h2d967851d58bdc57E (;232;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=16
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2452d5de6cc2de42E (;233;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 2)
    )
    (func $_ZN4core6result13unwrap_failed17ha62420c192a556daE (;234;) (type 7) (param i32 i32 i32 i32 i32)
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
      i32.const 1049964
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
      call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
      unreachable
    )
    (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE (;235;) (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load offset=4
          local.set 3
          local.get 0
          i32.load
          local.set 4
          local.get 0
          i32.load offset=8
          local.set 5
          loop  ;; label = @3
            block  ;; label = @4
              local.get 5
              i32.load8_u
              i32.eqz
              br_if 0 (;@4;)
              local.get 4
              i32.const 1050004
              i32.const 4
              local.get 3
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@4;)
              i32.const 1
              return
            end
            i32.const 0
            local.set 6
            local.get 2
            local.set 7
            block  ;; label = @4
              block  ;; label = @5
                block  ;; label = @6
                  block  ;; label = @7
                    loop  ;; label = @8
                      local.get 1
                      local.get 6
                      i32.add
                      local.set 8
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            block  ;; label = @12
                              block  ;; label = @13
                                local.get 7
                                i32.const 8
                                i32.lt_u
                                br_if 0 (;@13;)
                                block  ;; label = @14
                                  local.get 8
                                  i32.const 3
                                  i32.add
                                  i32.const -4
                                  i32.and
                                  local.get 8
                                  i32.sub
                                  local.tee 0
                                  br_if 0 (;@14;)
                                  local.get 7
                                  i32.const -8
                                  i32.add
                                  local.set 9
                                  i32.const 0
                                  local.set 0
                                  br 3 (;@11;)
                                end
                                local.get 7
                                local.get 0
                                local.get 0
                                local.get 7
                                i32.gt_u
                                select
                                local.set 0
                                i32.const 0
                                local.set 10
                                loop  ;; label = @14
                                  local.get 8
                                  local.get 10
                                  i32.add
                                  i32.load8_u
                                  i32.const 10
                                  i32.eq
                                  br_if 5 (;@9;)
                                  local.get 0
                                  local.get 10
                                  i32.const 1
                                  i32.add
                                  local.tee 10
                                  i32.eq
                                  br_if 2 (;@12;)
                                  br 0 (;@14;)
                                end
                              end
                              local.get 7
                              i32.eqz
                              br_if 5 (;@7;)
                              i32.const 0
                              local.set 10
                              local.get 8
                              i32.load8_u
                              i32.const 10
                              i32.eq
                              br_if 3 (;@9;)
                              local.get 7
                              i32.const 1
                              i32.eq
                              br_if 5 (;@7;)
                              i32.const 1
                              local.set 10
                              local.get 8
                              i32.load8_u offset=1
                              i32.const 10
                              i32.eq
                              br_if 3 (;@9;)
                              local.get 7
                              i32.const 2
                              i32.eq
                              br_if 5 (;@7;)
                              i32.const 2
                              local.set 10
                              local.get 8
                              i32.load8_u offset=2
                              i32.const 10
                              i32.eq
                              br_if 3 (;@9;)
                              local.get 7
                              i32.const 3
                              i32.eq
                              br_if 5 (;@7;)
                              i32.const 3
                              local.set 10
                              local.get 8
                              i32.load8_u offset=3
                              i32.const 10
                              i32.eq
                              br_if 3 (;@9;)
                              local.get 7
                              i32.const 4
                              i32.eq
                              br_if 5 (;@7;)
                              i32.const 4
                              local.set 10
                              local.get 8
                              i32.load8_u offset=4
                              i32.const 10
                              i32.eq
                              br_if 3 (;@9;)
                              local.get 7
                              i32.const 5
                              i32.eq
                              br_if 5 (;@7;)
                              i32.const 5
                              local.set 10
                              local.get 8
                              i32.load8_u offset=5
                              i32.const 10
                              i32.eq
                              br_if 3 (;@9;)
                              local.get 7
                              i32.const 6
                              i32.eq
                              br_if 5 (;@7;)
                              i32.const 6
                              local.set 10
                              local.get 8
                              i32.load8_u offset=6
                              i32.const 10
                              i32.ne
                              br_if 5 (;@7;)
                              br 3 (;@9;)
                            end
                            local.get 0
                            local.get 7
                            i32.const -8
                            i32.add
                            local.tee 9
                            i32.gt_u
                            br_if 1 (;@10;)
                          end
                          block  ;; label = @11
                            loop  ;; label = @12
                              local.get 8
                              local.get 0
                              i32.add
                              local.tee 10
                              i32.load
                              local.tee 11
                              i32.const -1
                              i32.xor
                              local.get 11
                              i32.const 168430090
                              i32.xor
                              i32.const -16843009
                              i32.add
                              i32.and
                              local.get 10
                              i32.const 4
                              i32.add
                              i32.load
                              local.tee 10
                              i32.const -1
                              i32.xor
                              local.get 10
                              i32.const 168430090
                              i32.xor
                              i32.const -16843009
                              i32.add
                              i32.and
                              i32.or
                              i32.const -2139062144
                              i32.and
                              br_if 1 (;@11;)
                              local.get 0
                              i32.const 8
                              i32.add
                              local.tee 0
                              local.get 9
                              i32.le_u
                              br_if 0 (;@12;)
                            end
                          end
                          local.get 0
                          local.get 7
                          i32.le_u
                          br_if 0 (;@10;)
                          local.get 0
                          local.get 7
                          i32.const 1050412
                          call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
                          unreachable
                        end
                        local.get 0
                        local.get 7
                        i32.eq
                        br_if 2 (;@7;)
                        local.get 0
                        local.get 7
                        i32.sub
                        local.set 11
                        local.get 8
                        local.get 0
                        i32.add
                        local.set 8
                        i32.const 0
                        local.set 10
                        block  ;; label = @10
                          loop  ;; label = @11
                            local.get 8
                            local.get 10
                            i32.add
                            i32.load8_u
                            i32.const 10
                            i32.eq
                            br_if 1 (;@10;)
                            local.get 11
                            local.get 10
                            i32.const 1
                            i32.add
                            local.tee 10
                            i32.add
                            br_if 0 (;@11;)
                            br 4 (;@7;)
                          end
                        end
                        local.get 0
                        local.get 10
                        i32.add
                        local.set 10
                      end
                      block  ;; label = @9
                        local.get 10
                        local.get 6
                        i32.add
                        local.tee 0
                        i32.const 1
                        i32.add
                        local.tee 6
                        local.get 0
                        i32.lt_u
                        br_if 0 (;@9;)
                        local.get 2
                        local.get 6
                        i32.lt_u
                        br_if 0 (;@9;)
                        local.get 1
                        local.get 0
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.ne
                        br_if 0 (;@9;)
                        local.get 5
                        i32.const 1
                        i32.store8
                        local.get 2
                        local.get 6
                        i32.le_u
                        br_if 3 (;@6;)
                        local.get 6
                        local.set 0
                        local.get 1
                        local.get 6
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 4 (;@5;)
                        br 5 (;@4;)
                      end
                      local.get 2
                      local.get 6
                      i32.sub
                      local.set 7
                      local.get 2
                      local.get 6
                      i32.ge_u
                      br_if 0 (;@8;)
                    end
                  end
                  local.get 5
                  i32.const 0
                  i32.store8
                  local.get 2
                  local.set 6
                end
                local.get 2
                local.set 0
                local.get 2
                local.get 6
                i32.eq
                br_if 1 (;@4;)
              end
              local.get 1
              local.get 2
              i32.const 0
              local.get 6
              i32.const 1050040
              call $_ZN4core3str16slice_error_fail17hc88da01b6001a2e3E
              unreachable
            end
            block  ;; label = @4
              local.get 4
              local.get 1
              local.get 0
              local.get 3
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@4;)
              i32.const 1
              return
            end
            block  ;; label = @4
              block  ;; label = @5
                local.get 2
                local.get 0
                i32.gt_u
                br_if 0 (;@5;)
                local.get 2
                local.get 0
                i32.eq
                br_if 1 (;@4;)
                br 4 (;@1;)
              end
              local.get 1
              local.get 0
              i32.add
              i32.load8_s
              i32.const -65
              i32.le_s
              br_if 3 (;@1;)
            end
            local.get 1
            local.get 0
            i32.add
            local.set 1
            local.get 2
            local.get 0
            i32.sub
            local.tee 2
            br_if 0 (;@3;)
          end
        end
        i32.const 0
        return
      end
      local.get 1
      local.get 2
      local.get 0
      local.get 2
      i32.const 1050056
      call $_ZN4core3str16slice_error_fail17hc88da01b6001a2e3E
      unreachable
    )
    (func $_ZN4core3str16slice_error_fail17hc88da01b6001a2e3E (;236;) (type 7) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32)
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
                    block  ;; label = @8
                      local.get 1
                      i32.const 257
                      i32.lt_u
                      br_if 0 (;@8;)
                      i32.const 256
                      local.set 6
                      block  ;; label = @9
                        local.get 0
                        i32.load8_s offset=256
                        i32.const -65
                        i32.gt_s
                        br_if 0 (;@9;)
                        i32.const 255
                        local.set 6
                        local.get 0
                        i32.load8_s offset=255
                        i32.const -65
                        i32.gt_s
                        br_if 0 (;@9;)
                        i32.const 254
                        local.set 6
                        local.get 0
                        i32.load8_s offset=254
                        i32.const -65
                        i32.gt_s
                        br_if 0 (;@9;)
                        i32.const 253
                        local.set 6
                      end
                      local.get 6
                      local.get 1
                      i32.lt_u
                      br_if 1 (;@7;)
                      local.get 6
                      local.get 1
                      i32.ne
                      br_if 3 (;@5;)
                    end
                    local.get 5
                    local.get 1
                    i32.store offset=20
                    local.get 5
                    local.get 0
                    i32.store offset=16
                    i32.const 0
                    local.set 6
                    i32.const 1049804
                    local.set 7
                    br 1 (;@6;)
                  end
                  local.get 5
                  local.get 6
                  i32.store offset=20
                  local.get 5
                  local.get 0
                  i32.store offset=16
                  i32.const 5
                  local.set 6
                  i32.const 1050836
                  local.set 7
                end
                local.get 5
                local.get 6
                i32.store offset=28
                local.get 5
                local.get 7
                i32.store offset=24
                local.get 2
                local.get 1
                i32.gt_u
                local.tee 6
                br_if 1 (;@4;)
                local.get 3
                local.get 1
                i32.gt_u
                br_if 1 (;@4;)
                block  ;; label = @6
                  local.get 2
                  local.get 3
                  i32.gt_u
                  br_if 0 (;@6;)
                  block  ;; label = @7
                    block  ;; label = @8
                      local.get 2
                      i32.eqz
                      br_if 0 (;@8;)
                      block  ;; label = @9
                        local.get 2
                        local.get 1
                        i32.lt_u
                        br_if 0 (;@9;)
                        local.get 1
                        local.get 2
                        i32.eq
                        br_if 1 (;@8;)
                        br 2 (;@7;)
                      end
                      local.get 0
                      local.get 2
                      i32.add
                      i32.load8_s
                      i32.const -64
                      i32.lt_s
                      br_if 1 (;@7;)
                    end
                    local.get 3
                    local.set 2
                  end
                  local.get 5
                  local.get 2
                  i32.store offset=32
                  local.get 1
                  local.set 3
                  block  ;; label = @7
                    local.get 2
                    local.get 1
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 1
                    i32.add
                    local.tee 6
                    i32.const 0
                    local.get 2
                    i32.const -3
                    i32.add
                    local.tee 3
                    local.get 3
                    local.get 2
                    i32.gt_u
                    select
                    local.tee 3
                    i32.lt_u
                    br_if 4 (;@3;)
                    block  ;; label = @8
                      local.get 3
                      local.get 6
                      i32.eq
                      br_if 0 (;@8;)
                      local.get 0
                      local.get 6
                      i32.add
                      local.get 0
                      local.get 3
                      i32.add
                      local.tee 8
                      i32.sub
                      local.set 6
                      block  ;; label = @9
                        local.get 0
                        local.get 2
                        i32.add
                        local.tee 9
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 0 (;@9;)
                        local.get 6
                        i32.const -1
                        i32.add
                        local.set 7
                        br 1 (;@8;)
                      end
                      local.get 3
                      local.get 2
                      i32.eq
                      br_if 0 (;@8;)
                      block  ;; label = @9
                        local.get 9
                        i32.const -1
                        i32.add
                        local.tee 2
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 0 (;@9;)
                        local.get 6
                        i32.const -2
                        i32.add
                        local.set 7
                        br 1 (;@8;)
                      end
                      local.get 8
                      local.get 2
                      i32.eq
                      br_if 0 (;@8;)
                      block  ;; label = @9
                        local.get 9
                        i32.const -2
                        i32.add
                        local.tee 2
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 0 (;@9;)
                        local.get 6
                        i32.const -3
                        i32.add
                        local.set 7
                        br 1 (;@8;)
                      end
                      local.get 8
                      local.get 2
                      i32.eq
                      br_if 0 (;@8;)
                      block  ;; label = @9
                        local.get 9
                        i32.const -3
                        i32.add
                        local.tee 2
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 0 (;@9;)
                        local.get 6
                        i32.const -4
                        i32.add
                        local.set 7
                        br 1 (;@8;)
                      end
                      local.get 8
                      local.get 2
                      i32.eq
                      br_if 0 (;@8;)
                      local.get 6
                      i32.const -5
                      i32.add
                      local.set 7
                    end
                    local.get 7
                    local.get 3
                    i32.add
                    local.set 3
                  end
                  block  ;; label = @7
                    local.get 3
                    i32.eqz
                    br_if 0 (;@7;)
                    block  ;; label = @8
                      local.get 3
                      local.get 1
                      i32.lt_u
                      br_if 0 (;@8;)
                      local.get 3
                      local.get 1
                      i32.eq
                      br_if 1 (;@7;)
                      br 7 (;@1;)
                    end
                    local.get 0
                    local.get 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 6 (;@1;)
                  end
                  local.get 3
                  local.get 1
                  i32.eq
                  br_if 4 (;@2;)
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        block  ;; label = @10
                          local.get 0
                          local.get 3
                          i32.add
                          local.tee 2
                          i32.load8_s
                          local.tee 1
                          i32.const -1
                          i32.gt_s
                          br_if 0 (;@10;)
                          local.get 2
                          i32.load8_u offset=1
                          i32.const 63
                          i32.and
                          local.set 0
                          local.get 1
                          i32.const 31
                          i32.and
                          local.set 6
                          local.get 1
                          i32.const -33
                          i32.gt_u
                          br_if 1 (;@9;)
                          local.get 6
                          i32.const 6
                          i32.shl
                          local.get 0
                          i32.or
                          local.set 2
                          br 2 (;@8;)
                        end
                        local.get 5
                        local.get 1
                        i32.const 255
                        i32.and
                        i32.store offset=36
                        i32.const 1
                        local.set 1
                        br 2 (;@7;)
                      end
                      local.get 0
                      i32.const 6
                      i32.shl
                      local.get 2
                      i32.load8_u offset=2
                      i32.const 63
                      i32.and
                      i32.or
                      local.set 0
                      block  ;; label = @9
                        local.get 1
                        i32.const -16
                        i32.ge_u
                        br_if 0 (;@9;)
                        local.get 0
                        local.get 6
                        i32.const 12
                        i32.shl
                        i32.or
                        local.set 2
                        br 1 (;@8;)
                      end
                      local.get 0
                      i32.const 6
                      i32.shl
                      local.get 2
                      i32.load8_u offset=3
                      i32.const 63
                      i32.and
                      i32.or
                      local.get 6
                      i32.const 18
                      i32.shl
                      i32.const 1835008
                      i32.and
                      i32.or
                      local.tee 2
                      i32.const 1114112
                      i32.eq
                      br_if 6 (;@2;)
                    end
                    local.get 5
                    local.get 2
                    i32.store offset=36
                    i32.const 1
                    local.set 1
                    local.get 2
                    i32.const 128
                    i32.lt_u
                    br_if 0 (;@7;)
                    i32.const 2
                    local.set 1
                    local.get 2
                    i32.const 2048
                    i32.lt_u
                    br_if 0 (;@7;)
                    i32.const 3
                    i32.const 4
                    local.get 2
                    i32.const 65536
                    i32.lt_u
                    select
                    local.set 1
                  end
                  local.get 5
                  local.get 3
                  i32.store offset=40
                  local.get 5
                  local.get 1
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
                  i32.const 1051020
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
                  call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
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
                i32.const 1050936
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
                call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
                unreachable
              end
              local.get 0
              local.get 1
              i32.const 0
              local.get 6
              local.get 4
              call $_ZN4core3str16slice_error_fail17hc88da01b6001a2e3E
              unreachable
            end
            local.get 5
            local.get 2
            local.get 3
            local.get 6
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
            i32.const 1050876
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
            call $_ZN4core9panicking9panic_fmt17h5118e89563022e7eE
            unreachable
          end
          local.get 3
          local.get 6
          i32.const 1051088
          call $_ZN4core5slice5index22slice_index_order_fail17hf1f5107bf9624a94E
          unreachable
        end
        i32.const 1049816
        i32.const 43
        local.get 4
        call $_ZN4core9panicking5panic17he88f1b1582b09c8cE
        unreachable
      end
      local.get 0
      local.get 1
      local.get 3
      local.get 1
      local.get 4
      call $_ZN4core3str16slice_error_fail17hc88da01b6001a2e3E
      unreachable
    )
    (func $_ZN4core3fmt8builders11DebugStruct6finish17hca2b8d984b1c8354E (;237;) (type 5) (param i32) (result i32)
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
            i32.const 1050083
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
          i32.const 1050082
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
    (func $_ZN4core3fmt8builders10DebugTuple5field17ha0cb6e4dc48409a5E (;238;) (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i64 i64)
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
          i32.load
          local.tee 7
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          local.get 6
          i32.load offset=24
          i32.const 1050077
          i32.const 1050087
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
          block  ;; label = @3
            local.get 6
            i32.load offset=24
            i32.const 1050085
            i32.const 2
            local.get 6
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@3;)
            i32.const 1
            local.set 5
            i32.const 0
            local.set 4
            br 2 (;@1;)
          end
          local.get 6
          i32.load
          local.set 7
        end
        i32.const 1
        local.set 5
        local.get 3
        i32.const 1
        i32.store8 offset=23
        local.get 3
        i32.const 52
        i32.add
        i32.const 1049980
        i32.store
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 23
        i32.add
        i32.store
        local.get 3
        local.get 7
        i32.store offset=24
        local.get 3
        local.get 6
        i64.load offset=24 align=4
        i64.store offset=8
        local.get 6
        i64.load offset=8 align=4
        local.set 8
        local.get 6
        i64.load offset=16 align=4
        local.set 9
        local.get 3
        local.get 6
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 3
        local.get 6
        i32.load offset=4
        i32.store offset=28
        local.get 3
        local.get 9
        i64.store offset=40
        local.get 3
        local.get 8
        i64.store offset=32
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
        i32.const 1050075
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
    (func $_ZN4core3fmt8builders10DebugInner5entry17h2a9edfe59122aaf3E (;239;) (type 3) (param i32 i32 i32)
      (local i32 i32 i32 i32 i64 i64)
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
                local.get 0
                i32.load
                local.tee 5
                i32.load
                local.tee 6
                i32.const 4
                i32.and
                br_if 0 (;@5;)
                local.get 4
                i32.const 255
                i32.and
                br_if 1 (;@4;)
                br 3 (;@2;)
              end
              local.get 4
              i32.const 255
              i32.and
              br_if 1 (;@3;)
              i32.const 1
              local.set 4
              local.get 5
              i32.load offset=24
              i32.const 1050090
              i32.const 1
              local.get 5
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              br_if 3 (;@1;)
              local.get 5
              i32.load
              local.set 6
              br 1 (;@3;)
            end
            i32.const 1
            local.set 4
            local.get 5
            i32.load offset=24
            i32.const 1050077
            i32.const 2
            local.get 5
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 1)
            i32.eqz
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          i32.const 1
          local.set 4
          local.get 3
          i32.const 1
          i32.store8 offset=23
          local.get 3
          i32.const 52
          i32.add
          i32.const 1049980
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
          i32.store offset=24
          local.get 3
          local.get 5
          i64.load offset=24 align=4
          i64.store offset=8
          local.get 5
          i64.load offset=8 align=4
          local.set 7
          local.get 5
          i64.load offset=16 align=4
          local.set 8
          local.get 3
          local.get 5
          i32.load8_u offset=32
          i32.store8 offset=56
          local.get 3
          local.get 5
          i32.load offset=4
          i32.store offset=28
          local.get 3
          local.get 8
          i64.store offset=40
          local.get 3
          local.get 7
          i64.store offset=32
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
          i32.const 1050075
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
    (func $_ZN4core3fmt8builders8DebugSet5entry17h2ebc80f2a405af07E (;240;) (type 1) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN4core3fmt8builders10DebugInner5entry17h2a9edfe59122aaf3E
      local.get 0
    )
    (func $_ZN4core3fmt8builders9DebugList6finish17h97668722a33c7b45E (;241;) (type 5) (param i32) (result i32)
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
        i32.const 1050108
        i32.const 1
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
      end
      local.get 1
    )
    (func $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E (;242;) (type 15) (param i32 i32 i32 i32 i32 i32) (result i32)
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
          local.tee 1
          i32.const 1
          i32.and
          local.tee 6
          select
          local.set 7
          local.get 6
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
        local.set 1
        i32.const 45
        local.set 7
      end
      block  ;; label = @1
        block  ;; label = @2
          local.get 1
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
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 2
            local.get 3
            call $_ZN4core3str5count14do_count_chars17h916e21cd03064b1eE
            local.set 6
            br 1 (;@2;)
          end
          block  ;; label = @3
            local.get 3
            br_if 0 (;@3;)
            i32.const 0
            local.set 6
            br 1 (;@2;)
          end
          local.get 3
          i32.const 3
          i32.and
          local.set 9
          block  ;; label = @3
            block  ;; label = @4
              local.get 3
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@4;)
              i32.const 0
              local.set 6
              local.get 2
              local.set 1
              br 1 (;@3;)
            end
            local.get 3
            i32.const -4
            i32.and
            local.set 10
            i32.const 0
            local.set 6
            local.get 2
            local.set 1
            loop  ;; label = @4
              local.get 6
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
              local.set 6
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 10
              i32.const -4
              i32.add
              local.tee 10
              br_if 0 (;@4;)
            end
          end
          local.get 9
          i32.eqz
          br_if 0 (;@2;)
          loop  ;; label = @3
            local.get 6
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            br_if 0 (;@3;)
          end
        end
        local.get 6
        local.get 8
        i32.add
        local.set 8
      end
      block  ;; label = @1
        block  ;; label = @2
          local.get 0
          i32.load offset=8
          br_if 0 (;@2;)
          i32.const 1
          local.set 1
          local.get 0
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
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
                  local.tee 6
                  local.get 8
                  i32.le_u
                  br_if 0 (;@6;)
                  local.get 0
                  i32.load8_u
                  i32.const 8
                  i32.and
                  br_if 4 (;@2;)
                  i32.const 0
                  local.set 1
                  local.get 6
                  local.get 8
                  i32.sub
                  local.tee 9
                  local.set 8
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 6
                  local.get 6
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
                end
                i32.const 1
                local.set 1
                local.get 0
                local.get 7
                local.get 2
                local.get 3
                call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
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
              local.get 9
              local.set 1
              br 1 (;@3;)
            end
            local.get 9
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 9
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
          local.set 9
          local.get 0
          i32.load offset=4
          local.set 6
          local.get 0
          i32.load offset=24
          local.set 10
          block  ;; label = @3
            loop  ;; label = @4
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@3;)
              local.get 10
              local.get 6
              local.get 9
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
          local.get 6
          i32.const 1114112
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
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
          local.set 9
          local.get 0
          i32.load offset=24
          local.set 0
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
              local.get 0
              local.get 6
              local.get 9
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
        local.set 11
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
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E
        br_if 0 (;@1;)
        i32.const 0
        local.set 1
        local.get 6
        local.get 8
        i32.sub
        local.tee 9
        local.set 3
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              i32.const 1
              local.get 0
              i32.load8_u offset=32
              local.tee 6
              local.get 6
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
            end
            i32.const 0
            local.set 3
            local.get 9
            local.set 1
            br 1 (;@2;)
          end
          local.get 9
          i32.const 1
          i32.shr_u
          local.set 1
          local.get 9
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
        local.set 9
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.load offset=24
        local.set 10
        block  ;; label = @2
          loop  ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@2;)
            local.get 10
            local.get 6
            local.get 9
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
        local.get 6
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
        local.set 10
        i32.const 0
        local.set 9
        block  ;; label = @2
          loop  ;; label = @3
            local.get 3
            local.get 9
            i32.eq
            br_if 1 (;@2;)
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            local.get 10
            local.get 6
            local.get 1
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@3;)
          end
          i32.const 1
          local.set 1
          local.get 9
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
        local.get 11
        i32.store offset=4
        i32.const 0
        return
      end
      local.get 1
    )
    (func $_ZN4core3fmt5Write10write_char17hdca0c05eaa725eceE (;243;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt5Write9write_fmt17hdaee33bc6ebbd7edE (;244;) (type 2) (param i32 i32) (result i32)
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
      i32.const 1050356
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7da248c333577bdaE (;245;) (type 1) (param i32 i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2788b93642b60cc4E (;246;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha5585eaaa644008eE (;247;) (type 2) (param i32 i32) (result i32)
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
      i32.const 1050356
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h04cb48e4e3b6e6a6E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3str5count14do_count_chars17h916e21cd03064b1eE (;248;) (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block  ;; label = @1
        block  ;; label = @2
          local.get 0
          i32.const 3
          i32.add
          i32.const -4
          i32.and
          local.tee 2
          local.get 0
          i32.sub
          local.tee 3
          local.get 1
          i32.gt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 4
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          local.get 3
          i32.sub
          local.tee 4
          i32.const 4
          i32.lt_u
          br_if 0 (;@2;)
          local.get 4
          i32.const 3
          i32.and
          local.set 5
          i32.const 0
          local.set 6
          i32.const 0
          local.set 1
          block  ;; label = @3
            local.get 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            i32.const 3
            i32.and
            local.set 7
            block  ;; label = @4
              block  ;; label = @5
                local.get 2
                local.get 0
                i32.const -1
                i32.xor
                i32.add
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 1
                local.get 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 3
              i32.const -4
              i32.and
              local.set 8
              i32.const 0
              local.set 1
              local.get 0
              local.set 2
              loop  ;; label = @5
                local.get 1
                local.get 2
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.const 1
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.const 2
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.const 3
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 1
                local.get 2
                i32.const 4
                i32.add
                local.set 2
                local.get 8
                i32.const -4
                i32.add
                local.tee 8
                br_if 0 (;@5;)
              end
            end
            local.get 7
            i32.eqz
            br_if 0 (;@3;)
            loop  ;; label = @4
              local.get 1
              local.get 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              local.get 7
              i32.const -1
              i32.add
              local.tee 7
              br_if 0 (;@4;)
            end
          end
          local.get 0
          local.get 3
          i32.add
          local.set 0
          block  ;; label = @3
            local.get 5
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 4
            i32.const -4
            i32.and
            i32.add
            local.tee 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            local.set 6
            local.get 5
            i32.const 1
            i32.eq
            br_if 0 (;@3;)
            local.get 6
            local.get 2
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 5
            i32.const 2
            i32.eq
            br_if 0 (;@3;)
            local.get 6
            local.get 2
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
          end
          local.get 4
          i32.const 2
          i32.shr_u
          local.set 3
          local.get 6
          local.get 1
          i32.add
          local.set 8
          loop  ;; label = @3
            local.get 0
            local.set 6
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.const 192
            local.get 3
            i32.const 192
            i32.lt_u
            select
            local.tee 4
            i32.const 3
            i32.and
            local.set 5
            local.get 4
            i32.const 2
            i32.shl
            local.set 9
            block  ;; label = @4
              block  ;; label = @5
                local.get 4
                i32.const 252
                i32.and
                local.tee 10
                i32.const 2
                i32.shl
                local.tee 0
                br_if 0 (;@5;)
                i32.const 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 6
              local.get 0
              i32.add
              local.set 7
              i32.const 0
              local.set 2
              local.get 6
              local.set 0
              loop  ;; label = @5
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 8
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 2
                i32.add
                i32.add
                i32.add
                i32.add
                local.set 2
                local.get 0
                i32.const 16
                i32.add
                local.tee 0
                local.get 7
                i32.ne
                br_if 0 (;@5;)
              end
            end
            local.get 6
            local.get 9
            i32.add
            local.set 0
            local.get 3
            local.get 4
            i32.sub
            local.set 3
            local.get 2
            i32.const 8
            i32.shr_u
            i32.const 16711935
            i32.and
            local.get 2
            i32.const 16711935
            i32.and
            i32.add
            i32.const 65537
            i32.mul
            i32.const 16
            i32.shr_u
            local.get 8
            i32.add
            local.set 8
            local.get 5
            i32.eqz
            br_if 0 (;@3;)
          end
          local.get 6
          local.get 10
          i32.const 2
          i32.shl
          i32.add
          local.set 0
          local.get 5
          i32.const 1073741823
          i32.add
          local.tee 4
          i32.const 1073741823
          i32.and
          local.tee 2
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          local.set 3
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.const 3
              i32.ge_u
              br_if 0 (;@4;)
              i32.const 0
              local.set 2
              br 1 (;@3;)
            end
            local.get 1
            i32.const 2147483644
            i32.and
            local.set 1
            i32.const 0
            local.set 2
            loop  ;; label = @4
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 7
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 7
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 7
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 7
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 7
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 0
              i32.load
              local.tee 7
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 7
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 1
              i32.const -4
              i32.add
              local.tee 1
              br_if 0 (;@4;)
            end
          end
          block  ;; label = @3
            local.get 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            i32.const -1073741823
            i32.add
            local.set 1
            loop  ;; label = @4
              local.get 0
              i32.load
              local.tee 7
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 7
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              local.set 2
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              br_if 0 (;@4;)
            end
          end
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 8
          i32.add
          return
        end
        block  ;; label = @2
          local.get 1
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 1
        i32.const 3
        i32.and
        local.set 2
        block  ;; label = @2
          block  ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@3;)
            i32.const 0
            local.set 8
            br 1 (;@2;)
          end
          local.get 1
          i32.const -4
          i32.and
          local.set 1
          i32.const 0
          local.set 8
          loop  ;; label = @3
            local.get 8
            local.get 0
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 8
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const -4
            i32.add
            local.tee 1
            br_if 0 (;@3;)
          end
        end
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        loop  ;; label = @2
          local.get 8
          local.get 0
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@2;)
        end
      end
      local.get 8
    )
    (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h53e37955ba8ac0c6E (;249;) (type 8) (param i32 i32 i32 i32) (result i32)
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
    (func $_ZN4core3fmt9Formatter15debug_lower_hex17hda1966ef6acea071E (;250;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load8_u
      i32.const 16
      i32.and
      i32.const 4
      i32.shr_u
    )
    (func $_ZN4core3fmt9Formatter15debug_upper_hex17ha5c6d01aedf399b3E (;251;) (type 5) (param i32) (result i32)
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      i32.const 5
      i32.shr_u
    )
    (func $_ZN4core3fmt9Formatter12debug_struct17ha977b1ed6bb999d3E (;252;) (type 16) (param i32 i32 i32) (result i64)
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
    (func $_ZN4core3fmt9Formatter10debug_list17hcc0d31ad81615f98E (;253;) (type 12) (param i32) (result i64)
      i64.const 4294967296
      i64.const 0
      local.get 0
      i32.load offset=24
      i32.const 1050091
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
    (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h990360386cc7be82E (;254;) (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      i32.const 1
      local.set 3
      block  ;; label = @1
        local.get 1
        i32.load offset=24
        local.tee 4
        i32.const 39
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        local.tee 5
        call_indirect (type 2)
        br_if 0 (;@1;)
        local.get 2
        local.get 0
        i32.load
        i32.const 257
        call $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17hafade5aaff30feefE
        local.get 2
        i32.const 12
        i32.add
        i32.load8_u
        local.set 6
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.set 7
        local.get 2
        i32.load
        local.set 1
        block  ;; label = @2
          block  ;; label = @3
            block  ;; label = @4
              local.get 2
              i32.load offset=4
              local.tee 8
              i32.const 1114112
              i32.eq
              br_if 0 (;@4;)
              loop  ;; label = @5
                local.get 1
                local.set 0
                i32.const 92
                local.set 3
                i32.const 1
                local.set 1
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        local.get 0
                        br_table 7 (;@2;) 1 (;@8;) 3 (;@6;) 0 (;@9;) 7 (;@2;)
                      end
                      local.get 6
                      i32.const 255
                      i32.and
                      local.set 0
                      i32.const 0
                      local.set 6
                      i32.const 3
                      local.set 1
                      i32.const 125
                      local.set 3
                      block  ;; label = @9
                        block  ;; label = @10
                          block  ;; label = @11
                            local.get 0
                            br_table 9 (;@2;) 5 (;@6;) 4 (;@7;) 0 (;@11;) 1 (;@10;) 2 (;@9;) 9 (;@2;)
                          end
                          i32.const 2
                          local.set 6
                          i32.const 123
                          local.set 3
                          br 4 (;@6;)
                        end
                        i32.const 3
                        local.set 1
                        i32.const 117
                        local.set 3
                        i32.const 3
                        local.set 6
                        br 3 (;@6;)
                      end
                      i32.const 4
                      local.set 6
                      i32.const 92
                      local.set 3
                      br 2 (;@6;)
                    end
                    i32.const 0
                    local.set 1
                    local.get 8
                    local.set 3
                    br 1 (;@6;)
                  end
                  i32.const 2
                  i32.const 1
                  local.get 7
                  select
                  local.set 6
                  i32.const 48
                  i32.const 87
                  local.get 8
                  local.get 7
                  i32.const 2
                  i32.shl
                  i32.shr_u
                  i32.const 15
                  i32.and
                  local.tee 3
                  i32.const 10
                  i32.lt_u
                  select
                  local.get 3
                  i32.add
                  local.set 3
                  local.get 7
                  i32.const -1
                  i32.add
                  i32.const 0
                  local.get 7
                  select
                  local.set 7
                end
                local.get 4
                local.get 3
                local.get 5
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@5;)
                br 2 (;@3;)
              end
            end
            loop  ;; label = @4
              local.get 1
              local.set 0
              i32.const 92
              local.set 3
              i32.const 1
              local.set 1
              block  ;; label = @5
                block  ;; label = @6
                  local.get 0
                  br_table 4 (;@2;) 4 (;@2;) 1 (;@5;) 0 (;@6;) 4 (;@2;)
                end
                local.get 6
                i32.const 255
                i32.and
                local.set 0
                i32.const 0
                local.set 6
                i32.const 3
                local.set 1
                i32.const 125
                local.set 3
                block  ;; label = @6
                  block  ;; label = @7
                    block  ;; label = @8
                      block  ;; label = @9
                        local.get 0
                        br_table 7 (;@2;) 4 (;@5;) 3 (;@6;) 2 (;@7;) 1 (;@8;) 0 (;@9;) 7 (;@2;)
                      end
                      i32.const 4
                      local.set 6
                      i32.const 92
                      local.set 3
                      br 3 (;@5;)
                    end
                    i32.const 3
                    local.set 1
                    i32.const 117
                    local.set 3
                    i32.const 3
                    local.set 6
                    br 2 (;@5;)
                  end
                  i32.const 2
                  local.set 6
                  i32.const 123
                  local.set 3
                  br 1 (;@5;)
                end
                i32.const 2
                i32.const 1
                local.get 7
                select
                local.set 6
                i32.const 1114112
                local.get 7
                i32.const 2
                i32.shl
                i32.shr_u
                i32.const 1
                i32.and
                i32.const 48
                i32.or
                local.set 3
                local.get 7
                i32.const -1
                i32.add
                i32.const 0
                local.get 7
                select
                local.set 7
              end
              local.get 4
              local.get 3
              local.get 5
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@4;)
            end
          end
          i32.const 1
          local.set 3
          br 1 (;@1;)
        end
        local.get 4
        i32.const 39
        local.get 5
        call_indirect (type 2)
        local.set 3
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN4core3str8converts9from_utf817hf541b0dc2f467004E (;255;) (type 3) (param i32 i32 i32)
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
                                      i32.const 1050580
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
                                  i32.load8_s
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
                                i32.load8_s
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
                                      i32.const -1
                                      i32.gt_s
                                      br_if 13 (;@3;)
                                      local.get 10
                                      i32.const -64
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
                                  i32.const -113
                                  i32.gt_s
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
                              i32.const -32
                              i32.and
                              i32.const -96
                              i32.ne
                              br_if 9 (;@3;)
                              br 2 (;@10;)
                            end
                            local.get 10
                            i32.const -96
                            i32.ge_s
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
                            i32.const -1
                            i32.gt_s
                            br_if 8 (;@3;)
                            local.get 10
                            i32.const -64
                            i32.ge_u
                            br_if 8 (;@3;)
                            br 1 (;@10;)
                          end
                          local.get 10
                          i32.const -65
                          i32.gt_s
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
    (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4110e08c3d446775E (;256;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i64.load8_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417h370531919577d25bE
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17hc729f77ac029c8a3E (;257;) (type 2) (param i32 i32) (result i32)
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
        i32.const 1050136
        call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1050152
      i32.const 2
      local.get 2
      local.get 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h97d77beb80524043E (;258;) (type 2) (param i32 i32) (result i32)
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
                i64.load8_u
                i32.const 1
                local.get 1
                call $_ZN4core3fmt3num3imp7fmt_u6417h370531919577d25bE
                local.set 0
                br 4 (;@1;)
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
              br_if 1 (;@3;)
              local.get 1
              i32.const 1
              i32.const 1050152
              i32.const 2
              local.get 2
              local.get 0
              i32.add
              i32.const 128
              i32.add
              i32.const 0
              local.get 0
              i32.sub
              call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
              local.set 0
              br 3 (;@1;)
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
            br_if 1 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1050152
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
            local.set 0
            br 2 (;@1;)
          end
          local.get 3
          i32.const 128
          i32.const 1050136
          call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
          unreachable
        end
        local.get 3
        i32.const 128
        i32.const 1050136
        call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
        unreachable
      end
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num3imp7fmt_u6417h370531919577d25bE (;259;) (type 17) (param i64 i32 i32) (result i32)
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
          i32.const 1050154
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
          i32.const 1050154
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
        i32.le_u
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
        i32.const 1050154
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
      end
      block  ;; label = @1
        block  ;; label = @2
          local.get 6
          i32.const 10
          i32.lt_u
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
          i32.const 1050154
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
      i32.const 1049804
      i32.const 0
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.add
      i32.const 39
      local.get 4
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
      local.set 4
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h78f1f52be23db7efE (;260;) (type 2) (param i32 i32) (result i32)
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
        i32.const 1050136
        call $_ZN4core5slice5index26slice_start_index_len_fail17h9855a1afa3f81077E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1050152
      i32.const 2
      local.get 2
      local.get 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17hd602a9f150cd5255E
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h00fefee0864c3fbeE (;261;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h596db3bf82f8abcbE
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea7e9b5d6c7a52bE (;262;) (type 2) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h97d77beb80524043E
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h489f598254ddf05bE (;263;) (type 2) (param i32 i32) (result i32)
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
          br_if 0 (;@2;)
          local.get 1
          i32.load offset=24
          i32.const 1052656
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
        i32.const 1052652
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
        i32.const 1
        local.set 1
        local.get 2
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.const 1050092
        call $_ZN4core3fmt8builders10DebugTuple5field17ha0cb6e4dc48409a5E
        drop
        local.get 2
        i32.load8_u offset=8
        local.set 0
        block  ;; label = @2
          block  ;; label = @3
            local.get 2
            i32.load offset=4
            local.tee 3
            br_if 0 (;@3;)
            local.get 0
            local.set 1
            br 1 (;@2;)
          end
          local.get 0
          i32.const 255
          i32.and
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
            i32.const 1050088
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
          i32.const 1050089
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
    (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e931cfdb7166e31E (;264;) (type 2) (param i32 i32) (result i32)
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
      i32.const 1052660
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
      i32.const 1052669
      i32.const 11
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049944
      call $_ZN4core3fmt8builders11DebugStruct5field17ha17f926ddbc76bc6E
      local.set 1
      local.get 2
      local.get 0
      i32.const 4
      i32.add
      i32.store offset=12
      local.get 1
      i32.const 1052680
      i32.const 9
      local.get 2
      i32.const 12
      i32.add
      i32.const 1052692
      call $_ZN4core3fmt8builders11DebugStruct5field17ha17f926ddbc76bc6E
      local.tee 0
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
          i32.const 1050083
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
        i32.const 1050082
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
    (func $memset (;265;) (type 1) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17compiler_builtins3mem6memset17h41cc7bf7a3226f27E
    )
    (func $_ZN17compiler_builtins3mem6memcpy17hc7cd6018de877557E (;266;) (type 1) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
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
            local.tee 6
            i32.const 24
            i32.and
            local.set 2
            local.get 9
            i32.const -4
            i32.and
            local.tee 10
            i32.const 4
            i32.add
            local.set 1
            i32.const 0
            local.get 6
            i32.sub
            i32.const 24
            i32.and
            local.set 4
            local.get 10
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
        i32.eqz
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
    (func $_ZN17compiler_builtins3mem6memset17h41cc7bf7a3226f27E (;267;) (type 1) (param i32 i32 i32) (result i32)
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
        i32.eqz
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
    (func $memcpy (;268;) (type 1) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17compiler_builtins3mem6memcpy17hc7cd6018de877557E
    )
    (func $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hfa0c32359ddb1b30E (;269;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core3num7nonzero12NonZeroUsize3get17h9c70d31b07bce94eE (;270;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h99cbfef216b3c2feE (;271;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hfa0c32359ddb1b30E
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
    (func $_ZN4core5alloc6layout6Layout4size17hbd99380984301ef3E (;272;) (type 5) (param i32) (result i32)
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
    (func $_ZN4core5alloc6layout6Layout5align17h54f502e2b9c063f7E (;273;) (type 5) (param i32) (result i32)
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
      call $_ZN4core3num7nonzero12NonZeroUsize3get17h9c70d31b07bce94eE
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
    (func $_ZN5alloc5alloc5alloc17h7ab4de5c331af834E (;274;) (type 2) (param i32 i32) (result i32)
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
      call $_ZN4core5alloc6layout6Layout4size17hbd99380984301ef3E
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
      call $_ZN4core5alloc6layout6Layout5align17h54f502e2b9c063f7E
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
    (func $_ZN5alloc5alloc7dealloc17h0c31fd47217722bdE (;275;) (type 3) (param i32 i32 i32)
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
      call $_ZN4core5alloc6layout6Layout4size17hbd99380984301ef3E
      local.set 7
      local.get 5
      local.set 8
      local.get 8
      call $_ZN4core5alloc6layout6Layout5align17h54f502e2b9c063f7E
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
    (func $_ZN5alloc5alloc7realloc17hecebc140bff39c9dE (;276;) (type 8) (param i32 i32 i32 i32) (result i32)
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
      call $_ZN4core5alloc6layout6Layout4size17hbd99380984301ef3E
      local.set 8
      local.get 6
      local.set 9
      local.get 9
      call $_ZN4core5alloc6layout6Layout5align17h54f502e2b9c063f7E
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
    (func $canonical_abi_realloc (;277;) (type 8) (param i32 i32 i32 i32) (result i32)
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
              call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h99cbfef216b3c2feE
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
              call $_ZN5alloc5alloc7realloc17hecebc140bff39c9dE
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
          call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h99cbfef216b3c2feE
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
          call $_ZN5alloc5alloc5alloc17h7ab4de5c331af834E
          local.set 20
          local.get 6
          local.get 20
          i32.store offset=44
        end
        local.get 6
        i32.load offset=44
        local.set 21
        local.get 21
        call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h0121c121fafb5c53E
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
        call $_ZN5alloc5alloc18handle_alloc_error17hd51ecca19a6d9162E
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
    (func $canonical_abi_free (;278;) (type 3) (param i32 i32 i32)
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
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h99cbfef216b3c2feE
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
        call $_ZN5alloc5alloc7dealloc17h0c31fd47217722bdE
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
    (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
    (global (;1;) i32 i32.const 1054060)
    (global (;2;) i32 i32.const 1054064)
    (export "memory" (memory 0))
    (export "backend-0.1.0#fetch" (func $backend-0.1.0#fetch))
    (export "canonical_abi_realloc" (func $canonical_abi_realloc))
    (export "canonical_abi_free" (func $canonical_abi_free))
    (export "__data_end" (global 1))
    (export "__heap_base" (global 2))
    (elem (;0;) (i32.const 1) func $_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h47395b718847d4aeE $_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbd51166172bbfa00E $_ZN3std5alloc24default_alloc_error_hook17hf9a5b071c6ecdddeE $_ZN4core3ptr226drop_in_place$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$..from..StringError$GT$17h8cc2d5abb01ea564E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h65c16dea774409feE $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h2d9fa466338c8419E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h9f4a2bd22df7e64aE $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hd59899e4f8969acaE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h91ddf63ec07fed85E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h12abc82705b82f7fE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h7e1fbbe1ae7cf7b6E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h02734b0b0633bb71E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h83941b921eb65d3bE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc27d15451f1c85eaE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h97b2f7bbe03aaa72E $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h1dee28d988c24e68E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf6854f7535f653ecE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd764aeadf3195527E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h261adddec5b85affE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h1de381c7fe17233bE $_ZN4core3ops8function6FnOnce9call_once17h0fb29489d2b00b7bE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2452d5de6cc2de42E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb15fe0cb47bd378bE $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf878370c7dd27ea0E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h990360386cc7be82E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hb157a09373bf5ee3E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h02851016e297d883E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h00fefee0864c3fbeE $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h9cac54f2c3eda42bE $_ZN4core3fmt5Write10write_char17hdca0c05eaa725eceE $_ZN4core3fmt5Write9write_fmt17hdaee33bc6ebbd7edE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ea7e9b5d6c7a52bE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7da248c333577bdaE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2788b93642b60cc4E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha5585eaaa644008eE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h489f598254ddf05bE)
    (data $.rodata (;0;) (i32.const 1048576) "invalid args\00\00\10\00\0c\00\00\00/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/fmt/mod.rs\00\14\00\10\00K\00\00\00\81\01\00\00\0d\00\00\00Tried to shrink to a larger capacityp\00\10\00$\00\00\00/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/alloc/src/raw_vec.rs\9c\00\10\00L\00\00\00\ab\01\00\00\09\00\00\00\9c\00\10\00L\00\00\00\b2\01\00\00\0d\00\00\00/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/alloc/src/alloc.rs\00\00\08\01\10\00J\00\00\00\aa\00\00\00\1b\00\00\00\08\01\10\00J\00\00\00%\01\00\00\1b\00\00\00\08\01\10\00J\00\00\00/\01\00\00\1f\00\00\00called `Result::unwrap()` on an `Err` value\00\01\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00src\5clib.rs\00\00\c0\01\10\00\0a\00\00\00\11\00\00\00\01\00\00\00\00\00\00\00attempt to add with overflowtarget\5cbindgen\5corigin\5csrc\5clib.rs\fc\01\10\00 \00\00\00\0f\00\00\00\16\00\00\00\00\00\00\00attempt to add with overflow\fc\01\10\00 \00\00\00\10\00\00\00\1f\00\00\00invalid args\5c\02\10\00\0c\00\00\00/rustc/7737e0b5c4103216d6fd8cf941b7ab9bdbaace7c/library/core/src/fmt/mod.rs\00p\02\10\00K\00\00\00\81\01\00\00\0d\00\00\00target\5cbindgen\5ccache\5csrc\5clib.rs\00\cc\02\10\00\1f\00\00\00\0f\00\00\00\1b\00\00\00\00\00\00\00attempt to add with overflowinvalid enum discriminant\00\00\00\1c\03\10\00\19\00\00\00\cc\02\10\00\1f\00\00\00\16\00\00\00\12\00\00\00\cc\02\10\00\1f\00\00\00\12\00\00\00\1e\00\00\00\cc\02\10\00\1f\00\00\00\14\00\00\00'\00\00\00called `Option::unwrap()` on a `None` valuelibrary/std/src/panicking.rs\00\9b\03\10\00\1c\00\00\00F\02\00\00\1f\00\00\00\9b\03\10\00\1c\00\00\00G\02\00\00\1e\00\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\08\00\00\00\04\00\00\00\07\00\00\00\08\00\00\00\10\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\06\00\00\00\08\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\06\00\00\00\04\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00T\04\10\00\11\00\00\008\04\10\00\1c\00\00\00\06\02\00\00\05\00\00\00FromUtf8Errorbytes\00\00\10\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00error\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\13\00\00\00..\00\00\cc\04\10\00\02\00\00\00called `Option::unwrap()` on a `None` value\00\1a\00\00\00\00\00\00\00\01\00\00\00\1b\00\00\00index out of bounds: the len is  but the index is \00\00\14\05\10\00 \00\00\004\05\10\00\12\00\00\00\1a\00\00\00\04\00\00\00\04\00\00\00\1c\00\00\00`: \00\cc\04\10\00\00\00\00\00i\05\10\00\02\00\00\00\1a\00\00\00\0c\00\00\00\04\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00    library/core/src/fmt/builders.rs\98\05\10\00 \00\00\00/\00\00\00!\00\00\00\98\05\10\00 \00\00\000\00\00\00\12\00\00\00 {\0a,\0a,  { } }(\0a(,)\0a[\1a\00\00\00\04\00\00\00\04\00\00\00 \00\00\00]library/core/src/fmt/num.rs\fd\05\10\00\1b\00\00\00e\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00\1a\00\00\00\04\00\00\00\04\00\00\00!\00\00\00\22\00\00\00#\00\00\00library/core/src/slice/memchr.rs\0c\07\10\00 \00\00\00[\00\00\00\05\00\00\00range start index  out of range for slice of length <\07\10\00\12\00\00\00N\07\10\00\22\00\00\00range end index \80\07\10\00\10\00\00\00N\07\10\00\22\00\00\00slice index starts at  but ends at \00\a0\07\10\00\16\00\00\00\b6\07\10\00\0d\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00[...]byte index  is out of bounds of `\00\00\d9\08\10\00\0b\00\00\00\e4\08\10\00\16\00\00\00h\05\10\00\01\00\00\00begin <= end ( <= ) when slicing `\00\00\14\09\10\00\0e\00\00\00\22\09\10\00\04\00\00\00&\09\10\00\10\00\00\00h\05\10\00\01\00\00\00 is not a char boundary; it is inside  (bytes ) of `\d9\08\10\00\0b\00\00\00X\09\10\00&\00\00\00~\09\10\00\08\00\00\00\86\09\10\00\06\00\00\00h\05\10\00\01\00\00\00library/core/src/str/mod.rs\00\b4\09\10\00\1b\00\00\00\f5\00\00\00\1d\00\00\00library/core/src/unicode/printable.rs\00\00\00\e0\09\10\00%\00\00\00\0a\00\00\00\1c\00\00\00\e0\09\10\00%\00\00\00\1a\00\00\006\00\00\00\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\af\7f\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\09\81\1b\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\16\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1M\03\80\a4\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\f2\9d\037\09\81\5c\14\80\b8\08\80\cb\05\0a\18;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\04k\02\af\03\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\bf\ee\efZb\f4\fc\ff\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bNC\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a6,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\84/\8f\d1\82G\a1\b9\829\07*\04\5c\06&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\e7\813-\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\92`G\09t<\80\f6\0as\08p\15F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\80\e1+\80\d5-\03\1a\04\02\81@\1f\11:\05\01\84\e0\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\05\10\03\0d\03t\0cY\07\0c\04\01\0f\0c\048\08\0a\06(\08\22N\81T\0c\15\03\05\03\07\09\1d\03\0b\05\06\0a\0a\06\08\08\07\09\80\cb%\0a\84\06library/core/src/unicode/unicode_data.rs\00\00\00\91\0f\10\00(\00\00\00K\00\00\00(\00\00\00\91\0f\10\00(\00\00\00W\00\00\00\16\00\00\00\91\0f\10\00(\00\00\00R\00\00\00>\00\00\00SomeNoneUtf8Errorvalid_up_toerror_len\00\00\00\1a\00\00\00\04\00\00\00\04\00\00\00$\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef,\a0+*0 ,o\a6\e0,\02\a8`-\1e\fb`.\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\a190\1c\e1G\f3\1e!L\f0j\e1OOo!P\9d\bc\a1P\00\cfaQe\d1\a1Q\00\da!R\00\e0\e1S0\e1aU\ae\e2\a1V\d0\e8\e1V \00nW\f0\01\ffW\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03<\08*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\02\1e\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00.\02\17\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\01=\04\00\07m\07\00`\80\f0\00")
  )
  (core module (;1;)
    (type (;0;) (func (param i32 i32 i32)))
    (type (;1;) (func (param i32 i32 i32 i32)))
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
    (func (;2;) (type 0) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      i32.const 2
      call_indirect (type 0)
    )
    (table (;0;) 3 3 funcref)
    (export "0" (func 0))
    (export "1" (func 1))
    (export "2" (func 2))
    (export "$imports" (table 0))
  )
  (core module (;2;)
    (type (;0;) (func (param i32 i32 i32)))
    (type (;1;) (func (param i32 i32 i32 i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 1)))
    (import "" "2" (func (;2;) (type 0)))
    (import "" "$imports" (table (;0;) 3 3 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2)
  )
  (core instance (;0;) (instantiate 1))
  (core alias export 0 "0" (func (;0;)))
  (core alias export 0 "1" (func (;1;)))
  (core alias export 0 "2" (func (;2;)))
  (core instance (;1;) 
    (export "get" (func 0))
    (export "put" (func 1))
  )
  (core instance (;2;) 
    (export "fetch" (func 2))
  )
  (core instance (;3;) (instantiate 0
      (with "cache-0.1.0" (instance 1))
      (with "backend-0.1.0" (instance 2))
    )
  )
  (core alias export 3 "memory" (memory (;0;)))
  (core alias export 3 "canonical_abi_realloc" (func (;3;)))
  (core alias export 0 "$imports" (table (;0;)))
  (alias export 0 "get" (func (;0;)))
  (alias export 0 "put" (func (;1;)))
  (alias export 1 "fetch" (func (;2;)))
  (core func (;4;) (canon lower (func 0) (memory 0) (realloc 3) string-encoding=utf8))
  (core func (;5;) (canon lower (func 1) (memory 0) (realloc 3) string-encoding=utf8))
  (core func (;6;) (canon lower (func 2) (memory 0) (realloc 3) string-encoding=utf8))
  (core instance (;4;) 
    (export "$imports" (table 0))
    (export "0" (func 4))
    (export "1" (func 5))
    (export "2" (func 6))
  )
  (core instance (;5;) (instantiate 2
      (with "" (instance 4))
    )
  )
  (core alias export 3 "backend-0.1.0#fetch" (func (;7;)))
  (func (;3;) (type 5) (canon lift (core func 7) (memory 0) (realloc 3) string-encoding=utf8))
  (instance (;2;)
    (export "fetch" (func 3))
  )
  (export "backend-0.1.0" (instance 2))
)
