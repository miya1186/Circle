//
//  ViewController.swift
//  Circle
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let drawImage = drawLine()
        let drawView = UIImageView(image: drawImage)
        view.addSubview(drawView)
    }
    func drawLine() -> UIImage{
        //イメージ処理の開始
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        //円弧のパスを作る
        let arcPath = UIBezierPath(
            arcCenter: CGPoint(x:view.center.x, y:200),
            radius: 80.0,
            startAngle: 0.0,
            endAngle: CGFloat(Double.pi*5/3),
            clockwise: true)
        arcPath.lineWidth = 40
        arcPath.lineCapStyle = .round
        arcPath.stroke()
        
        //イメージコンテキストからUIImageを作る
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //イメージ処理の終了
        UIGraphicsEndImageContext()
        return image!
    }
    

}

