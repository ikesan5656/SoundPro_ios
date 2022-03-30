//
//  DeploySoundManager.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/03/20.
//

import Foundation

/*配置音源選択のモーダルで管理する情報クラス*/

class DeploySoundManager: ObservableObject{
    
    static var shared = DeploySoundManager();
    
    //モーダルを開いているかのフラグ
    @Published var isOpen: Bool = false;
    
    //現在選択しているトラックの種別
    var currentCategory: String = "None";
    
    //モーダルフラグ反転
    func openToggle(){
        self.isOpen.toggle();
    }
    
    //現在選択しているトラックの種別更新
    func updateCurrentCategory(category: String){
        self.currentCategory = category;
    }
    
    //選択している種類の階層のファイル名取得
    func getSoundFileNames(genleName: String) -> [String]{
        
        //取得対象ディレクトリ
        let dirPath: String = "PrivateAssets/Sounds/Deploy/" + genleName;
        print(dirPath)
        
        let fileManager = FileManager.default;
        var files: [String] = [];
        
        /*do{
            files = try fileManager.contentsOfDirectory(atPath: dirPath);
            print(files)
        }catch{
            return files;
        }*/
        
        guard let fileNames = try? FileManager.default.contentsOfDirectory(atPath: dirPath) else {
            return []
        }
        
        
        
        return fileNames;
        
    }
}
