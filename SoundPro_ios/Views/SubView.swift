//  サブビュー
//  SubView.swift
//  SoundPro_ios

import Foundation
import SwiftUI

struct SubView: View {
    
    let soundEffect = SoundEffect();
    
    var body: some View {
        VStack{
            Text("EffectTestView").font(.largeTitle);
            HStack{
                Button(action: soundEffect.PlayAudio) {
                    Text("Effect再生")
                        .font(.largeTitle)
                        .foregroundColor(Color.red);
                    
                }
            }
        }
    }
}
