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

}
@available(macOS 10.15, *)
@available(iOS 13.0, *)
public struct ActivityRingView: View {
    @Binding var progress: CGFloat

    var colors: [Color] = [Color.darkRed, Color.lightRed]
    //amount: Binding<Double>)
    init(progress: Binding<CGFloat>, colors: [Color]) {
        self._progress = progress
        self.colors = colors
    }
        
      public  var body: some View {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)

                        Circle()
                            .stroke(Color.outlineRed, lineWidth: 10)
                
                        Circle()
                            .trim(from: 0, to: progress)
                            .stroke(
                                AngularGradient(
                                    gradient: Gradient(colors: colors),
                                    center: .center,
                                    startAngle: .degrees(0),
                                    endAngle: .degrees(360)
                                ),
                                style: StrokeStyle(lineWidth: 20, lineCap: .round)
                            ).rotationEffect(.degrees(-90))
                
                Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.darkRed)
                                //.offset(y: -150)
                               .offset(y: -25)
                Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(progress > 0.95 ? Color.lightRed: Color.lightRed.opacity(0))
                               // .offset(y: -150)
                                .offset(y: -25)
                                .rotationEffect(Angle.degrees(360 * Double(progress)))
                                .shadow(color: progress > 0.96 ? Color.black.opacity(0.1): Color.clear, radius: 3, x: 4, y: 0)

                    }.frame(idealWidth: 50, idealHeight: 50, alignment: .center)
            //300
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
    @State private var idealwidth1:CGFloat = 25.0
    @State private var idealwidth2:CGFloat = 75.0
    @State private var idealwidth3:CGFloat = 125.0
    @State private var idealwidth4:CGFloat = 175.0
    @State private var idealwidth5:CGFloat = 225.0
    @State private var idealwidth6:CGFloat = 275.0
    @State private var idealwidth7:CGFloat = 325.0
    
    public init(numberOfRings: Binding<Int>, progress1: Binding<CGFloat>, progress2: Binding<CGFloat>, progress3: Binding<CGFloat>, progress4: Binding<CGFloat>, progress5: Binding<CGFloat>, progress6: Binding<CGFloat>, progress7: Binding<CGFloat>) {
        
    
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
                ActivityRingView(progress: $progress1, colors: [Color.lightRed,Color.darkRed]).fixedSize()
            }
        case 2:
            
            ZStack{
                MyView(progress: $progress1, width: $idealwidth1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                
            }
        case 3:
            
            ZStack{
                MyView(progress: $progress1, width: $idealwidth1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3).fixedSize()
            }
        case 4:
            
            ZStack{
                MyView(progress: $progress1, width: $idealwidth1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4).fixedSize()
            }
            
        case 5:
            
            ZStack{
                MyView(progress: $progress1, width: $idealwidth1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4).fixedSize()
                MyView(progress: $progress5, width: $idealwidth5).fixedSize()
            }
        case 6:
            
            ZStack{
                MyView(progress: $progress1, width: $idealwidth1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4).fixedSize()
                MyView(progress: $progress5, width: $idealwidth5).fixedSize()
                MyView(progress: $progress6, width: $idealwidth6).fixedSize()
            }
        case 7:
            
            ZStack{
                MyView(progress: $progress1, width: $idealwidth1).fixedSize()
                MyView(progress: $progress2, width: $idealwidth2).fixedSize()
                MyView(progress: $progress3, width: $idealwidth3).fixedSize()
                MyView(progress: $progress4, width: $idealwidth4).fixedSize()
                MyView(progress: $progress5, width: $idealwidth5).fixedSize()
                MyView(progress: $progress6, width: $idealwidth6).fixedSize()
                MyView(progress: $progress7, width: $idealwidth7).fixedSize()
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
public struct MyView : View{
    @Binding var progress: CGFloat
    @Binding var width:CGFloat
   // var colours:[Color] = [Color.indigo, Color.white]
    var colours:[Color] = [Color.lightRed, Color.darkRed]

   public var body: some View {
        //var colours:[Color] = [Color.darkRed, Color.lightRed]
        
        var offSetVal = ((width / 2) * -1)
        
        
            ZStack{
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
                    .foregroundColor(Color.darkRed)
                    .offset(y: offSetVal )
                
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(progress > 0.95 ? Color.lightRed: Color.lightRed.opacity(0))
                // .offset(y: -25)
                    .offset(y: offSetVal)
                    .rotationEffect(Angle.degrees(360 * Double(progress)))
                    .shadow(color: progress > 0.96 ? Color.black.opacity(0.1): Color.clear, radius: 3, x: 4, y: 0)
                
                // Text("\(offSetVal)")
                
            }.frame(idealWidth: width, idealHeight: width, alignment: .center)
        
    }
}
