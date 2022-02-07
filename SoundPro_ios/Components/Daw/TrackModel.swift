//
//  TrackModel.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/31.
//

//Dawのトラック情報を管理するモデルクラス

import SwiftUI;

class TrackModel: ObservableObject {
    
    //シングルトンインスタンス
    static var shared = TrackModel();
    
    @Published var items: [TrackData] = [TrackData("Kick"), TrackData("Snare")];
    
    func addItems(_ items: [String]) {
        for item in items {
            self.items.append(TrackData(item))
        }
    }
    
    //トラック追加
    func AddTrack() {
        self.items.append(TrackData("test"))
    }
    
    //１つの小節更新
    func UpdateOneBar(){
        self.items[0].musicalBars[1].name = "Update";
    }
    
}
 
class TrackData: ObservableObject, Identifiable {
    let id = UUID()
    @Published var isChecked = false
    @Published var name: String
    
    //小節群
    @Published var musicalBars: [(name: String, data: String)]
    
    init(_ name: String) {
        self.name = name;
        self.musicalBars = [(name: "test", data: "none"), (name: "test", data: "none")];
    }
}
 
