#[derive(Debug, PartialEq, Eq)]
pub struct Dna {
    sequence: String
}

#[derive(Debug, PartialEq, Eq)]
pub struct Rna {
    sequence: String
}

impl Dna {
    pub fn new(dna: &str) -> Result<Dna, usize> {
        for (index, nucleotide) in dna.chars().enumerate() {
            match nucleotide {
                'A' | 'C' | 'G' | 'T' => continue,
                _ => return Err(index), 
            }
        }
        Ok(Dna{ sequence: dna.to_string() })
    }

    pub fn into_rna(self) -> Rna {
        let rna_sequence = self.sequence.chars().map(|nucleotide| {
            match nucleotide {
                'G' => 'C',
                'C' => 'G',
                'T' => 'A',
                'A' => 'U',
                _ => panic!("Nucleótido inválido en la secuencia de ADN"),
            }
        }).collect::<String>();

        Rna { sequence: rna_sequence }
    }
}

impl Rna {
    pub fn new(rna: &str) -> Result<Rna, usize> {
        for (index, nucleotide) in rna.chars().enumerate() {
            match nucleotide {
                'A' | 'C' | 'G' | 'U' => continue,
                _ => return Err(index), 
            }
        }
        Ok(Rna{sequence:rna.to_string()})
    }
}
