//
//  Benchmark.swift
//  Howework
//
//  Created by Alexey Ozerov on 21.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import SwiftUI

struct Benchmark : View {
    var body: some View {
        NavigationView {
            Text("Benchmark")
        }
    }
}

#if DEBUG
struct Benchmark_Previews : PreviewProvider {
    static var previews: some View {
        Benchmark()
    }
}
#endif
