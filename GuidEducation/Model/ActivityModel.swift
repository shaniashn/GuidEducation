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
    var id: Int
    var title: String
    var objective: String
    var date: Date
    var tags: [Tag]
    var guideline: Int
}

struct Guidelines: Identifiable {
    var id: Int
    var type: String
    var imageGuides: String
    var textGuides: String
    var subTextGuides: String
}



class ActivityData {
   static var activityData: [Card] = [
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
        Guidelines(id: 1, type: "engage", imageGuides: "guide-img1", textGuides: "Create activity that engage learners", subTextGuides: "Choose activity that you will use"),
        Guidelines(id: 2, type: "collaboration", imageGuides: "guide-img2", textGuides: "Establish collaboration between learners", subTextGuides: "Choose activity that can develop collaboration"),
        Guidelines(id: 3, type: "thinking", imageGuides: "guide-img3", textGuides: "Help learners develop creative thinking", subTextGuides: "Choose activity that develop creative thinking"),
        Guidelines(id: 4, type: "confidence", imageGuides: "guide-img4", textGuides: "Build learners confidence", subTextGuides: "Choose activity that can build confidence"),
        Guidelines(id: 5, type: "reflection", imageGuides: "guide-img5", textGuides: "Reflection", subTextGuides: "Time to reflect")
    ]
    
}

var activity = Card.init(id: 6, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Ujian Akhir", "Matematika"/*, "Science", "Apakek"*/], isTodayActivity: true)


