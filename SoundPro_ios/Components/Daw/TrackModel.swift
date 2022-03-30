//
//  TrackModel.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/31.
//

//Dawのトラック情報を管理するモデルクラス

import SwiftUI;
import AVFoundation;

class TrackModel: ObservableObject {
    
    //シングルトンインスタンス
    static var shared = TrackModel();
    
    @Published var items: [TrackData] = [];
    
    func addItems(_ items: [String]) {
        for item in items {
            self.items.append(TrackData(item))
        }
    }
    
    //トラック追加
    func AddTrack(name: String) {
        self.items.append(TrackData(name));
    }
    
    //１つの小節更新
    func UpdateOneBar(){
        self.items[0].musicalBars[1].name = "Update";
    }
    
    //トラックの初期化
    func initializeTrack(){
        self.items = [];
        AddTrack(name: "Kick");
        AddTrack(name: "Snare");
        AddTrack(name: "Hihat");
        
    }
    
}
 
class TrackData: ObservableObject, Identifiable {
    let id = UUID()
    @Published var isChecked = false
    @Published var name: String
    
    //小節群
    @Published var musicalBars: [(name: String, audioFile: AVAudioFile?)]
    
    init(_ name: String) {
        self.name = name;
        musicalBars = [];
        //self.musicalBars = [(name: "test", data: "none"), (name: "test", data: "none")];//
        
        let defaultBar: (name: String, audioFile: AVAudioFile?) = (name: "+", audioFile: nil);
        
        for _ in (0 ..< 3){
            self.musicalBars.append(defaultBar);
        }
    }
}
 
