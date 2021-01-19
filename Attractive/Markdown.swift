//
//  Markdown.swift
//  Attractive
//
//  Created by 周廷叡 on 2021/01/19.
//

import UIKit

open class Mardown {
    
    public enum type {
        case header
        case title
        case text
        case image
        case code
        case list
        case line   //水平線
        case quote  //引用
    }
    
    //マークダウンのデータ
    private let markdownData: String?
    
    
    public init(markdown: String) {
        markdownData = markdown
    }
    
    
}
