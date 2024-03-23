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
    Activity (id: 1, judul: "Dinamika Litosfer", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "geology-yellow-small", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: false),
    Activity (id: 2, judul: "Ruang dan Komposisi", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "art-small", tags: ["Ulangan Harian","Ujian Akhir"], isTodayActivity: false),
    Activity (id: 3, judul: "Alat Pernapasan", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "biology-small", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true),
    Activity (id: 4, judul: "Peluang", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Math","Ujian Akhir", "Matematika", "Science"], isTodayActivity: false),
    Activity(id: 5, judul: "Peristiwa Rengasdengklok", deskripsi: "ini deskripsi", image: "history-small", tags: ["Sejarah"], isTodayActivity: false)
    ]
    
    static var theTags: [Tag] = [
        Tag(name: "Math", isSelected: false),
        Tag(name: "English", isSelected: false),
        Tag(name: "Geography", isSelected: false),
        Tag(name: "Physic", isSelected: false),
        Tag(name: "Art", isSelected: false)
    ]
}

var activity = Activity.init(id: 6, judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "math-small", tags: ["Ujian Akhir", "Matematika"/*, "Science", "Apakek"*/], isTodayActivity: true)

struct Tag: Hashable {
    var name: String
    var isSelected: Bool
}


