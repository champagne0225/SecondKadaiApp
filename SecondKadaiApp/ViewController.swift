//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 関智矢 on 2021/01/05.
//  Copyright © 2021 tomoya.seki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.name = input.text!
    }

    @IBAction func unwid(_ segue: UIStoryboardSegue) {
        // 他の画面からsegueを使って戻ってきたときに呼ばれる
    }

}

