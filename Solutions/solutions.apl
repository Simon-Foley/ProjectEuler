⍝ File for random Project Euler solutions in APL

⍝ PE1: Sum of all multiples of 3 and 5 below N:
⍝ ⎕io←0
PE1 ← +/⍸0=((3|⍳)∧(5|⍳))

⍝ PE2: Sum of all even fibonacci numbers below 4 million.
⍝ Kind of gross, (+.!∘⌽⍨⍳) does a fibonacci number and I just checked
⍝ to find where it goes over 4 million at 34.
⍝ Every third fibonacci number is even
PE2 ← +/(∊(0=3∘|)⊆((+.!∘⌽⍨⍳)¨))⍳ 34
