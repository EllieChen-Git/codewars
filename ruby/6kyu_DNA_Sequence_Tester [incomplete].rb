# Question (with link): https://www.codewars.com/kata/dna-sequence-tester/train/ruby
    # DNA is a biomolecule that carries genetic information. It is composed of four different building blocks, called nucleotides: adenine (A), thymine (T), cytosine (C) and guanine (G). Two DNA strands join to form a double helix, whereby the nucleotides of one strand bond to the nucleotides of the other strand at the corresponding positions. The bonding is only possible if the nucleotides are complementary: A always pairs with T, and C always pairs with G.

    # Due to the asymmetry of the DNA, every DNA strand has a direction associated with it. The two strands of the double helix run in opposite directions to each other, which we refer to as the 'up-down' and the 'down-up' directions.

    # Write a function checkDNA that takes in two DNA sequences as strings, and checks if they are fit to form a fully complementary DNA double helix. The function should return a Boolean true if they are complementary, and false if there is a sequence mismatch (Example 1 below).

    # Note:
    # All sequences will be of non-zero length, and consisting only of A, T, C and G characters.
    # All sequences will be given in the up-down direction.
    # The two sequences to be compared can be of different length. If this is the case and one strand is entirely bonded by the other, and there is no sequence mismatch between the two (Example 2 below), your function should still return true.
    # If both strands are only partially bonded (Example 3 below), the function should return false.

# Example 1:

# seq1 = 'GTCTTAGTGTAGCTATGCATGC';  // NB up-down
# seq2 = 'CAGCATCACATCGATACGTACG';  // NB up-down

# checkDNA (seq1, seq2);
# // --> false

# // Because there is a sequence mismatch at position 4:
# // (seq1)    up-GTCTTAGTGTAGCTATGCATGC-down
# //              ||| ||||||||||||||||||
# // (seq2)  down-CAGCATCACATCGATACGTACG-up
# Example 2:

# seq1 = 'GCGCTGCTAGCTGATCGA';             // NB up-down
# seq2 = 'ACGTACGATCGATCAGCTAGCAGCGCTAC';  // NB up-down

# checkDNA (seq1, seq2);
# // --> true

# // Because one strand is entirely bonded by the other:
# // (seq1)       up-GCGCTGCTAGCTGATCGA-down
# //                 ||||||||||||||||||
# // (seq2)  down-CATCGCGACGATCGACTAGCTAGCATGCA-up
# Example 3:

# seq1 = 'CGATACGAACCCATAATCG';  // NB up-down
# seq2 = 'CTACACCGGCCGATTATGG';  // NB up-down

# checkDNA (seq1, seq2);
# // --> false

# // Because both strands are only partially bonded:
# // (seq1)  up-CGATACGAACCCATAATCG-down
# //                      |||||||||
# // (seq2)          down-GGTATTAGCCGGCCACATC-up

# My answer - only passed 8/9 tests

def check_DNA(seq1, seq2)
    
    short = seq1 
    long = seq2
    
    if seq1.length > seq2.length
        long = seq1
        short = seq2 
    end

    short = seq1.gsub(/[G]/, 'G' => '0').gsub(/[T]/, 'T' => '1').gsub(/[C]/, 'C' => '0').gsub(/[A]/, 'A' => '1')
    long = seq2.gsub(/[G]/, 'G' => '0').gsub(/[T]/, 'T' => '1').gsub(/[C]/, 'C' => '0').gsub(/[A]/, 'A' => '1')

    if long.match(short) || short.reverse == long
        p true
        else
        p false
    end
end


# Best practice in CodeWars:

def check_DNA(seq1, seq2)
    min, max = seq1.length > seq2.length ? [seq2, seq1] : [seq1, seq2]
    p max.include?(min.gsub(/[ATGC]/, 'A' => 'T', 'T' => 'A', 'G' => 'C', 'C' => 'G').reverse)
end


check_DNA('GTCTTAGTGTAGCTATGCATGC', 'CAGCATCACATCGATACGTACG') #false
check_DNA('GCGCTGCTAGCTGATCGA', 'CATCGCGACGATCGACTAGCTAGCATGCA') #true
check_DNA('CGATACGAACCCATAATCG', 'CTACACCGGCCGATTATGG') #false
check_DNA('ATGCTACG', 'CGTAGCAT') #true
check_DNA('TGCTACGTACGATCGACGATCCACGAC', 'GTCGTGGATCGTCGATCGTACGTAGCA') #true
check_DNA('TAGCATCGCCAAATTATGCGTCAGTCTGCCCG','GGGCA') #true
check_DNA('ACGACTACGTGCGCCGCTAATATT','GCACGGGTCGT') #false
check_DNA('GAGCAGTTGGTAGTTT','GTATCGAAACTACCA') #false




