//
//  ViewController.swift
//  sdsd
//
//  Created by Tanir&Almira on 29.10.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var test = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        test.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

