import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
     
    var trucks = truck_weights
    var currentWeight = trucks.remove(at: 0)
    var time = 1
    var bridge = (0..<bridge_length).map { $0 == 0 ? currentWeight : 0 }
    
    func move() {
        if currentWeight == 0 { return }
        currentWeight -= bridge.remove(at: bridge_length - 1)
        time += 1
        let isOverweight = weight < currentWeight + (trucks.first ?? 0)
        let truckWeight = isOverweight || trucks.count == 0 ? 0 : trucks.remove(at: 0)
        bridge.insert(truckWeight, at: 0)
        currentWeight += truckWeight
        move()
    }
    
    move()
    
    return time
}