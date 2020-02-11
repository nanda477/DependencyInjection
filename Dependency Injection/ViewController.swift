//
//  ViewController.swift
//  Dependency Injection
//
//  Created by D2V iMac on 11/02/20.
//  Copyright © 2020 D2V iMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var someService: SomeService
    
    init(service: SomeService) {
        
        self.someService = service
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .blue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // SomeService.shared.doStuff()
        
        someService.doStuff()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let sVc = SecondVC(svice: someService)
        self.present(sVc, animated: true, completion: nil)
        
    }


}


class SecondVC: UIViewController {
    
    var secService: SomeService
    
     init(svice: SomeService) {
        self.secService = svice
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        secService.doStuff()
    }
}

