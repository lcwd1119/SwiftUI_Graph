//
//  pacman.swift
//  SwiftUI_Graph
//
//  Created by 廖晨維 on 2021/10/16.
//

import Foundation
import SwiftUI

struct pacman_shape: Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            path.move(to: CGPoint(x: 250, y: 80))
            path.addQuadCurve(to: CGPoint(x: 368, y: 202), control: CGPoint(x: 360, y: 87))
            path.addQuadCurve(to: CGPoint(x: 405, y: 230), control:CGPoint(x: 400, y: 220))
            path.addQuadCurve(to: CGPoint(x: 390, y: 253), control:CGPoint(x: 405, y: 240))
            
            //右手套
            path.addQuadCurve(to: CGPoint(x: 390, y: 283), control:CGPoint(x: 410, y: 280))
            path.addQuadCurve(to: CGPoint(x: 385, y: 310), control:CGPoint(x: 395, y: 290))
            path.addQuadCurve(to: CGPoint(x: 325, y: 342), control:CGPoint(x: 390, y: 380))
            path.addQuadCurve(to: CGPoint(x: 310, y: 287), control:CGPoint(x: 290, y: 320))
            
            //靴子
            path.addQuadCurve(to: CGPoint(x: 287, y: 312), control:CGPoint(x: 300, y: 310))
            path.addLine(to: CGPoint(x: 292, y: 330))
            path.addQuadCurve(to: CGPoint(x: 313, y: 337), control:CGPoint(x: 310, y: 330))
            path.addLine(to: CGPoint(x: 326, y: 392))
            path.addQuadCurve(to: CGPoint(x: 343, y: 446), control:CGPoint(x: 350, y: 420))
            path.addQuadCurve(to: CGPoint(x:253, y: 447), control:CGPoint(x: 300, y: 456))
            path.addLine(to: CGPoint(x: 250, y: 435))
            path.addQuadCurve(to: CGPoint(x: 135, y: 440), control:CGPoint(x: 175, y: 450))
            path.addQuadCurve(to: CGPoint(x: 197, y: 383), control:CGPoint(x: 133, y: 373))
            path.addLine(to: CGPoint(x: 189, y: 350))
            path.addQuadCurve(to: CGPoint(x: 202, y: 338), control:CGPoint(x: 195, y: 340))
            path.addLine(to: CGPoint(x: 196, y: 307))
            path.addQuadCurve(to: CGPoint(x: 141, y: 245), control:CGPoint(x: 155, y: 278))
            path.addLine(to: CGPoint(x: 130, y: 250))
            path.addQuadCurve(to: CGPoint(x: 102, y: 239), control:CGPoint(x: 120, y: 255))
            
            //左手套
            path.addQuadCurve(to: CGPoint(x: 50, y: 230), control:CGPoint(x: 75, y: 257))
            path.addLine(to: CGPoint(x: 37, y: 189))
            path.addQuadCurve(to: CGPoint(x: 45, y: 159), control:CGPoint(x: 28, y: 175))
            path.addLine(to: CGPoint(x: 35, y: 139))
            path.addQuadCurve(to: CGPoint(x: 62, y: 128), control:CGPoint(x: 27, y: 108))
            
            path.addQuadCurve(to: CGPoint(x: 66, y: 146), control:CGPoint(x: 65, y: 133))
            path.addQuadCurve(to: CGPoint(x: 116, y: 179), control:CGPoint(x: 105, y: 138))
            path.addQuadCurve(to: CGPoint(x: 116, y: 220), control:CGPoint(x: 125, y: 204))
            path.addQuadCurve(to: CGPoint(x: 134, y: 220), control:CGPoint(x: 125, y: 232))
            path.addQuadCurve(to: CGPoint(x: 167, y: 117), control:CGPoint(x: 125, y: 165))
            path.addQuadCurve(to: CGPoint(x: 250, y: 80), control:CGPoint(x: 203, y: 80))
            path.closeSubpath()
            
            
        }
    }
}

struct pacman_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Image("123").offset(x: 0, y: -140)
            pacman_shape().stroke()
        }
    }
}
