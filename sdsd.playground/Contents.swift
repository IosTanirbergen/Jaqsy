import UIKit

func foo() {
    print(1)
    DispatchQueue.main.async {
        print(2)
        DispatchQueue.global(qos: .background).async {
            print(3)
            DispatchQueue.global(qos: .background).sync {
                print(4)
            }
            print(5)
        }
        print(6)
    }
    print(7)
}

print(foo())
