//
//  MenuObj.swift
//  CarShow
//
//  Created by Ali Tamoor on 31/12/2022.
//

import Foundation
import SwiftUI

protocol menuObj: View {
    var menuName:String { get set }
    var menuImage:String { get set }
    var order:Int { get set }
}
