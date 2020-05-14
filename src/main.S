.syntax unified
.global main

.type main, %function

@COMP2300 Assignment 2 Part 1 - Generate sequence of notes to play Smoke on Water by Deep Purple

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
  mov r5, #24000
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
  bl pitch4
  

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #24000
  bl pitch3

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #24000
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
  mov r5, #24000
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
  mov r5, #48000
  bl pitch1

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #36000
  bl silence

  b synth


pitch1: @generates pitch of 293.66 Hz
  push {lr}
  adds r4, #402
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch1
  beq return 

pitch2: @generates pitch of 349.23 Hz
  push {lr}
  adds r4, #478
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch2
  beq return

pitch3: @generates pitch of 392 Hz
  push {lr}
  add r4, #537
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch3
  beq return

pitch4: @generates pitch of 415.30 Hz
  push {lr}
  add r4, #565
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch4
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