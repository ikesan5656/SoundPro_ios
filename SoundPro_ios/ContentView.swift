//
//  ContentView.swift
//  SoundPro_ios
//


import SwiftUI
import AVFoundation //音関係のライブラリ

struct ContentView: View {
    //プレイヤーコンテキスト(宣言時の!や?はnilを許す)
    @State var audioPlayer: AVAudioPlayer!;
    //音源ファイルのパス(ローカルver)
    let music_path = Bundle.main.bundleURL.appendingPathComponent("shining_star.mp3");
    
    //クラスインスタンス
    let instance = PlayMusicSimple();
    
    
    //ボタンクリックメソッド
    func ClickButton(){
        print("クリック");
        print(music_path);
        do{
            //インスタンス作成
            self.audioPlayer = try AVAudioPlayer(contentsOf: music_path);
            print("成功");
            self.audioPlayer.play();
        }catch{
           print("エラー");
        }
    }
    
    //音再生
    func PlaySound() {
        //テストでAssets.xcassets内のファイル取得
        //let test_file = NSDataAsset(name: "shining_star");
        //print(test_file);
        instance.PlaySound();
    };
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button(action: PlaySound) {
                Text("再生")
                    .font(.largeTitle)
                    .foregroundColor(Color.red);
            }
            .background(Color.mint);
        }
    }
}

/*デバッグで確認するpreview*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
