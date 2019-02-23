# deterministicPushdownAutomata
Deterministic Pushdown Automata implementation of Swift


## TIL

In OOP terms:

Association --> A has-a C object (as a member variable)

Dependency --> A references B (as a method parameter or return type)

```
public class A {
    private C c;
    public void myMethod(B b) {
        b.callMethod();
    }
}
```

Class Diagram을 그리는 중...

손코딩 으로 설계를 하다가 의문점이 생김.

ε를 처리하는 과정에서 deterministic과 non-deterministic의 차이를 배웠다.

가능한 상태를 찾는 유일한 경우를 찾는 방법으로 짰는데

알고보니 DFS로 탐색해서 가능한 모든 경우 중 accepted되는 단 한 가지의 경우를 찾는 방법으로 고쳐야 한다.

context-free language 와 DPDA의 개념을 다시 공부중...