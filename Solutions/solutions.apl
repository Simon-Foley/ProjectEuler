⍝ File for neat Project Euler solutions in APL

⍝ PE1: Sum of all multiples of 3 and 5 below N:
⍝ ⎕io←0
PE1 ← +/⍸0=((3|⍳)∧(5|⍳))

⍝ PE2: Sum of all even fibonacci numbers below 4 million.
⍝ (+.!∘⌽⍨⍳) does a fibonacci number and I just checked
⍝ to find where it goes over 4 million at 34.
⍝ Every third fibonacci number is even
PE2 ← +/((∊(0=3∘|)⊆((+.!∘⌽⍨⍳)¨))⍳) 34



⍝ PE4: Largest palindrome number as multiple of two 3 digit numbers
↑↑¯1↑((⌽≡⊢)¨⊆⊢)⍕¨(⊂∘⍋⌷⊢)∪∊(∘.×⍨) 100 + ⍳899

⍝ PE5: Smallest integer which is evenly divisible by 1..20
⍝ Just use GCD Reduce!
PE5 ← ^/⍳


⍝ PE6: (Sum to N)^2 - (Sum from 0 to N of N^2)
⍝ Nice tacit solution
PE6 ← ((2*⍨(+/⍳)) - (+/2*⍨⍳))


⍝ PE8: find greatest len 13 multiplication-reduced substring in 1000 digits
⍝ Hardest part is getting the numbers loaded in
PE8 ← ⌈/13×/⍎¨

⍝ PE12: Find smallest triangular number with over 500 factors. Cheating a bit by using the inbuilt factors 
⍝ Uses unique combinations of prime factors to get total factors
)copy dfns factors
PE12 ← {(×/1++/~0=⊢⌸factors+/⍳⍵)>500: +/⍳⍵ ⋄ ∇ ⍵+1} 1
