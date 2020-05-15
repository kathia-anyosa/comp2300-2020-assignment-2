.syntax unified
.global main

.type main, %function

@COMP2300 Assignment 2 Part 1 - Generate sequence of notes to play Smoke on Water by Deep Purple

main:
  bl init @turn  on headphone jack
  @bl BSP_AUDIO_Buffer @work around delay between bl init and bl BSP_AUDIO_OUT_Play_Sample

synth:
  movs r4, 0x8000 @set minimum value of 0x8000 in r4
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample @produce sound
  mov r5, #6000 @set counter to 6000 steps (0.125 seconds)
  bl pitch1_up

  movs r4, 0x8000 @set minimum value of 0x8000 in r4
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample @produce sound
  mov r5, #6000
  bl pitch1_down

  movs r4, 0 @set 0 in r4, as no sound will be produced during silence
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000 @set counter to 12000 steps (0.25 seconds)
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000 
  bl pitch3_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch1_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch1_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch4_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch4_down
  
  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #24000 @set counter to 24000 steps (0.5 seconds)
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch1_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch1_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl pitch3_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #6000
  bl pitch2_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #12000
  bl silence

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #24000 
  bl pitch1_up

  movs r4, 0x8000
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #24000
  bl pitch1_down

  movs r4, 0
  mov r0, r4
  bl BSP_AUDIO_OUT_Play_Sample
  mov r5, #36000 @set counter to 36000 steps (0.75 seconds)
  bl silence

  b synth

@pitch1_up & pitch1_down generate pitch of 293.66 Hz
pitch1_up: @generates increasing half of the waveform
  push {lr} @push address onto stack
  add r4, #799
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr} @pops address from stack 
  bne pitch1_up @loop pitch1 if the counter hasn't reached zero
  beq return @end loop once counter reaches zero

pitch1_down: @generates decreasing half of the waveform
  push {lr} 
  sub r4, #799
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch1_down
  beq return 

@pitch2_up & pitch2_down generate pitch of 349.23 Hz
pitch2_up:
  push {lr}
  add r4, #949
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch2_up
  beq return

pitch2_down:
  push {lr}
  sub r4, #949
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch2_down
  beq return

@pitch3_up & pitch3_down generate pitch of 392 Hz
pitch3_up: 
  push {lr}
  add r4, #1074
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch3_up
  beq return

pitch3_down: 
  push {lr}
  sub r4, #1074
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch3_down
  beq return

@pitch4_up & pitch4_down generate pitch of 415.30 Hz
pitch4_up:
  push {lr}
  add r4, #1129
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch4_up
  beq return

pitch4_down:
  push {lr}
  sub r4, #1129
  mov r0, r4 
  bl BSP_AUDIO_OUT_Play_Sample
  subs r5, #1
  pop {lr}
  bne pitch4_down
  beq return

silence: @generates silence
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