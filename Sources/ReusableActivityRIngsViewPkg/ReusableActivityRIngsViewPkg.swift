// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI
@available(macOS 10.15, *)
@available(iOS 13.0, *)
extension Color{
    public static var outlineRed: Color {
            return Color(decimalRed: 34, green: 0, blue: 3)
        }
        
        public static var darkRed: Color {
            return Color(decimalRed: 221, green: 31, blue: 59)
        }
        
        public static var lightRed: Color {
            return Color(decimalRed: 239, green: 54, blue: 128)
        }
        
        public init(decimalRed red: Double, green: Double, blue: Double) {
            self.init(red: red / 255, green: green / 255, blue: blue / 255)
        }
      
    public static var lightBlue: Color {
        //return Color(decimalRed: 173, green: 216, blue: 230)
        //return Color(decimalRed: 102, green: 255, blue: 0)
        return Color(decimalRed: 125, green: 240, blue: 50)
    }
    
    public static var darkBlue: Color {
        //return Color(decimalRed: 0, green: 0, blue: 139)
        //return Color(decimalRed: 8, green: 232, blue: 222)
        return Color(decimalRed: 8, green: 200, blue: 222)
       // return Color(decimalRed: 155, green: 221, blue: 255)
    }
    public init(decimalBlue red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    public static var darkGreen: Color {
        return Color(decimalRed: 178, green: 236, blue: 93)
        
    }
    
    public static var lightGreen: Color {
        return Color(decimalRed: 252, green: 247, blue: 94)
    }
    
    public init(decimalGreen red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    public static var darkMagenta: Color {
        return Color(decimalRed: 139, green: 0, blue: 139)
       // return Color(decimalRed: 175, green: 0, blue: 139)
        
    }
    
    public static var lightMagenta: Color {
       // return Color(decimalRed: 244, green: 154, blue: 194)
        return Color(decimalRed: 150, green: 154, blue: 194)
    }
    
    public init(decimalMagenta red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    public static var darkOrange: Color {
        return Color(decimalRed: 255, green: 140, blue: 0)
        
    }
    
    public static var lightOrange: Color {
        return Color(decimalRed: 255, green: 179, blue: 71)
    }
    
    public init(decimalOrange red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
    public static var darkViolet: Color {
        //return Color(decimalRed: 148, green: 0, blue: 211)
        //Mint
        return Color(decimalRed: 62, green: 180, blue: 137)
        
    }
    
    public static var lightViolet: Color {
        //return Color(decimalRed: 203, green: 153, blue: 201)
        //Mustard
        return Color(decimalRed: 255, green: 219, blue: 88)
    }
    
    public init(decimalViolet red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    public static var darkBrown: Color {
        //return Color(decimalRed: 150, green: 75, blue: 0) crimson
        return Color(decimalRed: 220, green: 20, blue: 60)
    }
    
    public static var lightBrown: Color {
        //return Color(decimalRed: 205, green: 127, blue: 50) coral
        return Color(decimalRed: 255, green: 127, blue: 80)
    }
    
    public init(decimalBrown red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
}

@available(macOS 10.15, *)
@available(iOS 13.0, *)
public struct ActivityRingsView:View{
    @Binding var numberOfRings:Int
    @Binding var progress1:CGFloat
    @Binding var progress2:CGFloat
    @Binding var progress3:CGFloat
    @Binding var progress4:CGFloat
    @Binding var progress5:CGFloat
    @Binding var progress6:CGFloat
    @Binding var progress7:CGFloat
    @State private var noProgress:CGFloat = 0.0
    @State private var idealwidth1:CGFloat = 50.0
    @State private var idealwidth2:CGFloat = 75.0
    @State private var idealwidth3:CGFloat = 125.0
    @State private var idealwidth4:CGFloat = 175.0
    @State private var idealwidth5:CGFloat = 225.0
    @State private var idealwidth6:CGFloat = 275.0
    @State private var idealwidth7:CGFloat = 325.0
    @State private var colors1: [Color]
    @State private var colors2: [Color]
    @State private var colors3: [Color]
    @State private var colors4: [Color]
    @State private var colors5: [Color]
    @State private var colors6: [Color]
    @State private var colors7: [Color]
    
    public init( numberOfRings: Binding<Int>, progress1: Binding<CGFloat>, progress2: Binding<CGFloat>, progress3: Binding<CGFloat>, progress4: Binding<CGFloat>, progress5: Binding<CGFloat>, progress6: Binding<CGFloat>, progress7: Binding<CGFloat>) {
        
    
            self._numberOfRings = numberOfRings
            self._progress1 = progress1
        
        /*
        //var testValue: String {
        //toggleValue ? "true" : "false"
    //}
         init(initialValue: Bool) {
             testValue = initialValue ? "true" : "false"
         }

        */
        
        self._progress2 = progress2
        self._progress3 = progress3
        self._progress4 = progress4
        self._progress5 = progress5
        self._progress6 = progress6
        self._progress7 = progress7
        self.colors1 = [Color.darkRed,Color.lightRed]
        self.colors2 = [Color.darkBlue,Color.lightBlue]
        self.colors3 = [Color.darkGreen,Color.lightGreen]
        self.colors4 = [Color.darkMagenta,Color.lightMagenta]
        self.colors5 = [Color.darkOrange,Color.lightOrange]
        self.colors6 = [Color.darkViolet,Color.lightViolet]
        self.colors7 = [Color.darkBrown,Color.lightBrown]
        self.idealwidth1 = idealwidth1
        self.idealwidth2 = idealwidth2
        self.idealwidth3 = idealwidth3
        self.idealwidth4 = idealwidth4
        self.idealwidth5 = idealwidth5
        self.idealwidth6 = idealwidth6
        self.idealwidth7 = idealwidth7
        
    }
    
    
    
    
    //var prog:CGFloat
    public var body: some View{
        
        switch numberOfRings{
        case 1:
            ZStack{
                
               // ActivityRingView(progress: $progress1, colors: [Color.darkRed,Color.lightRed]).fixedSize()
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()

            }
        case 2:
            
            ZStack{
                
               // MyView(progress: $progress1, width: $idealwidth1).fixedSize()
               // MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                
                
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2, colours: colors2).fixedSize()
            }
            
        case 3:
            
            ZStack{
                
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2, colours: colors2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3, colours: colors3).fixedSize()
            }
            
        case 4:
            
            ZStack{
                
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2, colours: colors2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3, colours: colors3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4, colours: colors4).fixedSize()
            }
          
        case 5:
            
            ZStack{
                
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2, colours: colors2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3, colours: colors3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4, colours: colors4).fixedSize()
                MyView(progress: $progress5, width: $idealwidth5, colours: colors5).fixedSize()
            }
            
        case 6:
            
            ZStack{
                
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2, colours: colors2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3, colours: colors3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4, colours: colors4).fixedSize()
                MyView(progress: $progress5, width: $idealwidth5, colours: colors5).fixedSize()
                MyView(progress: $progress6, width: $idealwidth6, colours: colors6).fixedSize()
            }
        case 7:
            
            ZStack{
                
                MyView(progress: $progress1, width: $idealwidth1, colours: colors1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2, colours: colors2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3, colours: colors3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4, colours: colors4).fixedSize()
                MyView(progress: $progress5, width: $idealwidth5, colours: colors5).fixedSize()
                MyView(progress: $progress6, width: $idealwidth6, colours: colors6).fixedSize()
                MyView(progress: $progress7, width: $idealwidth7, colours: colors7).fixedSize()
            }
             
        default:
            ZStack{
                Text("There should be atleast one ring")
            }
            
            
            
        }
    }
}
@available(macOS 10.15, *)
@available(iOS 13.0, *)
struct MyView : View{
    @Binding var progress: CGFloat
    @Binding var width:CGFloat
    var colours:[Color]
    init(progress: Binding<CGFloat>, width: Binding<CGFloat>, colours: [Color]) {
        
        self._progress = progress
        self._width = width
        self.colours = colours
        
    }
    /* init(progress: Binding<CGFloat>, colors: [Color]) {
     self._progress = progress
     self.colors = colors
 }*/
    var body: some View {
        //var colours:[Color] = [Color.darkRed, Color.lightRed]
        
        var offSetVal = ((width / 2) * -1)
        //var numberOfRings = 2
        
            ZStack{
               // Color.black.edgesIgnoringSafeArea(.all)

                Circle()
                    .stroke(Color.outlineRed,lineWidth:10)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(colors: colours),
                            center: .center,
                            startAngle: .degrees(0),
                            endAngle: .degrees(360)
                        ),
                        style: StrokeStyle(lineWidth: 20, lineCap: .round)
                    ).rotationEffect(.degrees(-90))
                
                
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(colours[0])
                    .offset(y: offSetVal )
                
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(progress > 0.95 ? colours[1]: colours[1].opacity(0))
                // .offset(y: -25)
                    .offset(y: offSetVal)
                    .rotationEffect(Angle.degrees(360 * Double(progress)))
                    .shadow(color: progress > 0.96 ? Color.black.opacity(0.1): Color.clear, radius: 3, x: 4, y: 0)
                
                // Text("\(offSetVal)")
                
            }.frame(idealWidth: width, idealHeight: width, alignment: .center)
        
    }
}
