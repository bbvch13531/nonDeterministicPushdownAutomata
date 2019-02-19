typealias StateID = Int
struct Sigma {
    let cur: StateID
    let tape: Character
    let stk: Character
    let push: Character
    let next: StateID

    init(cur:StateID, tape:Character, stk:Character, push:Character, next:StateID){
        self.cur = cur
        self.tape = tape
        self.stk = stk
        self.push = push
        self.next = next
    }
}
struct States {
    var start: Int
    var accept: [Int]
    var transition = Array<Sigma>()
    var isHalted = false
    init(){
        start = 0
        accept = [Int]()
    }
    init(start:Int, accept:[Int] ){
        self.start = start
        self.accept = accept
    }

    func isAccepted(state: Int) -> Bool {
        for s in accept{
            if s == state {
                return true
            }
        }
        return false
    }
    func findSigma(state: Int) -> Array<Sigma> {
        var result = Array<Sigma>()
        for s in transition {
            if(state == s.cur){
                result.append(s)
            }
        }
        return result
    }
}