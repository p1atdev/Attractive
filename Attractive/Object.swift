//
//  Object.swift
//  Attractive
//
//  Created by 周廷叡 on 2021/01/19.
//

import UIKit

//attractiveのオブジェクト
public class AttractiveComponents {
    
    //要素を入れるやつ
    public var components: Array<AttractiveComponent> = []
    
    //追加する
    public func append(component: AttractiveComponent) {
        self.components.append(component)
    }
    
    public init() {}
    
}

//要素単体
public class AttractiveComponent {
    
    //要素タイプ
    public var type: AttractiveComponentType!
    
    //要素の中身-テキスト
    public var textContent: String?
    
    //要素の中身-画像
    public var imageContent: UIImage?
    
    
    //生成
    //テキスト系の
    public init(type: AttractiveComponentType, textContent: String) {
        self.type = type
        self.textContent = textContent
    }
    
    //画像系の
    public init(type: AttractiveComponentType, imageContent: UIImage) {
        self.type = type
        self.imageContent = imageContent
    }
    
}

//要素の種類わけ
public enum AttractiveComponentType {
    case header
    case title
    case text
    case image
//    case code
    case list
}
