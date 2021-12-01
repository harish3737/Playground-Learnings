import UIKit

//Implementation Of Subscripts

struct TimeTable{
    let multiplier : Int
    
    subscript(index:Int) -> Int{
      return index *  multiplier
    }
}

let tentimesTable = TimeTable(multiplier: 10)
print("\(tentimesTable[1])")
print("\(tentimesTable[2])")
print("\(tentimesTable[3])")
print("\(tentimesTable[4])")
print("\(tentimesTable[5])")
print("\(tentimesTable[6])")


struct Grid{
    let grid = [
       [1,1,1,1],
       [2,2,2,2],
       [3,3,3,3],
       [4,4,4,4]
    ]
    subscript(row:Int,col:Int) -> Int?{
        let maxCol = grid.count-1
        guard col < maxCol,col >= 0 else{
            return nil
        }
        
        let rowNumber = grid[col]
        guard row >= 0, row<(rowNumber.count - 1)else{
            return nil
        }
        let number = grid[col][row]
        return number
        }
}


let myGrid = Grid()
print("\(myGrid[1,2] ?? 0)")


struct GridSet{
    var grid = [
       [1,1,1,1],
       [2,2,2,2],
       [3,3,3,3],
       [4,4,4,4]
    ]
    subscript(row:Int,col:Int) -> Int?{
        get{
        let maxCol = grid.count-1
        guard col < maxCol,col >= 0 else{
            return nil
        }
        
        let rowNumber = grid[col]
        guard row >= 0, row<(rowNumber.count - 1)else{
            return nil
        }
        let number = grid[col][row]
        return number
        }
        set(value){
            grid[col][row] = value ?? 0
        }
    }

}
