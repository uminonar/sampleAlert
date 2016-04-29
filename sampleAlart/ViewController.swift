//
//  ViewController.swift
//  sampleAlart
//
//  Created by RIho OKubo on 2016/04/29.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender: UIButton) {
        
        //　アラートを作る
        var alertController = UIAlertController(title:"タイトル", message:"メッセージ", preferredStyle: .Alert)
        
        //　OKボタンを追加する
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: {action in self.myOK()}))
        
        //TODO:キャンセルボタンを追加しよう（押されたら、キャンセルとデバッグエリアに表示される）
        alertController.addAction(UIAlertAction(title: "cancel", style: .Cancel, handler: {action in self.myCancel() }))
        
        
        
        
        
        //　アラートを表示する
        presentViewController(alertController, animated: true, completion: nil)
        
        
    }
    
    // OKが押された時に呼ばれるメソッド
    func myOK(){
        print("OK")
    }
    
    //　キャンセルが押された時に呼ばれるメソッド
    func myCancel(){
        print("キャンセル")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

