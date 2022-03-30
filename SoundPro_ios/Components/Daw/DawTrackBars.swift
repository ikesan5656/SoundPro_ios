//
//  DawTrackBars.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/27.
//

import SwiftUI
import PartialSheet //ハーフモーダル

struct DawTrackBars: View {
    @ObservedObject private var trackModel = TrackModel.shared;
    @ObservedObject private var manager = DeploySoundManager.shared;
    //ハーフモーダル
    //@EnvironmentObject var partialSheetManager: PartialShe;
    //let sheetManager: PartialSheetManager = PartialSheetManager();
    
    var body: some View {
       
        VStack(spacing: 5){
            //トラック数
            ForEach(0..<trackModel.items.count, id: \.self) { trackIndex in
                
                HStack(spacing: 5){
                    //小節数
                    ForEach(0..<trackModel.items[trackIndex].musicalBars.count, id: \.self) { barIndex in
                        ZStack{
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 60, height:50)
                            Text("\(trackModel.items[trackIndex].musicalBars[barIndex].name)")
                        
                        }.onTapGesture {
                            print("小節をタップしました")
                            manager.updateCurrentCategory(category: trackModel.items[trackIndex].name);
                            print(trackModel.items[trackIndex].name);
                            
                            print(manager.getSoundFileNames(genleName: trackModel.items[trackIndex].name));
                            manager.openToggle();
                        }
                    }
                }
            }
        }
        
    }
}

struct DawTrackBars_Previews: PreviewProvider {
    static var previews: some View {
        DawTrackBars()
    }
}
