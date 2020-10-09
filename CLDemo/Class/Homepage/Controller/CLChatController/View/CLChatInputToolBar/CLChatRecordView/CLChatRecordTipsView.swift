//
//  CLChatRecordTipsView.swift
//  CL
//
//  Created by Chen JmoVxia on 2020/9/28.
//  Copyright © 2020 JmoVxia. All rights reserved.
//

import UIKit

class CLChatRecordTipsView: UIView {
    var isCanSend: Bool = false {
        didSet {
            tipsLabel.textColor = isCanSend ? .themeColor : .hexColor(with: "#ff3b30")
        }
    }
    private lazy var tipsLabel: UILabel = {
        let view = UILabel()
        view.font = PingFangSCMedium(15)
        view.text = "松手发送 滑动取消"
        view.textColor = .themeColor
        view.textAlignment = .center
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tipsLabel)
        tipsLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
