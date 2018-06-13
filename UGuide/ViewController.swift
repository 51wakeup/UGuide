//
//  ViewController.swift
//  UGuide
//
//  Created by yanming on 2018/6/12.
//  Copyright © 2018年 wakeup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func authAction(){
        UGuideManager.defaultManager.authWithPlatform(.wechatSession, currentViewController: self) { (result) in
            if result.success {
                print(result.authCode)
            }else {
                print(result.message)
            }
        }
    }
    func shareAction(){
        let obj = UGuideMessageObject()
        obj.title = "title"
        obj.desc = "desc"
        obj.webpageUrl = "www.baidu.com"
        UGuideManager.defaultManager.shareToPlatform(.qq, messageObject: obj) { (result) in
            if result.success {
                print("分享成功")
            }else {
                print("result:",result.message)
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //authAction()
        shareAction()
    }


}

