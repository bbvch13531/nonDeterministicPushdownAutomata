func readInput(_ str:String?) -> Int {
    guard let strVal = str else {
        print("Cannot unwrap String")
        return -1
    }
    guard let res = Int(strVal) else {
        print("Cannot casting to Int")
        return -1
    }
    return res
}


// main.swift에 입출력을 위한 불필요한 변수가 많음.
// 나중에 macApp으로 옮길 때 사라질 코드이므로 잠시 이대로 둘 것.

print("Input tape 입력 : ")
let tape = readLine()
print("State의 개수와 Sigma의 개수 입력 : ")

var array = [String]()
var num = readLine()
if let num = num{
    array = num.split(separator:" ").map{
        String($0)
    }
    // for ele in array{
    //     print(ele)
    // }
}
let N = Int(array[0])!
let S = Int(array[1])!

array.removeAll()
<<<<<<< HEAD
print("\ asd")
=======
>>>>>>> 3f0f0a263ce926ca172b9d93f7df35856115c966
print("Start state와 Accept state 입력 (첫번째는 start, 이후는 accept) : ")

num = readLine()
if let num = num{
    array = num.split(separator:" ").map{
        String($0)
    }
}
var inputState: States

    var state = States()
        for i in 0..<array.capacity {
        if i == 0 {
            state.start = Int(array[0])!
        } else {
            state.accept.append(Int(array[i])!)
        }
    }
inputState = state

print("Sigma 입력 : (cur tape stk push next)")
for _ in 0..<S {
    var sigma = [String]()
    var readSigma = readLine()
    if let readSigma = readSigma{
        sigma = readSigma.split(separator:" ").map{
            String($0)
        }
    }
    var tmp = Sigma(cur:Int(sigma[0])!, tape:Character(sigma[1]), stk:Character(sigma[2]), push:Character(sigma[3]), next:Int(sigma[4])!)
    inputState.transition.append(tmp)
    sigma.removeAll()
}
var DPA = DeterministicPushdownAutomata(states:inputState, tape:tape!)

let res = DPA.recognize()
print(res)