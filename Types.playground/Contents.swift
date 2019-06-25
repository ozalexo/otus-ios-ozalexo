final class Node<K, V> {
    var key: K?
    var value: V?
    var next: Node<K, V>?

    init(key: K?, value: V?, next: Node<K, V>?) {
        self.key = key
        self.value = value
        self.next = next
    }
    init() {}
}

final class LinkedList<K, V> where K:Equatable {
    private var fakeHead: Node<K, V>
    private var _size: Int

    var size: Int { return _size }
    var isEmpty: Bool { return size == 0 }

    init() {
        fakeHead = Node<K, V>()
        _size = 0
    }

    private func getNode(key: K) -> Node<K, V>? {
        var curr = fakeHead.next
        while curr != nil {
            if let currKey = curr?.key {
                if currKey == key {
                    return curr
                }
            }
            curr = curr?.next
        }
        return nil
    }

    // Create
    func add(key: K, value: V) {
        if let node = getNode(key: key) {
            node.value = value
        } else {
            fakeHead.next = Node<K, V>.init(key: key, value: value, next: fakeHead.next)
            _size += 1
        }
    }

    // Read
    func get(key: K) -> V? {
        return getNode(key: key)?.value
    }

    // Update
    func set(key: K, value: V) -> Bool {
        if let node = getNode(key: key) {
            node.value = value
            return true
        }
        return false
    }

    // Delete
    func remove(key: K) -> V? {
        var next: Node<K, V>? = fakeHead

        while next?.next != nil {
            if let nodeKey = next?.next?.key {
                if nodeKey == key {
                    break
                }
            }
            next = next?.next
        }

        if next?.next != nil {
            let delNode = next?.next
            next?.next = delNode?.next
            delNode?.next = nil
            _size -= 1
            return delNode?.value
        }

        return nil
    }
}


extension Node: CustomStringConvertible {
    var description: String {
        return "\(key): \(value)"
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        var str = ""
        var node: Node<K, V>? = fakeHead
        for _ in 0 ..< _size {
            node = node?.next
            if let n = node {
                str.append("\(n) 🔑 ")
            }
        }
        return str
    }
}


let list = LinkedList<Int, String>()
list.add(key: 3, value: "3tewst")
print(list)
