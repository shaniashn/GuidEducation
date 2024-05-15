//
//  MethodRow.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 17/04/24.
//

import SwiftUI

struct MethodRow: View {
//    var text: String
    var method: Method
    
    var body: some View {
        HStack {
            Circle()
                .fill(method.isSelected ? Color("gray20") : Color.clear)
                .frame(width: 16)
                .background {
                    Circle()
                        .stroke(Color("gray10"), lineWidth: 1.5)
                        .frame(width: 14)
                }
            Text(method.text)
            Spacer()
        }
        .frame(height: 30)
    }
}

#Preview {
    MethodRow(method: Method(id: 1, text: "Discussions", isSelected: true))
}
