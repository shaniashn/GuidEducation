//
//  AnswerRow.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 16/04/24.
//

import SwiftUI

struct AnswerRow: View {
    var isSelected: Bool
    var text: String
    var body: some View {
        HStack(spacing: 20){
            Circle()
                .fill(isSelected ? Color("gray20") : Color.clear)
                .frame(width: 14)
                .background {
                    Circle()
                        .stroke(Color("gray10"), lineWidth: 1)
                        .frame(width: 30)
                }
            Text(text)
                .multilineTextAlignment(.leading)
                .font(.system(size: 16))
                .frame(height: 60)
            Spacer()
            
        }
    }
}

#Preview {
    AnswerRow(isSelected: false, text: "aa")
}
