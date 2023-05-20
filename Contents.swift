import UIKit

/*
 
 Dependency Injection - its the notion of defining conrtacts for objects and classes and using those contracts to inject multiple types of objects, that inherit that contract.
 
 Contract = protocol
 
 Dependency injection mechanism allows us to define contracts that can be used by any class that inherits of conforms to that contract. (1)
 
 Внедрение зависимостей — это определение контрактов для объектов и классов и использование этих контрактов для внедрения нескольких типов объектов, которые наследуют этот контракт.
 
 */

protocol Driving {
    func startDriving()
    func isDriving() -> Bool
    func stopDriving()
}

class BMW: Driving {
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func stopDriving() {
        
    }
}

class Honda: Driving {
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func stopDriving() {
        
    }
}

class SelectedCar {
    let car: Driving  // (1)
    
    init(car: Driving) { // (1)
        self.car = car
    }
}

let selection = SelectedCar(car: BMW())
let selection2 = SelectedCar(car: Honda())
