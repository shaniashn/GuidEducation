//
//  WrapHStack.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 25/04/24.
//

import SwiftUI

struct WrapHStack: View {
    let words = ["Ulangan harian", "Matematika", "Sejarah", "Seni Budaya", "Fisika", "Kimia", "B.Indonesia", "Geografi", "B.Inggris"]
    
    var body: some View {
        TagsView(items: words)
//        VStack {
//            Text("Five stars")
//              .background(Color.yellow)
//              .font(.system(size: 90))
//              .fixedSize()
//              .border(Color.blue)
//              .frame(width: 200, height: 100)
//              .border(Color.red)
//        }
//        .background(Color.orange)
        
        
//        VStack {
//            Menu("Edit") {
//                Button("Scribble tool", systemImage: "scribble.variable") {
//                    
//                }
//                ControlGroup(content: {
//                    Button("Add item", systemImage: "eyedropper.full") {
//                        
//                    }
//                    Button("Change contrast", systemImage: "circle.lefthalf.fill") {
//                        
//                    }
//                })
//                Button("Erase", systemImage: "eraser.fill") {
//                    
//                }
//                
//            }
//
//        }
    }
}

#Preview {
    WrapHStack()
}

struct TagsView: View {
    
    var items: [String]
    var groupedItems: [[String]] = [[String]]()
    var screenWidth = UIScreen.main.bounds.width
    
    init(items: [String]) {
        self.items = items
        self.groupedItems = createGroupedItems(items)
    }
    
    private func createGroupedItems(_ items: [String]) -> [[String]]{
        
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
                HStack {
                    ForEach(subItems, id: \.self) { items in
                        Text(items)
                    }
                }
            }
        }
    }
}
