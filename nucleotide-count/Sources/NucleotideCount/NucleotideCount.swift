//Solution goes in Sources
class DNA {
    var nucleotide: [Character] = [" "]
    init?(strand: String){
        if !strand.isEmpty {
            self.nucleotide = strand.filter { "ACGT".contains($0)}
            }
            if self.nucleotide.isEmpty {
                return nil
            }
        }
    
    func count(_ c: Character) -> Int {
        return self.nucleotide.filter {$0 == c}.count
        }
    
    func counts() -> Dictionary<String, Int> {
        return ["T": self.count("T"),
                "A": self.count("A"),
                "C": self.count("C"),
                "G": self.count("G")]
        }
}
