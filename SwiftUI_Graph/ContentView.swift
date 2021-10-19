//
//  ContentView.swift
//  SwiftUI_Graph
//
//  Created by 廖晨維 on 2021/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
           Rectangle()
                .scaledToFill()
                .ignoresSafeArea()
            //add friend view
//            Image("wallpaper")
//                .resizable()
//                .scaledToFit()
//                .ignoresSafeArea()
//                .offset(x: -50, y: -170)
//            BigChungus()
//                .scaleEffect(0.5)
//                .offset(x: -80, y: 70)
//            pacman()
//                .scaleEffect(0.5)
//                .offset(x: 190, y: -20)
//            Text("太帥了吧")
//                .foregroundColor(Color.red)
//                .font(.system(size: 50))
//                .offset(x:0, y: -330)
//
            //personal view
            Image("ms")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .offset(x: -17, y: 0)

            pacman()
                .scaleEffect(0.7)
                .offset(x: 170, y: 130)
            Text("Yellow Pacman")
                .foregroundColor(Color.yellow)
                .font(.system(size: 50))
                .offset(x: 0, y: 250)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct pacman: View{
    var offsetx:Double=0;
    var offsety:Double=0;
    var body: some View{
        Group{
            pacman_shape().offset(x: -20, y: 0).stroke(.black,lineWidth: 2)
        
            pacman_body(R: 254.0/255, G: 228.0/255, B: 48.0/255).offset(x: -20, y: 0)
            //pink
            //pacman_body(R: 252.0/255, G: 189.0/255, B: 218.0/255).offset(x: -20, y: 0)
            pacman_brow()
            pacman_eyes()
            pacman_nose(R: 254.0/255, G: 228.0/255, B: 48.0/255)
            pacman_mouth()
            pacman_gloves()
            pacman_boots().offset(x: -20, y: 0)
        }
    }
}

struct pacman_body: View{
    var R:Double=0;
    var G:Double=0;
    var B:Double=0;
    
    var body: some View{
        
        pacman_shape().fill(Color( red: R, green: G, blue: B))
        
    }
}

struct pacman_brow:View{
    var body: some View{
        Path{ path in
            path.move(to: CGPoint(x: 194, y: 93))
            path.addLine(to: CGPoint(x: 238, y: 61))
            path.addLine(to: CGPoint(x: 235, y: 94))
        }.stroke(.black,lineWidth: 6)
        
        Path{path in
            path.move(to: CGPoint(x: 260, y: 97))
            path.addLine(to: CGPoint(x: 295, y: 70))
            path.addLine(to: CGPoint(x: 303, y: 114))
        }.stroke(.black,lineWidth: 6)
    }
}

struct pacman_eyes:View{
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 183, y: 124))
            path.addQuadCurve(to: CGPoint(x: 208, y: 139), control: CGPoint(x: 245, y: 50))
            path.addQuadCurve(to: CGPoint(x: 182, y: 157), control: CGPoint(x: 195, y: 170))
            path.addQuadCurve(to: CGPoint(x: 176, y: 143), control: CGPoint(x: 175, y: 150))
            path.addLine(to: CGPoint(x: 200, y: 137))
            path.closeSubpath()
        }
        
        Path{path in
            path.move(to: CGPoint(x: 277, y: 105))
            path.addLine(to: CGPoint(x: 248, y: 168))
            path.addLine(to: CGPoint(x: 280, y: 164))
        }.stroke(lineWidth: 8)
    }
}

struct pacman_nose:View{
    var R:Double=0;
    var G:Double=0;
    var B:Double=0;
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 226, y: 180))
            path.addQuadCurve(to: CGPoint(x: 190, y: 155), control:CGPoint(x: 200, y: 147))
            path.addQuadCurve(to: CGPoint(x: 200, y: 193), control: CGPoint(x: 180, y: 160))
            path.addQuadCurve(to: CGPoint(x: 226, y: 180), control: CGPoint(x: 217, y: 197))
            path.closeSubpath()
        }.stroke(lineWidth: 2)
        
        Path{path in
            path.move(to: CGPoint(x: 226, y: 180))
            path.addQuadCurve(to: CGPoint(x: 190, y: 155), control:CGPoint(x: 200, y: 147))
            path.addQuadCurve(to: CGPoint(x: 200, y: 193), control: CGPoint(x: 180, y: 160))
            path.addQuadCurve(to: CGPoint(x: 226, y: 180), control: CGPoint(x: 217, y: 197))
            path.closeSubpath()
        }.fill(Color(red:R, green: G, blue: B))
    }
}
struct pacman_mouth:View{
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 125, y: 170))
            path.addQuadCurve(to: CGPoint(x: 330, y: 205), control: CGPoint(x: 208, y: 226))
            path.addQuadCurve(to: CGPoint(x: 125, y: 170), control: CGPoint(x: 190, y: 380))
            path.closeSubpath()
        }
        
        Path{path in
            path.move(to: CGPoint(x: 220, y: 240))
            path.addQuadCurve(to: CGPoint(x: 240, y: 250), control: CGPoint(x: 255, y: 233))
            path.addQuadCurve(to: CGPoint(x: 188, y: 240), control: CGPoint(x: 210, y: 270))
            path.addQuadCurve(to: CGPoint(x: 220, y: 240), control: CGPoint(x: 180, y: 218))
            path.closeSubpath()
        }.fill(Color(red: 245.0/255, green: 59.0/255, blue: 70.0/255))
    }
}

struct pacman_rightglove:View{
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 390, y: 253))
            path.addQuadCurve(to: CGPoint(x: 390, y: 283), control:CGPoint(x: 410, y: 280))
            path.addQuadCurve(to: CGPoint(x: 385, y: 310), control:CGPoint(x: 395, y: 290))
            path.addQuadCurve(to: CGPoint(x: 325, y: 342), control:CGPoint(x: 390, y: 380))
            path.addQuadCurve(to: CGPoint(x: 310, y: 287), control:CGPoint(x: 290, y: 320))
            path.addQuadCurve(to: CGPoint(x: 347, y: 256), control: CGPoint(x: 332, y: 252))
            path.addQuadCurve(to: CGPoint(x: 360, y: 237), control: CGPoint(x: 335, y: 229))
            path.addQuadCurve(to: CGPoint(x: 390, y: 253), control: CGPoint(x: 374, y: 241))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 347, y: 256))
            path.addQuadCurve(to: CGPoint(x: 390, y: 283), control: CGPoint(x: 370, y: 258))
        }.fill(Color(red: 253.0/255, green: 142.0/255, blue: 34.0/255))
        
        Path{path in
            path.move(to: CGPoint(x: 390, y: 253))
            path.addQuadCurve(to: CGPoint(x: 390, y: 283), control:CGPoint(x: 410, y: 280))
            path.addQuadCurve(to: CGPoint(x: 385, y: 310), control:CGPoint(x: 395, y: 290))
            path.addQuadCurve(to: CGPoint(x: 325, y: 342), control:CGPoint(x: 390, y: 380))
            path.addQuadCurve(to: CGPoint(x: 310, y: 287), control:CGPoint(x: 290, y: 320))
            path.addQuadCurve(to: CGPoint(x: 347, y: 256), control: CGPoint(x: 332, y: 252))
            path.addQuadCurve(to: CGPoint(x: 360, y: 237), control: CGPoint(x: 335, y: 229))
            path.addQuadCurve(to: CGPoint(x: 390, y: 253), control: CGPoint(x: 374, y: 241))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 347, y: 256))
            path.addQuadCurve(to: CGPoint(x: 390, y: 283), control: CGPoint(x: 370, y: 258))
        }.stroke(.black,lineWidth: 1)
        
        //手套皺摺
        Path{path in
            path.move(to: CGPoint(x: 385, y: 310))
            path.addLine(to: CGPoint(x: 369, y: 327))
            path.addLine(to: CGPoint(x: 371, y: 338))
            path.move(to: CGPoint(x: 369, y: 327))
            path.addLine(to: CGPoint(x: 363, y: 329))
        }.stroke(.black,style: StrokeStyle(lineWidth: 2, lineCap: .round))
    }
}

struct pacman_leftglove:View{
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 102, y: 239))
            path.addQuadCurve(to: CGPoint(x: 50, y: 230), control:CGPoint(x: 75, y: 257))
            path.addLine(to: CGPoint(x: 37, y: 189))
            
            path.addQuadCurve(to: CGPoint(x: 45, y: 159), control:CGPoint(x: 28, y: 175))
            
            path.addLine(to: CGPoint(x: 35, y: 139))
            path.addQuadCurve(to: CGPoint(x: 62, y: 128), control:CGPoint(x: 27, y: 108))
            
            path.addQuadCurve(to: CGPoint(x: 66, y: 146), control:CGPoint(x: 65, y: 133))
            path.addQuadCurve(to: CGPoint(x: 116, y: 179), control:CGPoint(x: 105, y: 138))
            path.addQuadCurve(to: CGPoint(x: 116, y: 220), control:CGPoint(x: 125, y: 204))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 45, y: 159))
            path.addQuadCurve(to: CGPoint(x: 66, y: 146), control: CGPoint(x: 56, y: 148))
        }.fill(Color(red: 253.0/255, green: 142.0/255, blue: 34.0/255))
        
        Path{path in
            path.move(to: CGPoint(x: 102, y: 239))
            path.addQuadCurve(to: CGPoint(x: 50, y: 230), control:CGPoint(x: 75, y: 257))
            path.addLine(to: CGPoint(x: 37, y: 189))
            
            path.addQuadCurve(to: CGPoint(x: 45, y: 159), control:CGPoint(x: 28, y: 175))
            
            path.addLine(to: CGPoint(x: 35, y: 139))
            path.addQuadCurve(to: CGPoint(x: 62, y: 128), control:CGPoint(x: 27, y: 108))
            
            path.addQuadCurve(to: CGPoint(x: 66, y: 146), control:CGPoint(x: 65, y: 133))
            path.addQuadCurve(to: CGPoint(x: 116, y: 179), control:CGPoint(x: 105, y: 138))
            path.addQuadCurve(to: CGPoint(x: 116, y: 220), control:CGPoint(x: 125, y: 204))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 45, y: 159))
            path.addQuadCurve(to: CGPoint(x: 66, y: 146), control: CGPoint(x: 56, y: 148))
        }.stroke(.black,lineWidth: 1)
        
        
        //手套皺摺
        Path{path in
            path.move(to: CGPoint(x: 117, y: 219))
            path.addQuadCurve(to: CGPoint(x: 97, y: 224), control: CGPoint(x: 107, y: 229))
            path.addQuadCurve(to: CGPoint(x: 77, y: 229), control: CGPoint(x: 87, y: 220))
            
        }.stroke(.black,style: StrokeStyle(lineWidth: 2, lineCap: .round))
    }
}

struct pacman_gloves:View{
    var body: some View{
        pacman_leftglove().offset(x: -20, y: 0)
        pacman_rightglove().offset(x: -20, y: 0)
        Path{path in
            path.move(to: CGPoint(x: 349, y: 240))
            path.addLine(to: CGPoint(x: 360, y: 230))
            path.addLine(to: CGPoint(x: 345, y: 220))
        }.stroke(.black,lineWidth: 1)
    }
}

struct pacman_boots:View{
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 292, y: 330))
            path.addQuadCurve(to: CGPoint(x: 313, y: 337), control:CGPoint(x: 310, y: 330))
            path.addLine(to: CGPoint(x: 326, y: 392))
            path.addQuadCurve(to: CGPoint(x: 343, y: 446), control:CGPoint(x: 350, y: 420))
            path.addQuadCurve(to: CGPoint(x:253, y: 447), control:CGPoint(x: 300, y: 456))
            path.addLine(to: CGPoint(x: 250, y: 435))
            path.addQuadCurve(to: CGPoint(x: 135, y: 440), control:CGPoint(x: 175, y: 450))
            path.addQuadCurve(to: CGPoint(x: 197, y: 383), control:CGPoint(x: 133, y: 373))
            path.addLine(to: CGPoint(x: 189, y: 350))
            path.addQuadCurve(to: CGPoint(x: 202, y: 338), control:CGPoint(x: 195, y: 340))
            path.addQuadCurve(to: CGPoint(x: 292, y: 330), control: CGPoint(x: 240, y: 326))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 197, y: 383))
            path.addQuadCurve(to: CGPoint(x: 227, y: 394), control: CGPoint(x: 212, y: 385))
            
            path.move(to: CGPoint(x: 250, y: 329))
            path.addQuadCurve(to: CGPoint(x: 259, y: 398), control: CGPoint(x: 270, y: 395))
            
            
            
            
            
            path.move(to: CGPoint(x: 250, y: 435))
            path.addQuadCurve(to: CGPoint(x: 259, y: 398), control: CGPoint(x: 245, y: 417))
            
        }.fill(Color(red: 255, green: 44.0/255, blue: 60.0/255))
        
        
        Path{path in
            path.move(to: CGPoint(x: 292, y: 330))
            path.addQuadCurve(to: CGPoint(x: 313, y: 337), control:CGPoint(x: 310, y: 330))
            path.addLine(to: CGPoint(x: 326, y: 392))
            path.addQuadCurve(to: CGPoint(x: 343, y: 446), control:CGPoint(x: 350, y: 420))
            path.addQuadCurve(to: CGPoint(x:253, y: 447), control:CGPoint(x: 300, y: 456))
            path.addLine(to: CGPoint(x: 250, y: 435))
            path.addQuadCurve(to: CGPoint(x: 135, y: 440), control:CGPoint(x: 175, y: 450))
            path.addQuadCurve(to: CGPoint(x: 197, y: 383), control:CGPoint(x: 133, y: 373))
            path.addLine(to: CGPoint(x: 189, y: 350))
            path.addQuadCurve(to: CGPoint(x: 202, y: 338), control:CGPoint(x: 195, y: 340))
            path.addQuadCurve(to: CGPoint(x: 292, y: 330), control: CGPoint(x: 240, y: 326))
            path.closeSubpath()
            
            
            
            path.move(to: CGPoint(x: 250, y: 329))
            path.addQuadCurve(to: CGPoint(x: 259, y: 398), control: CGPoint(x: 270, y: 395))
            
            path.move(to: CGPoint(x: 197, y: 383))
            path.addQuadCurve(to: CGPoint(x: 227, y: 394), control: CGPoint(x: 212, y: 385))
            
            path.move(to: CGPoint(x: 326, y: 392))
            path.addQuadCurve(to: CGPoint(x: 259, y: 398), control: CGPoint(x: 293, y: 373))
            
            path.move(to: CGPoint(x: 250, y: 435))
            path.addQuadCurve(to: CGPoint(x: 259, y: 398), control: CGPoint(x: 245, y: 417))
            
            
            path.move(to: CGPoint(x: 250, y: 329))
            path.addLine(to: CGPoint(x: 245, y: 310))
                         
        }.stroke(.black,lineWidth: 2)
    }
}
