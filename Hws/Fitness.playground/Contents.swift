import Foundation

func mensFisuiq(rost: Int) -> Int {
    switch rost {
    case 150...168:
        return rost - 100 + 2
    case 169...175:
        return rost - 100 + 4
    case 176...182:
        return rost - 100 + 6
    case 183...190:
        return rost - 100 + 8
    default:
        return 0
    }
}


