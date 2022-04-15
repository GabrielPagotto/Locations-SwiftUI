//
//  ModelData.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Não foi possível encontrar \(filename) no pacote princípal.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Não foi possível carregar \(filename) no pacote princípal.")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Não foi possível transformar \(filename) para \(T.self):\n\(error)")
    }
}
