⍝ File for neat Project Euler solutions in APL
⍝ ⎕io←1 unless otherwise specified

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

⍝ PE23: Sum of all numbers which are not the sum of 2 abundant numbers (sum of proper divisors>number) 
⍝ You are given an upper bound of 28123. This gets all abundant numbers below 28123,
⍝ Outer product adds them, and filters. You need to filter because you're summing all combinations of abundant numbers below the upper bound,
⍝ so your range will be about 2*upper bound and you'll be missing a few that eventually fill out)
⍝ ⎕io←0
PE23 +/{(⍵<28123)/⍵}⍸~(⊢∊⍨∘⍳⌈/)(⊂∘⍋⌷⊢)∪∊(⊣∘.+⊢)⍸(⊣<(+/(⍸(0=(⍳)|⊢))))¨⍳28123

⍝ PE29: Number of unique a^b for 2 <= a, b <= 100
PE29 ← ≢∪∊((⍳99)+1) ∘.* ((⍳99)+1)


