import UIKit


func spiralTraverse(array: [[Int]]) -> [Int] {
    var visitedElements = [Int]()
    var startRow = 0
    var endRow = array.count - 1
    var startColumn = 0
    var endColumn = array[0].count - 1
    while startRow <= endRow, startColumn <= endColumn {
        for col in stride(from: startColumn, through: endColumn, by: 1) {
            visitedElements.append(array[startRow][col])
        }
        for row in stride(from: startRow + 1, through: endRow, by: 1) {
            visitedElements.append(array[row][endColumn])
        }
        for col in stride(from: endColumn - 1, through: startColumn, by: -1) {
            if startRow == endRow { continue }
            visitedElements.append(array[endRow][col])
        }
        for row in stride(from: endRow - 1, through: startRow + 1, by: -1) {
            if startColumn == endColumn { continue }
            visitedElements.append(array[row][startColumn])
        }
        startRow += 1
        endRow -= 1
        startColumn += 1
        endColumn -= 1
    }
    return visitedElements
}
