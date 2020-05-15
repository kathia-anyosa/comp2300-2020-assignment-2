.syntax unified
.global main

.type main, %function

@COMP2300 Assignment 2 Part 1 - Generate sequence of notes to play Smoke on Water by Deep Purple

main:
  bl init @turn  on headphone jack
  bl BSP_AUDIO_Buffer @work around delay between bl init and bl BSP_AUDIO_OUT_Play_Sample

synth:
  movs r4, 0x8000 @set minimum value of 0x8000 in r4
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample @produce sound
  mov r5, #12000 @set counter to 12000 steps (0.25 seconds)
  bl pitch1

  movs r4, 0 @set 0 in r4, as no sound will be produced during silence
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
  mov r5, #24000 @set counter to 24000 steps (0.5 seconds)
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
  mov r5, #48000 @set counter to 48000 steps (1.0 second)
  bl pitch1

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #36000 @set counter to 36000 steps (0.75 seconds)
  bl silence

  b synth


pitch1: @generates pitch of 293.66 Hz
  push {lr} @push address onto stack
  adds r4, #402
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr} @pops address from stack 
  bne pitch1 @loop pitch1 if the counter hasn't reached zero
  beq return @end loop once counter reaches zero

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
  add r4, #564
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

return: @return to address
  bx lr
  
  nop
  b main
.size main, .-main