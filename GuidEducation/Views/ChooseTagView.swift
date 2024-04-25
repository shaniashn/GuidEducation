//
//  ChooseTagView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 21/06/23.
//

import SwiftUI

struct ChooseTagView: View {
    var items: [String]
    var groupedItems: [[String]] = [[String]]()
    var screenWidth = UIScreen.main.bounds.size.width
    
    init(items: [String]) {
        self.items = items
        self.groupedItems = createGroupdItems(items)
    }
    
    func createGroupdItems(_ items: [String]) -> [[String]] {
        var groupedItems: [[String]] = [[String]]()
        var tempItems: [String] = [String]()
        var width: CGFloat = 0
        
        for word in items {
            let label = UILabel()
            label.text = word
            label.sizeToFit()
            
            let labelWidth = label.frame.size.width + 32
            
            if (width + labelWidth + 32) < screenWidth {
                width += labelWidth
                tempItems.append(word)
            } else {
                width = labelWidth
                groupedItems.append(tempItems)
                tempItems.removeAll()
                tempItems.append(word)
            }
        }
        
        groupedItems.append(tempItems)
        return groupedItems
    }
    
    var body: some View {
        VStack {
            ForEach(groupedItems, id: \.self) { subItems in
                HStack(content: {
                    ForEach(subItems, id: \.self) { item in
                        Button(action: {}, label: {
                            TagView(tagName: item)
                        })
                    }
                })
            }
            Button(action: {}, label: {
                TagView(tagName: "Add")
            })
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTagView(items: ["Ulangan Harian", "Math", "Sejarah", "Biology", "Chemistry", "Economy", "Art", "English", "Geography", "Socio"])
    }
}
