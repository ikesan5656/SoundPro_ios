//
//  PlayMusicSimple.swift
//  SoundPro_ios

import Foundation;
import AVFoundation; //音関係のライブラリ

/*シンプル音源再生クラス*/
class PlayMusicSimple {
    //プレイヤーコンテキスト(宣言時の!や?はnilを許す)
    var audioPlayer: AVAudioPlayer!;
    //音源ファイルのパス(ローカルver)
    let music_path = Bundle.main.bundleURL.appendingPathComponent("shining_star.mp3");
    
    //音源再生
    func PlaySound() {
        do{
            //インスタンス作成
            self.audioPlayer = try AVAudioPlayer(contentsOf: music_path);
            print("成功");
            self.audioPlayer.play();
        }catch{
            print("エラー");
        }
    }
    
    //再生終了
    func StopSound() {
        self.audioPlayer.stop();
    }
    
    
    
}


