//
//  SwiftUIView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 21/06/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State var lists = [
    "a", "b", "c"
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(lists, id: \.self) { i in
                    HStack {
                        Circle()
                            .fill(Color.black)
                            .frame(width: 10)
                        Text(i)
                    }
                    
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
