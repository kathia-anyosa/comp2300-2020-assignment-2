.syntax unified
.global main

.type main, %function

@COMP2300 Assignment 2 Part 2 - Produce a chromatic scale

main:
  bl init
  bl BSP_AUDIO_Buffer

synth:
  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch1

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch2

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch4

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch5

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch6

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch7

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch8

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch9

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch10

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch11

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch12

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch13

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch12

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch11

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch10

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch9

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch8

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch7

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch6

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch5

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch4

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch2

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch1

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  b synth


pitch1: @generates C
  push {lr}
  adds r4, #358
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch1
  beq return 

pitch2: @generates C#/Db
  push {lr}
  adds r4, #378
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch2
  beq return

pitch3: @generates D
  push {lr}
  add r4, #402
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch3
  beq return

pitch4: @generates D#/Eb
  push {lr}
  add r4, #425
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch4
  beq return

pitch5: @generates E
  push {lr}
  add r4, #448
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch5
  beq return

pitch6: @generates F
  push {lr}
  add r4, #478
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch6
  beq return

pitch7: @generates F#/Gb
  push {lr}
  add r4, #504
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch7
  beq return

pitch8: @generates G
  push {lr}
  add r4, #537
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch8
  beq return

pitch9: @generates G#/Ab
  push {lr}
  add r4, #564
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch9
  beq return

pitch10: @generates A
  push {lr}
  add r4, #601
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch10
  beq return

pitch11: @generates A#/Bb
  push {lr}
  add r4, #636
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch11
  beq return

pitch12: @generates B
  push {lr}
  add r4, #675
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch12
  beq return

pitch13: @generates middle C
  push {lr}
  add r4, #712
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch13
  beq return

silence: @generates silence of length 0.25s
  push {lr}
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1 
  pop {lr}
  bne silence
  beq return

return:
  bx lr

  nop
  b main
.size main, .-main