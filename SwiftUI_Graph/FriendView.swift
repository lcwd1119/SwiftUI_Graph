//
//  ghost_body.swift
//  SwiftUI_Graph
//
//  Created by 廖晨維 on 2021/10/16.
//

import Foundation
import SwiftUI

struct BigChungus: View {
    var body: some View {
        Group {
            Group {
                BigChungusOutline().offset(x: 190, y: -1).fill(Color(red: 96.0/255, green: 77.0/255, blue: 83.0/255))
                //BigChungusOutline().offset(x: 190, y: -1).fill(Color(.black))
                BigChungusOutline().offset(x: 190, y: -1).stroke(.black,lineWidth: 2)
                
                BigChungusHair()
                
                BigChungusStomach().offset(x: 200, y: -4).fill(Color(red: 216.0/255, green: 221.0/255, blue: 243.0/255))
                BigChungusStomach().offset(x: 200, y: -4).stroke(.black,lineWidth: 2)
                
                BigChungusEarInner().scaledToFill()
                
                BigChungusEarInner(rotatinDegree: 10, offsetX: 27, offsetY: 0)
                
            }
            
            Group {
                BigChungusNose().scaledToFill()
                
                BigChungusRightEye().scaledToFill().offset(x: 0, y: 0)
                BigChungusLeftEye().scaledToFill().offset(x: 0, y: 0).offset(x: 0, y: -1)
                
                BigChungusEyeBrows()
                
                
                BigChungusMouth().scaledToFill()
                
                BigChungusChin().scaledToFill()
                
                BigChungusWhiskers().scaledToFill()
            }
            
            
            
            Group {
                
                BigChungusLeftHand().scaledToFill().offset(x: -4, y: 0)
                
                BigChungusRightHand().scaledToFill()
                
                BigChungusLeftFoot().scaledToFill()
                
                BigChungusRightFoot().scaledToFill()
                
                //右手臂底下
                BigChungusArm().offset(x: -2, y: 0)
            }
            
        }
    }
}

struct BigChungusLeftEye:View{
    var body: some View{
        Group{
            //左眼
            Path { path in
                path.move(to: CGPoint(x: 398, y: 287))
                path.addQuadCurve(to: CGPoint(x: 400, y: 322), control: CGPoint(x: 390, y: 309))
                path.addQuadCurve(to: CGPoint(x: 417, y: 329), control: CGPoint(x: 410, y: 323))
                path.addQuadCurve(to: CGPoint(x: 421, y: 328), control: CGPoint(x: 420, y: 327))
                path.addQuadCurve(to: CGPoint(x: 398, y: 287), control: CGPoint(x: 420, y: 300))
                path.closeSubpath()
            }.fill(.white)
            
            Path { path in
                path.move(to: CGPoint(x: 398, y: 287))
                path.addQuadCurve(to: CGPoint(x: 400, y: 322), control: CGPoint(x: 390, y: 309))
                path.addQuadCurve(to: CGPoint(x: 417, y: 329), control: CGPoint(x: 410, y: 323))
                path.addQuadCurve(to: CGPoint(x: 421, y: 328), control: CGPoint(x: 420, y: 327))
                path.addQuadCurve(to: CGPoint(x: 398, y: 287), control: CGPoint(x: 420, y: 300))
                path.closeSubpath()
            }.stroke(.black,lineWidth: 2)
            
            //左眼皮
            Path { path in
                path.move(to: CGPoint(x: 398, y: 287))
                path.addQuadCurve(to: CGPoint(x: 394, y: 307), control: CGPoint(x: 394, y: 297))
                path.addQuadCurve(to: CGPoint(x: 415, y: 302), control: CGPoint(x: 410, y: 300))
                path.addQuadCurve(to: CGPoint(x: 398, y: 287), control: CGPoint(x: 408, y: 292))
            }.fill(.gray)
            
            Path { path in
                path.move(to: CGPoint(x: 398, y: 287))
                path.addQuadCurve(to: CGPoint(x: 394, y: 307), control: CGPoint(x: 394, y: 297))
                path.addQuadCurve(to: CGPoint(x: 415, y: 302), control: CGPoint(x: 410, y: 300))
                path.addQuadCurve(to: CGPoint(x: 398, y: 287), control: CGPoint(x: 408, y: 292))
            }.stroke(.black,lineWidth: 2)
            
            //左眼球
            Path { path in
                path.move(to: CGPoint(x: 402, y: 305))
                path.addQuadCurve(to: CGPoint(x: 409, y: 320), control: CGPoint(x: 400, y: 316))
                path.addQuadCurve(to: CGPoint(x: 405, y: 303), control: CGPoint(x: 413, y: 307))
                path.addQuadCurve(to: CGPoint(x: 402, y: 305), control: CGPoint(x: 402, y: 303))
            }.fill()
        }
    }
}

struct BigChungusRightEye:View{
    var body: some View{
        //右眼
        Group{
            Path { path in
                path.move(to: CGPoint(x: 450, y: 280))
                path.addQuadCurve(to: CGPoint(x: 445, y: 320), control: CGPoint(x: 440, y: 295))
                path.addQuadCurve(to: CGPoint(x: 453, y: 320), control: CGPoint(x: 450, y: 322))
                path.addQuadCurve(to: CGPoint(x: 462, y: 312), control: CGPoint(x: 460, y: 310))
                path.addQuadCurve(to: CGPoint(x: 458, y: 283), control: CGPoint(x: 463, y: 300))
                path.addQuadCurve(to: CGPoint(x: 450, y: 280), control: CGPoint(x: 455, y: 275))
            }.fill(.white)
            
            Path { path in
                path.move(to: CGPoint(x: 450, y: 280))
                path.addQuadCurve(to: CGPoint(x: 445, y: 320), control: CGPoint(x: 440, y: 295))
                path.addQuadCurve(to: CGPoint(x: 453, y: 320), control: CGPoint(x: 450, y: 322))
                path.addQuadCurve(to: CGPoint(x: 462, y: 312), control: CGPoint(x: 460, y: 310))
                path.addQuadCurve(to: CGPoint(x: 458, y: 283), control: CGPoint(x: 463, y: 300))
                path.addQuadCurve(to: CGPoint(x: 450, y: 280), control: CGPoint(x: 455, y: 275))
            }.stroke(.black,lineWidth: 2)

            Path { path in
                path.move(to: CGPoint(x: 450, y: 280))
                path.addQuadCurve(to: CGPoint(x: 443, y: 297), control: CGPoint(x: 446, y: 285))
                path.addQuadCurve(to: CGPoint(x: 462, y: 310), control: CGPoint(x: 455, y: 295))
                path.addQuadCurve(to: CGPoint(x: 458, y: 283), control: CGPoint(x: 463, y: 300))
                path.addQuadCurve(to: CGPoint(x: 450, y: 280), control: CGPoint(x: 455, y: 275))
            }.fill(.gray)
            
            Path { path in
                path.move(to: CGPoint(x: 450, y: 280))
                path.addQuadCurve(to: CGPoint(x: 443, y: 297), control: CGPoint(x: 446, y: 285))
                path.addQuadCurve(to: CGPoint(x: 462, y: 310), control: CGPoint(x: 455, y: 295))
                path.addQuadCurve(to: CGPoint(x: 458, y: 283), control: CGPoint(x: 463, y: 300))
                path.addQuadCurve(to: CGPoint(x: 450, y: 280), control: CGPoint(x: 455, y: 275))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 445, y: 306))
                path.addQuadCurve(to: CGPoint(x: 445, y: 314), control: CGPoint(x: 444, y: 310))
                path.addQuadCurve(to: CGPoint(x: 453, y: 314), control: CGPoint(x: 447, y: 323))
                path.addQuadCurve(to: CGPoint(x: 454, y: 307), control: CGPoint(x: 454, y: 309))
                path.addQuadCurve(to: CGPoint(x: 445, y: 306), control: CGPoint(x: 450, y: 298))
            }.fill(.black).scaledToFill()
            
            
        }
       
    }
    
    
}





struct BigChungusEarInner: View {
    var rotatinDegree:Double=0;
    var offsetX:Double=0;
    var offsetY:Double=0;
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 350, y: 65))
            path.addQuadCurve(to: CGPoint(x: 370, y: 235), control: CGPoint(x: 350, y: 200))
            path.addQuadCurve(to: CGPoint(x: 350, y: 65), control: CGPoint(x: 390, y: 200))
            path.closeSubpath()
        }.fill(Color(red: 248.0/255, green: 184.0/255, blue: 159.0/255)).rotationEffect(.degrees(rotatinDegree)).offset(x: offsetX, y: offsetY).scaledToFill()
    }
}

struct BigChungusNose: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 445, y: 338))
            path.addArc(center: CGPoint(x: 445, y: 338), radius: 16, startAngle: .degrees(-55), endAngle: .degrees(-135), clockwise: true)
        }.fill(.red)
    }
}

struct BigChungusMouth: View {
    var body: some View {
        ZStack {
            
            
            Path { path in
                path.move(to: CGPoint(x: 418, y: 347))
                path.addQuadCurve(to: CGPoint(x: 390, y: 346), control: CGPoint(x: 415, y: 343))
                path.addQuadCurve(to: CGPoint(x: 406, y: 360), control: CGPoint(x: 408, y: 343))
                path.addQuadCurve(to: CGPoint(x: 419, y: 367), control: CGPoint(x: 412, y: 356))
                path.addQuadCurve(to: CGPoint(x: 426, y: 360), control: CGPoint(x: 413, y: 358))
                path.addLine(to: CGPoint(x: 426, y: 351))
                path.addQuadCurve(to: CGPoint(x: 418, y: 347), control: CGPoint(x: 422, y: 351))
                path.closeSubpath()
            }.fill(.red)
            
            Path { path in
                path.move(to: CGPoint(x: 418, y: 347))
                path.addQuadCurve(to: CGPoint(x: 390, y: 346), control: CGPoint(x: 415, y: 343))
                path.addQuadCurve(to: CGPoint(x: 406, y: 360), control: CGPoint(x: 408, y: 343))
                path.addQuadCurve(to: CGPoint(x: 419, y: 367), control: CGPoint(x: 412, y: 356))
                path.addQuadCurve(to: CGPoint(x: 426, y: 360), control: CGPoint(x: 413, y: 358))
                path.addLine(to: CGPoint(x: 426, y: 351))
                path.addQuadCurve(to: CGPoint(x: 418, y: 347), control: CGPoint(x: 422, y: 351))
                path.closeSubpath()
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 426, y: 351))
                path.addLine(to: CGPoint(x: 426, y: 360))
                path.addQuadCurve(to: CGPoint(x: 451, y: 357), control: CGPoint(x: 439, y: 363))
                path.addQuadCurve(to: CGPoint(x: 451, y: 357), control: CGPoint(x: 439, y: 363))
                path.addQuadCurve(to: CGPoint(x: 451, y: 347), control: CGPoint(x: 452, y: 353))
                path.addQuadCurve(to: CGPoint(x: 438, y: 345), control: CGPoint(x: 443, y: 351))
                path.addQuadCurve(to: CGPoint(x: 426, y: 351), control: CGPoint(x: 433, y: 355))
                
            }.fill(.white)
            
            Path { path in
                path.move(to: CGPoint(x: 426, y: 351))
                path.addLine(to: CGPoint(x: 426, y: 360))
                path.addQuadCurve(to: CGPoint(x: 451, y: 357), control: CGPoint(x: 439, y: 363))
                path.addQuadCurve(to: CGPoint(x: 451, y: 357), control: CGPoint(x: 439, y: 363))
                path.addQuadCurve(to: CGPoint(x: 451, y: 347), control: CGPoint(x: 452, y: 353))
                path.addQuadCurve(to: CGPoint(x: 438, y: 345), control: CGPoint(x: 443, y: 351))
                path.addQuadCurve(to: CGPoint(x: 426, y: 351), control: CGPoint(x: 433, y: 355))
                
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 406, y: 360))
                path.addQuadCurve(to: CGPoint(x: 419, y: 367), control: CGPoint(x: 412, y: 356))
                path.addQuadCurve(to: CGPoint(x: 426, y: 360), control: CGPoint(x: 413, y: 358))
                path.addQuadCurve(to: CGPoint(x: 440, y: 361), control: CGPoint(x: 429, y: 362))
                path.addQuadCurve(to: CGPoint(x: 417, y: 375), control: CGPoint(x: 430, y: 377))
                path.addQuadCurve(to: CGPoint(x: 406, y: 360), control: CGPoint(x: 409, y: 371))
            }.fill(.pink)
            
            Path { path in
                path.move(to: CGPoint(x: 406, y: 360))
                path.addQuadCurve(to: CGPoint(x: 419, y: 367), control: CGPoint(x: 412, y: 356))
                path.addQuadCurve(to: CGPoint(x: 426, y: 360), control: CGPoint(x: 413, y: 358))
                path.addQuadCurve(to: CGPoint(x: 440, y: 361), control: CGPoint(x: 429, y: 362))
                path.addQuadCurve(to: CGPoint(x: 417, y: 375), control: CGPoint(x: 430, y: 377))
                path.addQuadCurve(to: CGPoint(x: 406, y: 360), control: CGPoint(x: 409, y: 371))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 422, y: 338))
                path.addQuadCurve(to: CGPoint(x: 428, y: 351), control: CGPoint(x: 410, y: 348))
                path.addQuadCurve(to: CGPoint(x: 438, y: 345), control: CGPoint(x: 438, y: 350))
                path.addQuadCurve(to: CGPoint(x: 438, y: 345), control: CGPoint(x: 438, y: 350))
                path.addQuadCurve(to: CGPoint(x: 457, y: 336), control: CGPoint(x: 452, y: 355))
            }.stroke(.black,lineWidth: 3)
        }
    }
}

struct BigChungusEyeBrows: View {
    var body: some View {
        ZStack {
            //left eyebrow
            Path { path in
                path.move(to: CGPoint(x: 383, y: 280))
                path.addQuadCurve(to: CGPoint(x: 390, y: 250), control: CGPoint(x: 378, y: 254))
                path.addQuadCurve(to: CGPoint(x: 398, y: 259), control: CGPoint(x: 400, y: 250))
                path.addQuadCurve(to: CGPoint(x: 383, y: 280), control: CGPoint(x: 387, y: 254))
                path.closeSubpath()
            }.fill(.black)
            
            //right eyebrow
            Path { path in
                path.move(to: CGPoint(x: 438, y: 269))
                path.addQuadCurve(to: CGPoint(x: 443, y: 264), control: CGPoint(x: 435, y: 260))
                path.addQuadCurve(to: CGPoint(x: 432, y: 254), control: CGPoint(x: 439, y: 255))
                path.addQuadCurve(to: CGPoint(x: 438, y: 269), control: CGPoint(x: 424, y: 264))
            }.fill(.black)
        }
    }
}

struct BigChungusChin: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 403, y: 376))
                path.addQuadCurve(to: CGPoint(x: 443, y: 378), control: CGPoint(x: 427, y: 400))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 408, y: 396))
                path.addQuadCurve(to: CGPoint(x: 454, y: 393), control: CGPoint(x: 438, y: 420))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusWhiskers: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 396, y: 325))
                path.addQuadCurve(to: CGPoint(x: 427, y: 341), control: CGPoint(x: 410, y: 335))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 393, y: 338))
                path.addQuadCurve(to: CGPoint(x: 424, y: 344), control: CGPoint(x: 410, y: 338))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 390, y: 347))
                path.addQuadCurve(to: CGPoint(x: 419, y: 347), control: CGPoint(x: 410, y: 345))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 454, y: 333))
                path.addQuadCurve(to: CGPoint(x: 481, y: 319), control: CGPoint(x: 467, y: 323))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 454, y: 338))
                path.addQuadCurve(to: CGPoint(x: 489, y: 327), control: CGPoint(x: 467, y: 332))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 451, y: 342))
                path.addQuadCurve(to: CGPoint(x: 489, y: 340), control: CGPoint(x: 467, y: 338))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusLeftHand: View {
    var body: some View {
        ZStack {
            Group {
                Path { path in
                    path.move(to: CGPoint(x: 225, y: 507))
                    path.addQuadCurve(to: CGPoint(x: 270, y: 499), control: CGPoint(x: 243, y: 487))
                    path.addQuadCurve(to: CGPoint(x: 270, y: 512), control: CGPoint(x: 275, y: 506))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 524), control: CGPoint(x: 277, y: 525))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 538), control: CGPoint(x: 301, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 278, y: 540), control: CGPoint(x: 286, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 580), control: CGPoint(x: 275, y: 560))
                    path.addQuadCurve(to: CGPoint(x: 274, y: 585), control: CGPoint(x: 290, y: 594))
                    path.addQuadCurve(to: CGPoint(x: 257, y: 588), control: CGPoint(x: 270, y: 594))
                    path.addQuadCurve(to: CGPoint(x: 226, y: 517), control: CGPoint(x: 202, y: 570))
                    path.addQuadCurve(to: CGPoint(x: 225, y: 507), control: CGPoint(x: 222, y: 512))
                    path.closeSubpath()
                }.fill(.white)
                
                
                Path { path in
                    path.move(to: CGPoint(x: 225, y: 507))
                    path.addQuadCurve(to: CGPoint(x: 270, y: 499), control: CGPoint(x: 243, y: 487))
                    path.addQuadCurve(to: CGPoint(x: 270, y: 512), control: CGPoint(x: 275, y: 506))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 524), control: CGPoint(x: 277, y: 525))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 538), control: CGPoint(x: 301, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 278, y: 540), control: CGPoint(x: 286, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 580), control: CGPoint(x: 275, y: 560))
                    path.addQuadCurve(to: CGPoint(x: 274, y: 585), control: CGPoint(x: 290, y: 594))
                    path.addQuadCurve(to: CGPoint(x: 257, y: 588), control: CGPoint(x: 270, y: 594))
                    path.addQuadCurve(to: CGPoint(x: 226, y: 517), control: CGPoint(x: 202, y: 570))
                    path.addQuadCurve(to: CGPoint(x: 225, y: 507), control: CGPoint(x: 222, y: 512))
                    path.closeSubpath()
                }.stroke(.black,lineWidth: 2)
            }
            Path { path in
                path.move(to: CGPoint(x: 270, y: 512))
                path.addQuadCurve(to: CGPoint(x: 226, y: 517), control: CGPoint(x: 248, y: 496))
            }.stroke(.black,lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: 237, y: 509))
                path.addQuadCurve(to: CGPoint(x: 233, y: 540), control: CGPoint(x: 230, y: 525))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 245, y: 506))
                path.addQuadCurve(to: CGPoint(x: 242, y: 533), control: CGPoint(x: 240, y: 518))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 254, y: 505))
                path.addQuadCurve(to: CGPoint(x: 251, y: 532), control: CGPoint(x: 250, y: 518))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 278, y: 540))
                path.addQuadCurve(to: CGPoint(x: 274, y: 539), control: CGPoint(x: 277, y: 541))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 254, y: 505))
                path.addQuadCurve(to: CGPoint(x: 251, y: 532), control: CGPoint(x: 250, y: 518))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 274, y: 585))
                path.addQuadCurve(to: CGPoint(x: 266, y: 571), control: CGPoint(x: 270, y: 580))
            }.stroke(.black,lineWidth: 2)
            
            
            Path { path in
                path.move(to: CGPoint(x: 257, y: 588))
                path.addQuadCurve(to: CGPoint(x: 247, y: 578), control: CGPoint(x: 246, y: 580))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 256, y: 564))
                path.addQuadCurve(to: CGPoint(x: 264, y: 562), control: CGPoint(x: 270, y: 580))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusRightHand: View {
    var body: some View {
        ZStack {
            Group {
                Path { path in
                    path.move(to: CGPoint(x: 522, y: 512))
                    path.addQuadCurve(to: CGPoint(x: 564, y: 505), control: CGPoint(x: 535, y: 491))
                    path.addQuadCurve(to: CGPoint(x: 565, y: 516), control: CGPoint(x: 570, y: 512))
                    path.addQuadCurve(to: CGPoint(x: 566, y: 548), control: CGPoint(x: 573, y: 535))
                    path.addQuadCurve(to: CGPoint(x: 535, y: 578), control: CGPoint(x: 555, y: 575))
                    path.addQuadCurve(to: CGPoint(x: 522, y: 573), control: CGPoint(x: 523, y: 585))
                    path.addQuadCurve(to: CGPoint(x: 510, y: 567), control: CGPoint(x: 511, y: 580))
                    path.addQuadCurve(to: CGPoint(x: 520, y: 537), control: CGPoint(x: 519, y: 550))
                    path.addQuadCurve(to: CGPoint(x: 498, y: 525), control: CGPoint(x: 502, y: 545))
                    path.addQuadCurve(to: CGPoint(x: 504, y: 516), control: CGPoint(x: 500, y: 517))
                    path.addQuadCurve(to: CGPoint(x: 523, y: 518), control: CGPoint(x: 510, y: 521))
                    path.addQuadCurve(to: CGPoint(x: 522, y: 512), control: CGPoint(x: 521, y: 515))
                }.fill(.white)
                
                Path { path in
                    path.move(to: CGPoint(x: 522, y: 512))
                    path.addQuadCurve(to: CGPoint(x: 564, y: 505), control: CGPoint(x: 535, y: 491))
                    path.addQuadCurve(to: CGPoint(x: 565, y: 516), control: CGPoint(x: 570, y: 512))
                    path.addQuadCurve(to: CGPoint(x: 566, y: 548), control: CGPoint(x: 573, y: 535))
                    path.addQuadCurve(to: CGPoint(x: 535, y: 578), control: CGPoint(x: 555, y: 575))
                    path.addQuadCurve(to: CGPoint(x: 522, y: 573), control: CGPoint(x: 523, y: 585))
                    path.addQuadCurve(to: CGPoint(x: 510, y: 567), control: CGPoint(x: 511, y: 580))
                    path.addQuadCurve(to: CGPoint(x: 520, y: 537), control: CGPoint(x: 519, y: 550))
                    path.addQuadCurve(to: CGPoint(x: 498, y: 525), control: CGPoint(x: 502, y: 545))
                    path.addQuadCurve(to: CGPoint(x: 504, y: 516), control: CGPoint(x: 500, y: 517))
                    path.addQuadCurve(to: CGPoint(x: 523, y: 518), control: CGPoint(x: 510, y: 521))
                    path.addQuadCurve(to: CGPoint(x: 522, y: 512), control: CGPoint(x: 521, y: 515))
                    path.closeSubpath()
                }.stroke(.black,lineWidth: 2)
            }
            
            Path { path in
                path.move(to: CGPoint(x: 523, y: 518))
                path.addQuadCurve(to: CGPoint(x: 565, y: 516), control: CGPoint(x: 545, y: 495))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 563, y: 514))
                path.addQuadCurve(to: CGPoint(x: 557, y: 540), control: CGPoint(x: 568, y: 520))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 553, y: 508))
                path.addQuadCurve(to: CGPoint(x: 550, y: 528), control: CGPoint(x: 556, y: 520))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 544, y: 506))
                path.addQuadCurve(to: CGPoint(x: 543, y: 527), control: CGPoint(x: 548, y: 520))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 544, y: 506))
                path.addQuadCurve(to: CGPoint(x: 543, y: 527), control: CGPoint(x: 548, y: 520))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 538, y: 554))
                path.addQuadCurve(to: CGPoint(x: 522, y: 573), control: CGPoint(x: 530, y: 565))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 554, y: 552))
                path.addQuadCurve(to: CGPoint(x: 535, y: 578), control: CGPoint(x: 550, y: 565))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusLeftFoot: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 225, y: 680))
                path.addQuadCurve(to: CGPoint(x: 199, y: 695), control: CGPoint(x: 200, y: 680))
                path.addQuadCurve(to: CGPoint(x: 199, y: 722), control: CGPoint(x: 182, y: 708))
                path.addQuadCurve(to: CGPoint(x: 222, y: 728), control: CGPoint(x: 207, y: 730))
                path.addQuadCurve(to: CGPoint(x: 266, y: 728), control: CGPoint(x: 227, y: 742))
                path.addQuadCurve(to: CGPoint(x: 330, y: 707), control: CGPoint(x: 290, y: 712))
                path.addQuadCurve(to: CGPoint(x: 353, y: 686), control: CGPoint(x: 350, y: 703))
                path.addQuadCurve(to: CGPoint(x: 348, y: 686), control: CGPoint(x: 350, y: 686))
                path.addQuadCurve(to: CGPoint(x: 348, y: 686), control: CGPoint(x: 350, y: 686))
                path.addQuadCurve(to: CGPoint(x: 348, y: 686), control: CGPoint(x: 350, y: 686))
                path.addQuadCurve(to: CGPoint(x: 278, y: 706), control: CGPoint(x: 320, y: 713))
                path.addQuadCurve(to: CGPoint(x: 253, y: 686), control: CGPoint(x: 268, y: 703))
                path.addQuadCurve(to: CGPoint(x: 225, y: 680), control: CGPoint(x: 240, y: 675))
            }.fill(Color(red: 216.0/255, green: 221.0/255, blue: 243.0/255))
            
            Path { path in
                path.move(to: CGPoint(x: 225, y: 680))
                path.addQuadCurve(to: CGPoint(x: 199, y: 695), control: CGPoint(x: 200, y: 680))
                path.addQuadCurve(to: CGPoint(x: 199, y: 722), control: CGPoint(x: 182, y: 708))
                path.addQuadCurve(to: CGPoint(x: 222, y: 728), control: CGPoint(x: 207, y: 730))
                path.addQuadCurve(to: CGPoint(x: 266, y: 728), control: CGPoint(x: 227, y: 742))
                path.addQuadCurve(to: CGPoint(x: 330, y: 707), control: CGPoint(x: 290, y: 712))
                path.addQuadCurve(to: CGPoint(x: 353, y: 686), control: CGPoint(x: 350, y: 703))
                path.addQuadCurve(to: CGPoint(x: 348, y: 686), control: CGPoint(x: 350, y: 686))
                path.addQuadCurve(to: CGPoint(x: 348, y: 686), control: CGPoint(x: 350, y: 686))
                path.addQuadCurve(to: CGPoint(x: 348, y: 686), control: CGPoint(x: 350, y: 686))
                path.addQuadCurve(to: CGPoint(x: 278, y: 706), control: CGPoint(x: 320, y: 713))
                path.addQuadCurve(to: CGPoint(x: 253, y: 686), control: CGPoint(x: 268, y: 703))
                path.addQuadCurve(to: CGPoint(x: 225, y: 680), control: CGPoint(x: 240, y: 675))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 199   , y: 695))
                path.addQuadCurve(to: CGPoint(x: 235, y: 690), control: CGPoint(x: 215, y: 687))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 222   , y: 728))
                path.addQuadCurve(to: CGPoint(x: 255, y: 701), control: CGPoint(x: 225, y: 697))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusRightFoot: View {
    var body: some View {
        ZStack{
            Path { path in
                path.move(to: CGPoint(x: 368, y: 683))
                path.addQuadCurve(to: CGPoint(x: 490, y: 694), control: CGPoint(x: 380, y: 692))
                path.addQuadCurve(to: CGPoint(x: 509, y: 683), control: CGPoint(x: 508, y: 690))
                path.addQuadCurve(to: CGPoint(x: 516, y: 653), control: CGPoint(x: 538, y: 674))
                path.addQuadCurve(to: CGPoint(x: 496, y: 640), control: CGPoint(x: 520, y: 644))
                path.addQuadCurve(to: CGPoint(x: 368, y: 683), control: CGPoint(x: 478, y: 674))
                path.closeSubpath()
            }.fill(Color(red: 216.0/255, green: 221.0/255, blue: 243.0/255))
            
            Path { path in
                path.move(to: CGPoint(x: 368, y: 683))
                path.addQuadCurve(to: CGPoint(x: 490, y: 694), control: CGPoint(x: 380, y: 692))
                path.addQuadCurve(to: CGPoint(x: 509, y: 683), control: CGPoint(x: 508, y: 690))
                path.addQuadCurve(to: CGPoint(x: 516, y: 653), control: CGPoint(x: 538, y: 674))
                path.addQuadCurve(to: CGPoint(x: 496, y: 640), control: CGPoint(x: 520, y: 644))
                path.addQuadCurve(to: CGPoint(x: 368, y: 683), control: CGPoint(x: 478, y: 674))
                path.closeSubpath()
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 509, y: 683))
                path.addQuadCurve(to: CGPoint(x: 483, y: 659), control: CGPoint(x: 512, y: 663))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 516, y: 653))
                path.addQuadCurve(to: CGPoint(x: 488, y: 650), control: CGPoint(x: 503, y: 648))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusHair: View {
    var body: some View {
        
        Path { path in
            path.move(to: CGPoint(x: 375, y: 262))
            path.addQuadCurve(to: CGPoint(x: 402, y: 230), control: CGPoint(x: 394, y: 235))
            path.addQuadCurve(to: CGPoint(x: 402, y: 230), control: CGPoint(x: 394, y: 235))
            path.addQuadCurve(to: CGPoint(x: 395, y: 243), control: CGPoint(x: 399, y: 235))
            path.addQuadCurve(to: CGPoint(x: 412, y: 235), control: CGPoint(x: 399, y: 235))
            path.addQuadCurve(to: CGPoint(x: 404, y: 243), control: CGPoint(x: 408, y: 238))
            path.addQuadCurve(to: CGPoint(x: 422, y: 244), control: CGPoint(x: 410, y: 240))
            path.addQuadCurve(to: CGPoint(x: 408, y: 247), control: CGPoint(x: 410, y: 247))
            path.addQuadCurve(to: CGPoint(x: 418, y: 254), control: CGPoint(x: 413, y: 246))
            path.addQuadCurve(to: CGPoint(x: 422, y: 261), control: CGPoint(x: 420, y: 261))
            path.closeSubpath()
            
        }.fill(Color(red: 96.0/255, green: 77.0/255, blue: 83.0/255))
        Path { path in
            path.move(to: CGPoint(x: 375, y: 262))
            path.addQuadCurve(to: CGPoint(x: 402, y: 230), control: CGPoint(x: 394, y: 235))
            path.addQuadCurve(to: CGPoint(x: 402, y: 230), control: CGPoint(x: 394, y: 235))
            path.addQuadCurve(to: CGPoint(x: 395, y: 243), control: CGPoint(x: 399, y: 235))
            path.addQuadCurve(to: CGPoint(x: 412, y: 235), control: CGPoint(x: 399, y: 235))
            path.addQuadCurve(to: CGPoint(x: 404, y: 243), control: CGPoint(x: 408, y: 238))
            path.addQuadCurve(to: CGPoint(x: 422, y: 244), control: CGPoint(x: 410, y: 240))
            path.addQuadCurve(to: CGPoint(x: 408, y: 247), control: CGPoint(x: 410, y: 247))
            path.addQuadCurve(to: CGPoint(x: 418, y: 254), control: CGPoint(x: 413, y: 246))
            path.addQuadCurve(to: CGPoint(x: 422, y: 261), control: CGPoint(x: 420, y: 261))
            
        }.stroke(.black,lineWidth: 2)
    }
}

struct BigChungusArm: View {
    var body: some View {
        Group {
            Path { path in
                path.move(to: CGPoint(x: 329, y: 448))
                path.addQuadCurve(to: CGPoint(x: 270, y: 498), control: CGPoint(x: 290, y: 460))
            }.stroke(.black,lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 319, y: 452))
                path.addQuadCurve(to: CGPoint(x: 325, y: 458), control: CGPoint(x: 324, y: 456))
            }.stroke(.black,lineWidth: 2)
        }
    }
}

struct BigChungusOutline:Shape{
    private let OFFSET=190;
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 337-OFFSET, y: 25))
            path.addQuadCurve(to: CGPoint(x: 365-OFFSET, y: 265), control: CGPoint(x: 315-OFFSET, y: 200))
            path.addQuadCurve(to: CGPoint(x: 345-OFFSET, y: 375), control: CGPoint(x: 335-OFFSET, y: 270))
            path.addQuadCurve(to: CGPoint(x: 225-OFFSET, y: 515), control: CGPoint(x: 230-OFFSET, y: 450))
            path.addQuadCurve(to: CGPoint(x: 235-OFFSET, y: 580), control: CGPoint(x: 200-OFFSET, y: 550))
            path.addQuadCurve(to: CGPoint(x: 285-OFFSET, y: 680), control: CGPoint(x: 225-OFFSET, y: 620))
            path.addQuadCurve(to: CGPoint(x: 195-OFFSET, y: 695), control: CGPoint(x: 205-OFFSET, y: 670))
            path.addQuadCurve(to: CGPoint(x: 220-OFFSET, y: 730), control: CGPoint(x: 180-OFFSET, y: 730))
            path.addQuadCurve(to: CGPoint(x: 285-OFFSET, y: 715), control: CGPoint(x: 230-OFFSET, y: 750))
            path.addQuadCurve(to: CGPoint(x: 355-OFFSET, y: 685), control: CGPoint(x: 360-OFFSET, y: 710))
            path.addQuadCurve(to: CGPoint(x: 375-OFFSET, y: 685), control: CGPoint(x: 365-OFFSET, y: 687))
            path.addQuadCurve(to: CGPoint(x: 510-OFFSET, y: 685), control: CGPoint(x: 507-OFFSET, y: 710))
            path.addQuadCurve(to: CGPoint(x: 515-OFFSET, y: 655), control: CGPoint(x: 535-OFFSET, y: 669))
            path.addQuadCurve(to: CGPoint(x: 495-OFFSET, y: 640), control: CGPoint(x: 525-OFFSET, y: 645))
            path.addQuadCurve(to: CGPoint(x: 522-OFFSET, y: 580), control: CGPoint(x: 525-OFFSET, y: 600))
            path.addQuadCurve(to: CGPoint(x: 567-OFFSET, y: 515), control: CGPoint(x: 585-OFFSET, y: 565))
            path.addQuadCurve(to: CGPoint(x: 480-OFFSET, y: 390), control: CGPoint(x: 570-OFFSET, y: 500))
            path.addQuadCurve(to: CGPoint(x: 476-OFFSET, y: 352), control: CGPoint(x: 490-OFFSET, y: 350))
            path.addQuadCurve(to: CGPoint(x: 462-OFFSET, y: 313), control: CGPoint(x: 490-OFFSET, y: 320))
            path.addQuadCurve(to: CGPoint(x: 429-OFFSET, y: 247), control: CGPoint(x: 470-OFFSET, y: 280))
            path.addQuadCurve(to: CGPoint(x: 429-OFFSET, y: 25), control: CGPoint(x: 465-OFFSET, y: 170))
            path.addQuadCurve(to: CGPoint(x: 410-OFFSET, y: 240), control: CGPoint(x: 380-OFFSET, y: 170))
            path.addQuadCurve(to: CGPoint(x: 383-OFFSET, y: 250), control: CGPoint(x: 395-OFFSET, y: 240))
            path.addQuadCurve(to: CGPoint(x: 337-OFFSET, y: 25), control: CGPoint(x: 395-OFFSET, y: 90))
            path.closeSubpath()
        }
    }
    
    
}

struct BigChungusStomach:Shape{
    private let OFFSET=200
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 397-OFFSET, y: 323))
            path.addQuadCurve(to: CGPoint(x: 343-OFFSET, y: 338), control: CGPoint(x: 353-OFFSET, y: 315))
            path.addQuadCurve(to: CGPoint(x: 356-OFFSET, y: 333), control: CGPoint(x: 353-OFFSET, y: 330))
            path.addQuadCurve(to: CGPoint(x: 348-OFFSET, y: 368), control: CGPoint(x: 339-OFFSET, y: 340))
            path.addQuadCurve(to: CGPoint(x: 350-OFFSET, y: 350), control: CGPoint(x: 345-OFFSET, y: 350))
            path.addQuadCurve(to: CGPoint(x: 355-OFFSET, y: 365), control: CGPoint(x: 347-OFFSET, y: 355))
            path.addQuadCurve(to: CGPoint(x: 300-OFFSET, y: 490), control: CGPoint(x: 370-OFFSET, y: 410))
            path.addQuadCurve(to: CGPoint(x: 340-OFFSET, y: 690), control: CGPoint(x: 230-OFFSET, y: 630))
            path.addQuadCurve(to: CGPoint(x: 475-OFFSET, y: 663), control: CGPoint(x: 450-OFFSET, y: 680))
            path.addQuadCurve(to: CGPoint(x: 481-OFFSET, y: 410), control: CGPoint(x: 570-OFFSET, y: 570))
            path.addQuadCurve(to: CGPoint(x: 480-OFFSET, y: 350), control: CGPoint(x: 488-OFFSET, y: 350))
            path.addQuadCurve(to: CGPoint(x: 463-OFFSET, y: 313), control: CGPoint(x: 485-OFFSET, y: 318))
            path.addQuadCurve(to: CGPoint(x: 451-OFFSET, y: 327), control: CGPoint(x: 457-OFFSET, y: 310))
            path.addQuadCurve(to: CGPoint(x: 446-OFFSET, y: 329), control: CGPoint(x: 448-OFFSET, y: 325))
            path.addQuadCurve(to: CGPoint(x: 430-OFFSET, y: 330), control: CGPoint(x: 440-OFFSET, y: 325))
            path.addQuadCurve(to: CGPoint(x: 418-OFFSET, y: 330), control: CGPoint(x: 425-OFFSET, y: 326))
            path.addQuadCurve(to: CGPoint(x: 397-OFFSET, y: 323), control: CGPoint(x: 405-OFFSET, y: 320))
            path.closeSubpath()
        }
    }
    
    
}
