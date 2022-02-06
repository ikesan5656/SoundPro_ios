import AudioKit
import AudioKitUI
import AVFoundation
import SwiftUI

import UIKit


class TableConductor {

    let square: Table
    let triangle: Table
    let sine: Table
    let fileTable: Table
    let custom: Table

    init() {
        square = Table(.square, count: 128)
        triangle = Table(.triangle, count: 128)
        sine = Table(.sine, count: 256)
        //let url = Bundle.main.resourceURL?.appendingPathComponent("Samples/beat.aiff")
        let url = Bundle.main.bundleURL.appendingPathComponent("drum_snare01.mp3");
        let file = try! AVAudioFile(forReading: url)
        fileTable = Table(file: file)!

        custom = Table(.sine, count: 256)
        for i in custom.indices {
            custom[i] += Float.random(in: -0.3...0.3) + Float(i) / 2_048.0
        }
    }
}

struct TableRecipeView: View {
    var conductor = TableConductor()
    let rect = CGRect(x: 10, y: 10, width: 50, height: 100)

    var body: some View {
        VStack {
            Text("Square").frame(width:200)
            TableDataView(view: TableView(conductor.square)).frame(width: 200)
            
            Text("Triangle")
            TableDataView(view: TableView(conductor.triangle))
            Text("Sine")
            TableDataView(view: TableView(conductor.sine))
            Text("File")
            TableDataView(view: TableView(conductor.fileTable))
            Text("Custom Data")
            TableDataView(view: TableView(conductor.custom))
        }
        .padding()
        .navigationBarTitle(Text("Tables"))
    }
}


struct TableDataView: UIViewRepresentable {
    typealias UIViewType = TableView
    var view: TableView

    func makeUIView(context: Context) -> TableView {
        view.backgroundColor = UIColor.black
        return view
    }

    func updateUIView(_ uiView: TableView, context: Context) {
        //
        
    }

}

struct Table_Previews: PreviewProvider {
    static var previews: some View {
        TableRecipeView()
    }
}
 
