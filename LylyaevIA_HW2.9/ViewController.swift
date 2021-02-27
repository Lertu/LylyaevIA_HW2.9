//
//  ViewController.swift
//  LylyaevIA_HW2.9
//
//  Created by Garri on 27.02.2021.
//

import Spring

class ViewController: UIViewController {

    var nextPreset = Animation.nextPreset()
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var informationLabel: UILabel!
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runButton.setTitle("Run: \(nextPreset)", for: .normal)
    }

    @IBAction func runButton(_ sender: SpringButton) {
        let animation = Animation.getAnimation(next: nextPreset)
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = animationView.delay
        animationView.animate()
        
        informationLabel.text = """
            preset: \(animation.preset)
            curve: \(animation.curve)
            force: \(String(format: "%.2f", animation.force))
            duration: \(String(format: "%.2f", animation.duration))
            delay: \(String(format: "%.2f", animation.delay))
            """
        
        nextPreset = Animation.nextPreset()
        runButton.setTitle("Run: \(nextPreset)", for: .normal)
    }
    
    
}

