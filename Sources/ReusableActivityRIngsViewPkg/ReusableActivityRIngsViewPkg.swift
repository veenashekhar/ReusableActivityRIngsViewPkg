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
        return Color(decimalRed: 125, green: 240, blue: 50)
    }
    
    public static var darkBlue: Color {
        return Color(decimalRed: 8, green: 200, blue: 222)
       
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
       
        
    }
    
    public static var lightMagenta: Color {
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
    
        public static var darkMint: Color {
    
        return Color(decimalRed: 62, green: 180, blue: 137)
        
    }
    
    public static var lightMint: Color {
        
        //Mustard
        return Color(decimalRed: 255, green: 219, blue: 88)
    }
    
    public init(decimalMint red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    public static var darkCrimson: Color {
        return Color(decimalRed: 220, green: 20, blue: 60)
    }
    
    public static var lightCrimson: Color {
        // coral
        return Color(decimalRed: 255, green: 127, blue: 80)
    }
    
    public init(decimalCrimson red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
}

@available(macOS 10.15, *)
@available(iOS 13.0, *)
public struct ActivityRingsView:View{
    
     @Binding var progressArray: [CGFloat]
     @Binding private var colorArray: [Int]
    
     
     @State private var noProgress:CGFloat = 0.0
     @State private var idealwidth1:CGFloat = 50.0
     @State private var idealwidth2:CGFloat = 100.0
     @State private var idealwidth3:CGFloat = 150.0
     @State private var idealwidth4:CGFloat = 200.0
     @State private var idealwidth5:CGFloat = 250.0
     @State private var idealwidth6:CGFloat = 300.0
     @State private var idealwidth7:CGFloat = 350.0
     
     
     @State private var colors1: [Color]
     @State private var colors2: [Color]
     @State private var colors3: [Color]
     @State private var colors4: [Color]
     @State private var colors5: [Color]
     @State private var colors6: [Color]
     @State private var colors7: [Color]
     
     public init(  progArr:Binding<[CGFloat]>, colorArr:Binding<[Int]>) {
         
         self.colors1 = [Color.darkRed,Color.lightRed]
         self.colors2 = [Color.darkBlue,Color.lightBlue]
         self.colors3 = [Color.darkGreen,Color.lightGreen]
         self.colors4 = [Color.darkMagenta,Color.lightMagenta]
         self.colors5 = [Color.darkOrange,Color.lightOrange]
         self.colors6 = [Color.darkMint,Color.lightMint]
         self.colors7 = [Color.darkCrimson,Color.lightCrimson]
         self._progressArray = progArr
         self._colorArray = colorArr
         self.idealwidth1 = idealwidth1
         self.idealwidth2 = idealwidth2
         self.idealwidth3 = idealwidth3
         self.idealwidth4 = idealwidth4
         self.idealwidth5 = idealwidth5
         self.idealwidth6 = idealwidth6
         self.idealwidth7 = idealwidth7
         
     }
     
     func convertIntoColors(num: Int) -> [Color]{
         
             switch num {
             case 1: return colors1
             case 2: return colors2
             case 3: return colors3
             case 4: return colors4
             case 5: return colors5
             case 6: return colors6
             case 7: return colors7
             default:
                 return colors1
             }
             
         
         
     }
     
    public var body: some View{
        
     //Parametrise progress array
     switch progressArray.count{
     case 1:
         ZStack{
             
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
             }
             else{
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
             }
         }
     case 2:
         
         ZStack{
             
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[1], width: $idealwidth2, colours: convertIntoColors(num: $colorArray[1].wrappedValue)).fixedSize()
             }
             else {
                 
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
                 
                 MyView(progress: $progressArray[1], width: $idealwidth2, colours: colors2).fixedSize()
             }
         }
         
     case 3:
         
         ZStack{
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[1], width: $idealwidth2, colours: convertIntoColors(num: $colorArray[1].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[2], width: $idealwidth3, colours: convertIntoColors(num: $colorArray[2].wrappedValue)).fixedSize()
             }
             else {
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
                 
                 MyView(progress: $progressArray[1], width: $idealwidth2, colours: colors2).fixedSize()
                 MyView(progress: $progressArray[2], width: $idealwidth3, colours: colors3).fixedSize()
             }
         }
         
     case 4:
         
         ZStack{
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[1], width: $idealwidth2, colours: convertIntoColors(num: $colorArray[1].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[2], width: $idealwidth3, colours: convertIntoColors(num: $colorArray[2].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[3], width: $idealwidth4, colours: convertIntoColors(num: $colorArray[3].wrappedValue)).fixedSize()
             }
             else {
                 
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
                 
                 MyView(progress: $progressArray[1], width: $idealwidth2, colours: colors2).fixedSize()
                 MyView(progress: $progressArray[2], width: $idealwidth3, colours: colors3).fixedSize()
                 MyView(progress: $progressArray[3], width: $idealwidth4, colours: colors4).fixedSize()
             }
         }
       
     case 5:
         
         ZStack{
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[1], width: $idealwidth2, colours: convertIntoColors(num: $colorArray[1].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[2], width: $idealwidth3, colours: convertIntoColors(num: $colorArray[2].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[3], width: $idealwidth4, colours: convertIntoColors(num: $colorArray[3].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[4], width: $idealwidth5, colours: convertIntoColors(num: $colorArray[4].wrappedValue)).fixedSize()
             }
             else {
                 
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
                 
                 MyView(progress: $progressArray[1], width: $idealwidth2, colours: colors2).fixedSize()
                 MyView(progress: $progressArray[2], width: $idealwidth3, colours: colors3).fixedSize()
                 MyView(progress: $progressArray[3], width: $idealwidth4, colours: colors4).fixedSize()
                 MyView(progress: $progressArray[4], width: $idealwidth5, colours: colors5).fixedSize()
             }
         }
         
     case 6:
         
         ZStack{
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[1], width: $idealwidth2, colours: convertIntoColors(num: $colorArray[1].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[2], width: $idealwidth3, colours: convertIntoColors(num: $colorArray[2].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[3], width: $idealwidth4, colours: convertIntoColors(num: $colorArray[3].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[4], width: $idealwidth5, colours: convertIntoColors(num: $colorArray[4].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[5], width: $idealwidth6, colours: convertIntoColors(num: $colorArray[5].wrappedValue)).fixedSize()
             }
             else {
                 
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
                 
                 MyView(progress: $progressArray[1], width: $idealwidth2, colours: colors2).fixedSize()
                 MyView(progress: $progressArray[2], width: $idealwidth3, colours: colors3).fixedSize()
                 MyView(progress: $progressArray[3], width: $idealwidth4, colours: colors4).fixedSize()
                 MyView(progress: $progressArray[4], width: $idealwidth5, colours: colors5).fixedSize()
                 MyView(progress: $progressArray[5], width: $idealwidth6, colours: colors6).fixedSize()
             }
         }
     case 7:
         
         ZStack{
             if progressArray.count == colorArray.count{
                 
                 MyView(progress:  $progressArray[0], width: $idealwidth1, colours: convertIntoColors(num: $colorArray[0].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[1], width: $idealwidth2, colours: convertIntoColors(num: $colorArray[1].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[2], width: $idealwidth3, colours: convertIntoColors(num: $colorArray[2].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[3], width: $idealwidth4, colours: convertIntoColors(num: $colorArray[3].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[4], width: $idealwidth5, colours: convertIntoColors(num: $colorArray[4].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[5], width: $idealwidth6, colours: convertIntoColors(num: $colorArray[5].wrappedValue)).fixedSize()
                 MyView(progress:  $progressArray[6], width: $idealwidth7, colours: convertIntoColors(num: $colorArray[6].wrappedValue)).fixedSize()
             }
             else {
                 
                 MyView(progress: $progressArray[0], width: $idealwidth1, colours: colors1).fixedSize()
                 
                 MyView(progress: $progressArray[1], width: $idealwidth2, colours: colors2).fixedSize()
                 MyView(progress: $progressArray[2], width: $idealwidth3, colours: colors3).fixedSize()
                 MyView(progress: $progressArray[3], width: $idealwidth4, colours: colors4).fixedSize()
                 MyView(progress: $progressArray[4], width: $idealwidth5, colours: colors5).fixedSize()
                 MyView(progress: $progressArray[5], width: $idealwidth6, colours: colors6).fixedSize()
                 MyView(progress: $progressArray[6], width: $idealwidth7, colours: colors7).fixedSize()
             }
         }
          
     default:
         if progressArray.count == 0 {
             ZStack{
                 Text("There should be atleast one ring").colorInvert()
             }
         }
         else if progressArray.count > 7 {
             ZStack{
                 Text("Upto 7 rings are supported").colorInvert()
             }
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
