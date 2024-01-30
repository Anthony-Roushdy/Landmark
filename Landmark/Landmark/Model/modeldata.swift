//
//  modeldata.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/9/23.
//

import SwiftUI

@Observable class modeldata {
    // This code helps running the
    var landmarks: [Landmark] = load("landmarkData.json")
    func load<T: Decodable>( filename:String) -> T {
        let data: Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf:file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try
            decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
//struct modeldata: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct modeldata_Previews: PreviewProvider {
//    static var previews: some View {
//        modeldata()
//    }
//}
