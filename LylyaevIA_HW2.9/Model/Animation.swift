//
//  Animation.swift
//  LylyaevIA_HW2.9
//
//  Created by Garri on 27.02.2021.
//

import Foundation

struct Animation {
   
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

}

extension Animation {
    static func getAnimation(next preset: String) -> Animation {
        Animation(
            preset: preset,
            curve: DataManager.shared.curve.randomElement() ?? "",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1...3),
            delay: Double.random(in: 0...1) )
    }
    
    static func nextPreset() -> String {
        DataManager.shared.preset.randomElement() ?? ""
    }
}
