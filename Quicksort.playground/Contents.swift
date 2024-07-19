import UIKit

class QuickSort{
    
    func sort(array: [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }
        let pivot = array[(array.count - 1) / 2]
        let lower = array.filter{$0 < pivot}
        let higher = array.filter{$0 > pivot}
        let center = array.filter{$0 == pivot}

        return sort(array: lower) + center + sort(array: higher)
    }
}

print(QuickSort().sort(array: [7,2,0,1,4,8,5,6]))
