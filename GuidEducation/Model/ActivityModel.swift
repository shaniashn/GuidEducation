//
//  ActivityModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import Foundation

//struct Activity: Identifiable {
struct Card: Identifiable {
    var id: Int
    var judul: String
    var deskripsi: String
    var image: String
    var tags: [String]
    var isTodayActivity: Bool
}

struct Tag: Hashable, Identifiable {
    var id = UUID().uuidString
    var name: String
    var isSelected: Bool
}

struct Activity: Identifiable {
    var id: String
    var title: String
    var objective: String
//    var date: Date
    var tags: [Tag]
    var guideline: [Guidelines]
    var guide: Guide
//    var answer: String
//    var engage: Engage
    
    init(id: String = UUID().uuidString, title: String, objective: String, tags: [Tag], guideline: [Guidelines], guide: Guide) {
        self.id = id
        self.title = title
        self.objective = objective
//        self.date = ""
        self.tags = tags
        self.guideline = guideline
        self.guide = guide
//        self.engage = engage
    }
}



struct Guide {
    var id: Int
    var engage: Engage
    var collab: Collab
    var think: Think
    var confi: Confidence
    var reflect: Reflection
}

struct Guidelines: Identifiable {
    var id: Int
//    var type: GuidesType
    var type: Guide
    var imageGuides: String
    var textGuides: String
    var subTextGuides: String
}

struct Engage {
    var engageAct: [Method]
    var notes: String
}

struct Collab {
    var collabThing: [Method]
    var collabAct: [Method]
    var notes: String
}

struct Think {
    var thinkThing: [Method]
    var notes: String
}

struct Confidence {
    var confiThing: [Method]
    var notes: String
}

struct Reflection {
    var engagement: [Method]
    var output: [Method]
    var assess: [Method]
    var rate: Int
}

struct Method: Identifiable {
    var id: Int
    var text: String
    var isSelected: Bool
}

//struct Dates {
//    var day: String
//    var date: Int?
//}

class ActivityData {
   static var cardData: [Card] = [
    Card (id: 1, judul: "Dinamika Litosfer", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "geology-yellow-small", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: false),
    Card (id: 2, judul: "Ruang dan Komposisi", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "art-small", tags: ["Ulangan Harian","Ujian Akhir"], isTodayActivity: false),
    Card (id: 3, judul: "Alat Pernapasan", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "biology-small", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true),
    Card (id: 4, judul: "Peluang", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Math","Ujian Akhir", "Matematika", "Science"], isTodayActivity: false),
    Card(id: 5, judul: "Peristiwa Rengasdengklok", deskripsi: "ini deskripsi", image: "history-small", tags: ["Sejarah"], isTodayActivity: false)
    ]
    
    static var theTags: [Tag] = [
       Tag(name: "Math", isSelected: false),
       Tag(name: "English", isSelected: false),
       Tag(name: "Geography", isSelected: false),
       Tag(name: "Socio", isSelected: false),
       Tag(name: "Art", isSelected: false)
   ]

    var x = ""
    
    static var guidelinesData: [Guidelines] = [
        Guidelines(id: 1, type: guideItem, imageGuides: "guide-img1", textGuides: "Create activity that engage learners", subTextGuides: "Choose activity that you will use"),
        Guidelines(id: 2, type: guideItem, imageGuides: "guide-img2", textGuides: "Establish collaboration between learners", subTextGuides: "Choose activity that can develop collaboration"),
        Guidelines(id: 3, type: guideItem, imageGuides: "guide-img3", textGuides: "Help learners develop creative thinking", subTextGuides: "Choose activity that develop creative thinking"),
        Guidelines(id: 4, type: guideItem, imageGuides: "guide-img4", textGuides: "Build learners confidence", subTextGuides: "Choose activity that can build confidence"),
        Guidelines(id: 5, type: guideItem, imageGuides: "guide-img5", textGuides: "Reflection", subTextGuides: "Time to reflect")
    ]
    
    static var activityData: Activity = Activity(id: "1", title: "Dinamika Litosfer", objective: "Memahami dinamika litosfer dan dampaknya terhadap kehidupan", tags: [tag], guideline: guidelinesData, guide: guideItem)
    
//    static var itemDates: [Dates] = [
//        Dates(day: "Sun"),
//        Dates(day: "Mon"),
//        Dates(day: "Tue"),
//        Dates(day: "Wed"),
//        Dates(day: "Thu"),
//        Dates(day: "Fri"),
//        Dates(day: "Sat")
//    ]
}

var activity = Card.init(id: 6, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Ujian Akhir", "Matematika"], isTodayActivity: true)

var guideItem = Guide(id: 1, engage: engageItem, collab: collabItem, think: thinkItem, confi: confiItem, reflect: reflectionItem)

var engageItem = Engage(engageAct: methodData, notes: "this notes")
var collabItem = Collab(collabThing: [Method(id: 1, text: "Discussions", isSelected: true),
                                      Method(id: 2, text: "Activities", isSelected: false)
                                     ], collabAct: methodData, notes: "the notes")
var thinkItem = Think(thinkThing: methodData, notes: "notess")
var confiItem = Confidence(confiThing: methodData, notes: "notes")
var reflectionItem = Reflection(engagement: [
    Method(id: 1, text: "Very well, they actively participated throughout the whole activity", isSelected: false),
    Method(id: 2, text: "Good, they showed a sign of interest and participated enough in the activity", isSelected: false),
    Method(id: 3, text: "Poor, they didn’t seem to be interested and weren’t participating fully", isSelected: false),
], output: [
    Method(id: 1, text: "Very well, students were able to reach the objective of this activity that were set in the beginning of the class", isSelected: false),
    Method(id: 2, text: "Good, students were able to gain some knowledge from this activity but didn’t reach the goal completely", isSelected: false),
    Method(id: 3, text: "Poor, most of the students weren’t able to reach the objective of this activity", isSelected: false)
], assess: [
    Method(id: 1, text: "Very well, students were able to solve practical problems quickly and efficiently", isSelected: true),
    Method(id: 2, text: "Good, although students faced some challenges but they showed positive attitude in completing the task given", isSelected: true),
    Method(id: 3, text: "Poor, students weren’t able to complete task efficiently and didn’t show willingness to learn", isSelected: true)
], rate: 0)

var methodData: [Method] = [
    Method(id: 1, text: "Ice breaking activity", isSelected: false),
    Method(id: 2, text: "Give analogy", isSelected: false),
    Method(id: 3, text: "Real case study", isSelected: true)
]

var tag: Tag = Tag(name: "Geography", isSelected: false)
