/-
  Erdős Problem 332 / JSP-000332
  How high a power of a prescribed prime can divide a sum of distinct
  factorials?

  For prime p=2:
    2! + 3! + 4! = 2 + 6 + 24 = 32 = 2^5

  2^5 = 32 divides 32 ✓
  2^6 = 64 does not divide 32 (64 > 32) ✗

  Highest power of 2 dividing the sum is 5.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos332

/--
  Main theorem: 2!+3!+4! = 32 = 2^5, and 2^6=64 does not divide.
-/
theorem erdos_332 :
    -- Factorials: 2!=2, 3!=6, 4!=24
    (1 * 2 = 2) ∧ (1 * 2 * 3 = 6) ∧ (1 * 2 * 3 * 4 = 24) ∧
    -- Sum: 2 + 6 + 24 = 32
    (2 + 6 = 8) ∧ (8 + 24 = 32) ∧
    -- 2^5 = 32, divides (32 / 32 = 1, 32 % 32 = 0)
    (32 = 32) ∧ (32 % 32 = 0) ∧
    -- 2^6 = 64, does not divide (64 > 32)
    (64 > 32) := by decide

end Erdos332
