class ATM {
    private var banknotesOrder = [20, 50, 100, 200, 500]
    private var banknotes = [Int: Int]()
    private var sum = 0

    init() {}
    
    func deposit(_ banknotesCount: [Int]) {
        for idx in banknotesOrder.indices {
            let banknote = banknotesOrder[idx]
            let count = banknotesCount[idx]

            banknotes[banknote, default: 0] += count
            sum += banknote * count
        }
    }
    
    func withdraw(_ amount: Int) -> [Int] {
        guard sum >= amount else {
            return [-1]
        }        

        var currAmount = amount
        var banknotesCount = Array(repeating: 0, count: banknotesOrder.count)
        
        for idx in stride(from: banknotesOrder.count - 1, to: -1, by: -1) {
            let banknote = banknotesOrder[idx]

            guard banknote <= currAmount, 
                  let count = banknotes[banknote],
                  count > 0 
            else { continue }

            let usedCount = min(currAmount / banknote, count)
            banknotesCount[idx] = usedCount
            currAmount -= usedCount * banknote
        }

        guard currAmount == 0 else {
            return [-1]
        }

        for idx in banknotesOrder.indices {
            let banknote = banknotesOrder[idx]
            let count = banknotesCount[idx]

            banknotes[banknote, default: 0] -= count
            sum -= banknote * count
        }
    
        return banknotesCount
    }
}

/**
 * Your ATM object will be instantiated and called as such:
 * let obj = ATM()
 * obj.deposit(banknotesCount)
 * let ret_2: [Int] = obj.withdraw(amount)
 */