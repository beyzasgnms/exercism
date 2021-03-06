//Solution goes in Sources
struct SpaceAge {
    
    init (_ age: Double) {
        self.age = age
    }
    var age: Double
    
    var seconds: Double {
        get {
            return age }
    }
    
    var onEarth: Double {
        get {
            return age / 31557600
        }
    }
    
    var onMercury: Double {
        get {
            return onEarth / 0.2408467
        }
    }
    var onVenus: Double {
        get {
            return onEarth / 0.61519726
        }
    }
    var onMars: Double {
        get {
            return onEarth / 1.8808158
        }
    }
    var onJupiter: Double {
        get {
            return onEarth / 11.862615
        }
    }
    var onSaturn: Double {
        get {
            return onEarth / 29.447498
        }
    }
    var onUranus: Double {
        get {
            return onEarth / 84.016846
        }
    }
    var onNeptune: Double {
        get {
            return onEarth / 164.79132
        }
    }
}
