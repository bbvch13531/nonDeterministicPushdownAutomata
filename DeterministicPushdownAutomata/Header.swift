struct Header {
    var transition: Array<Sigma>
    init(transition:Array<Sigma>){
        self.transition = transition
    }
    func read(cur: Int, tape: Character, stk:Character) -> Sigma? {
        // transition에서 읽고 가능하면 true, 아니면 false
        for sigma in transition {
            if(sigma.cur == cur && sigma.tape == tape && sigma.stk == stk){
                return sigma
            }
        }
        return nil
    }
}