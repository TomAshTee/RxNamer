//
//  ViewController.swift
//  RxNamer
//
//  Created by Tomasz Jaeschke on 10.09.2018.
//  Copyright © 2018 Tomasz Jaeschke. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var helloLbl: UILabel!
    @IBOutlet weak var nameEntryTextField: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var namesLbl: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    func bind() {
        nameEntryTextField.rx.text
            .debounce(0.5 , scheduler: MainScheduler.instance)
            .map{
                if $0 == "" {
                    return "Type your name below"
                } else {
                    return "Hello, \($0!)."
                }
            }
            .bind(to: helloLbl.rx.text)
            .addDisposableTo(disposeBag)
    }
}

