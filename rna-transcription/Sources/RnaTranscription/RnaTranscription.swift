//Solution goes in Sources

import Foundation

struct Nucleotide {
    let nucleotideType: String

    init(_ nucleotide: String) {
        self.nucleotideType = nucleotide
    }

    func complementOfDNA() throws -> String {
        var complement: String = ""

        for temp in nucleotideType {
            let nucleotide = convert(temp)

            if nucleotide == temp {
                throw RnaTranscription.TranscriptionError.invalidNucleotide(message: "\(nucleotide) is not a valid Nucleotide")
            }
            complement = complement + String(nucleotide)
        }
        return complement
    }

    func convert(_ char: Character) -> Character {
        switch char {
        case "G":
            return "C"
        case "C":
            return "G"
        case "T":
            return "A"
        case "A":
            return "U"
        default:
            return char
        }
    }
}

struct RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(message: String)

    }
}
