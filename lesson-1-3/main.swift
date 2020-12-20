/*
 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

 2. Структуры должны содержать .

 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

 6. Вывести значения свойств экземпляров в консоль.
 */
import Foundation

enum WindowsStatus {
    case open, closed
}

enum EngineStatus {
    case started, muted
}

struct SportCar {
    var carBrand: String
    let year: Int
    let trunkVolume: Int
    var engine: EngineStatus
    var windows: WindowsStatus
    var filledTrunkVolume: Bool
}

struct TrunkCar {
    var carBrand: String
    let year: Int
    let bodyVolume: Int
    var engine: EngineStatus
    var windows: WindowsStatus
    var filledBodyVolume: Bool
}

var lotus = SportCar(carBrand: "Lotus", year: 2020, trunkVolume: 200, engine: .started, windows: .closed, filledTrunkVolume: false)

var ferrari = SportCar(carBrand: "Ferrari", year: 2020, trunkVolume: 174, engine: .muted, windows: .open, filledTrunkVolume: true)

var volvo = TrunkCar(carBrand: "Volvo", year: 2019, bodyVolume: 74, engine: .started, windows: .open, filledBodyVolume: true)

var Kamaz = TrunkCar(carBrand: "Kamaz", year: 2016, bodyVolume: 65, engine: .muted, windows: .closed, filledBodyVolume: false)


print(lotus)
print(ferrari)
print(volvo)
print(Kamaz)

