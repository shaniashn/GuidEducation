//
//  ActivityModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import Foundation

struct Activity: Identifiable {
    var id: Int
    var judul: String
    var deskripsi: String
    var image: String
    var tags: [String]
    var isTodayActivity: Bool
}

class ActivityData {
   static var activityData: [Activity] = [
    Activity (id: 1, judul: "Dinamika Litosfer", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir",/* "Matematika", "Science"*/], isTodayActivity: false),
    Activity (id: 2, judul: "Matrix2", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir"], isTodayActivity: false),
    Activity (id: 3, judul: "Matrix3", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true),
    Activity (id: 4, judul: "Peluang", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Math","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true),
    Activity(id: 5, judul: "Matriks", deskripsi: "ini deskripsi", image: "", tags: ["Math"], isTodayActivity: true)
    ]
    
    
}

var activity = Activity.init(id: 6, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Ujian Akhir", "Matematika"/*, "Science", "Apakek"*/], isTodayActivity: true)

struct Tag : Hashable {
    var name: String
    var isSelected: Bool
}

var theTags: [Tag] = [
    Tag(name: "Math", isSelected: false),
    Tag(name: "English", isSelected: false),
    Tag(name: "Geography", isSelected: false),
    Tag(name: "Physic", isSelected: false),
    Tag(name: "Art", isSelected: false)
]
