//
//  DataManager.swift
//  LylyaevIA_HW2.9
//
//  Created by Garri on 27.02.2021.
//

class DataManager {
    static let shared = DataManager()
    
    let preset = ["slideLeft","slideRight","flash","wobble","swing"]
    
    let curve = ["easeIn","easeOut","easeInOut","linear","spring"]
    
    private init() {}
}
