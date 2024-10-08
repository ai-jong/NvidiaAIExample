//
//  ViewController.swift
//  NvidiaAIExample
//
//  Created by John Blaine on 9/26/24.
//

import UIKit
import NvidiaAI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.nvidiaAIExample()
    }

    func nvidiaAIExample() {
        let nvidiaAI = NvidiaAI( apiKey: "get key at https://www.nvidia.com/en-us/");
                    
         nvidiaAI.request("taiwan in five words or less") { ( result: String) in
            print("result: \(result)")
         }
            
         let questions = ["1+1", "1+2", "2+3"]
         for (index, q) in questions.enumerated() {
                print("Item \(index): \(q)")
                nvidiaAI.request("calculate '\(q)'") { ( result: String) in
                    print("result: \(result)")
                }
         }
    }
}

