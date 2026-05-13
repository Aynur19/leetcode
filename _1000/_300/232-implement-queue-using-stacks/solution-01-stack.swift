class MyQueue {
    private var input: [Int] = []
    private var output: [Int] = []

    func push(_ x: Int) {
        input.append(x)
    }

    func pop() -> Int {
        moveIfNeeded()
        return output.removeLast()
    }

    func peek() -> Int {
        moveIfNeeded()
        return output.last!
    }

    func empty() -> Bool {
        input.isEmpty && output.isEmpty
    }

    private func moveIfNeeded() {
        if output.isEmpty {
            while !input.isEmpty {
                output.append(input.removeLast())
            }
        }
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */