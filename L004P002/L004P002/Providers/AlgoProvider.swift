//
//  DiagramImageProvider.swift
//  L003P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import Foundation

struct Algo {
    var name: String
}

struct AlgoProvider {

    func sortings() -> [Algo] {
        return [
            Algo(name: "Insertion Sort"),
            Algo(name: "Selection Sort"),
            Algo(name: "Shell Sort"),
            Algo(name: "Quicksort"),
            Algo(name: "Merge Sort"),
            Algo(name: "Heap Sort"),
            Algo(name: "Introsort"),
            Algo(name: "Counting Sort"),
            Algo(name: "Radix Sort"),
            Algo(name: "Topological Sort"),
            Algo(name: "Bubble Sort"),
            Algo(name: "Slow Sort")
        ]
    }
}
