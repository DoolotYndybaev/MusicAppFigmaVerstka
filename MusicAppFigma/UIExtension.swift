//
//  UIExtension.swift
//  MusicAppFigma
//
//  Created by Doolot on 18/2/22.
//

import Foundation
import SnapKit
import UIKit

extension UIView {
    var safeArea: ConstraintBasicAttributesDSL{
        
#if swift(>=3.2)
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        }
        return self.snp
#else
        return self.snp
#endif
    }
}
