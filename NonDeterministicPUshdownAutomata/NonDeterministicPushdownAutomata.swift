struct NonDeterministicPushdownAutomata {
    var states: States
    var head: Header
    var tape: String

    var stk = Stack<Character>()
    init(states:States, tape:String){
        self.states = states
        self.tape = tape
        self.head = Header(transition: states.transition)
    }

    mutating func recognize() -> Bool {
        var cur = states.start

        while(!states.isAccepted(stateID: cur) && !states.isHalted){

            let input = self.tape.remove(at:tape.startIndex)
            //tape 의 첫번째 지움
            // e 인 경우에 예외처리해야함.

            if(stk.isEmpty()){
                return false
            }
            let top = stk.pop()
            // pop도 e 인 경우에 예외처리해야함.
            // 현재 state에 해당하는 sigma여러개를 가져온다. ㄴㄴ
            // var sigmas = states.findSigma(state:cur)
            
            guard let nextSigma = head.read(cur: cur,tape: input, stk: top) else {
                return false               
            }
            
            stk.push(value: nextSigma.push)
            //push 해야징...
            cur = nextSigma.next
        }

        return true
    }
}