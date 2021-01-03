
import Foundation

// Возможные действия с автомобилем
enum WindowsStatus {
    case open, closed
}

enum EngineStatus {
    case started, muted
}
// Структуры
struct SportCar {
    let carBrand: String
    let year: Int
    let trunkVolume: Int
    var engine: EngineStatus
    var windows: WindowsStatus
    var filledTrunkVolume: Int

    func printConsol(){
        print("Марка авто - \(carBrand), Год выпуска - \(year), Объем багажника - \(trunkVolume) литров, Статус двигателя - \(engine), Статус окан - \(windows), заполненный объем багажника - \(filledTrunkVolume) литров")
    }
    mutating func brush(engine: EngineStatus, windows: WindowsStatus, filledTrunkVolume: Int){
        self.engine = engine
        self.windows = windows
        self.filledTrunkVolume = filledTrunkVolume
    }
}

struct TrunkCar {
    let carBrand: String
    let year: Int
    let bodyVolume: Int
    var engine: EngineStatus
    var windows: WindowsStatus
    var filledBodyVolume: Int
    
    func printConsol(){
        print("Марка авто - \(carBrand), Год выпуска - \(year), Объем кузова - \(bodyVolume) m³, Статус двигателя - \(engine), Статус окан - \(windows), заполненный объем багажника - \(filledBodyVolume) m³")
    }
    mutating func brush(engine: EngineStatus, windows: WindowsStatus, filledBodyVolume: Int){
        self.engine = engine
        self.windows = windows
        self.filledBodyVolume = filledBodyVolume
    }
}

//  Инициализируем экземпляры
var lotus = SportCar(carBrand: "Lotus", year: 2020, trunkVolume: 200, engine: .muted, windows: .closed, filledTrunkVolume: 0)
lotus.brush(engine: .started, windows: .open, filledTrunkVolume: 100)

var ferrari = SportCar(carBrand: "Ferrari", year: 2017, trunkVolume: 174, engine: .muted, windows: .closed, filledTrunkVolume: 0)
ferrari.brush(engine: .started, windows: .open, filledTrunkVolume: 101)

var volvo = TrunkCar(carBrand: "Volvo", year: 2019, bodyVolume: 74, engine: .muted, windows: .open, filledBodyVolume: 0)
volvo.brush(engine: .started, windows: .open, filledBodyVolume: 55)

var kamaz = TrunkCar(carBrand: "Kamaz", year: 2016, bodyVolume: 65, engine: .muted, windows: .closed, filledBodyVolume: 0)
kamaz.brush(engine: .started, windows: .open, filledBodyVolume: 44)

// Распечатаем в консоль
lotus.printConsol()
ferrari.printConsol()
volvo.printConsol()
kamaz.printConsol()


