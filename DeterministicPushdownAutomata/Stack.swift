import Foundation

public struct Stack<T> {
    private var elements = [T]()
    public init(){}
    
    public mutating func push(value: T){
        self.elements.append(value)
    }

    public mutating func pop() -> T {
        return self.elements.popLast()!
    }

    public func isEmpty() -> Bool {
        return self.elements.isEmpty
    }

    public func top() -> T {
        return self.elements.last!
    }

    public var size: Int {
        return self.elements.count
    }
}