//
//  Feed.swift
//  Howework
//
//  Created by Alexey Ozerov on 21.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import SwiftUI

struct Feed : View {
    var body: some View {
        NavigationView {
            Text("Feed")
        }
    }
}

#if DEBUG
struct Feed_Previews : PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
#endif
