access(all) contract KittyCreator {
    
    // Contract attributes
    access(all) var totalKitties: UInt64
    access(all) let kitties: [Kitty]

    // Kitty struct
    access(all) struct Kitty {

        access(all) let name: String
        access(all) let dna: UInt64

        init(name: String, dna: UInt64) {
            self.name = name
            self.dna = dna
        }
    }

    // Creates a new kitty
    access(all) fun createKitty(name: String, dna: UInt64) {
        self.totalKitties = self.totalKitties + 1
        let newKitty: Kitty = Kitty(name: name, dna: dna)
        self.kitties.append(newKitty)
    }

    // Constructor (initializing contract attributes)
    init() {
        self.totalKitties = 0
        self.kitties = []
    }
}