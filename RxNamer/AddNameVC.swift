//
//  AddNameVC.swift
//  RxNamer
//
//  Created by Tomasz Jaeschke on 16.09.2018.
//  Copyright © 2018 Tomasz Jaeschke. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class AddNameVC: UIViewController {

    @IBOutlet weak var newNameTextField: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    let disposeBag = DisposeBag()
    let nameSubject = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
