//
//  ActivityModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import Foundation

struct Activity {
    var judul: String
    var deskripsi: String
    var image: String
    var tags: [String]
    var isTodayActivity: Bool
}

var activityData: [Activity] = [
    Activity (judul: "Dinamika Litosfer", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: false),
    Activity (judul: "Matrix2", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Hitung"], isTodayActivity: false),
    Activity (judul: "Matrix3", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true),
    Activity (judul: "Peluang", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Math","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true),
    Activity(judul: "Matriks", deskripsi: "ini deskripsi", image: "", tags: ["Math"], isTodayActivity: true)
]

var activity = Activity.init(judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], isTodayActivity: true)

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
