//
//  ContentView.swift
//  UIButtons
//
//  Created by Aaliyah Sayed on 7/14/22.
//

import SwiftUI


struct ContentView: View {
    
    
    
    func getPalette() -> [Color]{
        if sepia {
            return [K.sepiaColor!, .black]
                    }
        else if black {
            return [K.softBlack!, .white]
        }
        
        else {
            return [.white, K.softBlack!]
            
            
        }
    }

    func getFontSize() -> CGFloat {
        if fifteen {
            return 15
        }
        
        else if seventeen {
            return 17
        }
            
        else if twofour {
            return 25
        }
          
        else if twoone {
            return 21
        }
          
        else if twothree {
            return 23
        }
          
        else  {
            return 19
        }
          
            
        }
    
    
    
@State private var sepia:Bool = false
@State private var white:Bool = false
@State private var black:Bool = false
    
    
@State private var changeFont:Bool = false
    
    
    @State private var fifteen:Bool = false
    @State private var seventeen:Bool = false
    @State private var nineteen:Bool = false
    @State private var twoone:Bool = false
    @State private var twothree:Bool = false
    @State private var twofour:Bool = false
    
    var text: String
  var body: some View {
     
     
      
      VStack(spacing:0) {
          

          ZStack {
               
      
              HStack{
              //colors
              HStack(spacing: -10) {
                  
                  //white
                  Button(action: {
                      self.white = true
                      black = false
                      sepia = false
                  }) {
                  Circle()
                          .foregroundColor(.black)

                          .frame(width: 40, height: 40)
                          .overlay(Circle()
                            .foregroundColor(.white)
                            .frame(width:  39))
                          .padding([.leading, .trailing], 10)
                  }
                  
                  
                // sepia
            Button(action: {
                self.sepia = true
                black = false
                white = false
            }) {
                Circle()
                        .foregroundColor(.black)

                        .frame(width: 40, height: 40)
                        .overlay(Circle()
                            .foregroundColor(K.sepiaColor)
                          .frame(width:  39))
                        .padding([.leading, .trailing], 10)
                }
                  
                  //black
                  Button(action: {
                      self.black = true
                      sepia = false
                      white = false
                  }) {
                      Circle()
                              .foregroundColor(.white)

                              .frame(width: 40, height: 40)
                              .overlay(Circle()
                                .foregroundColor(K.softBlack)
                                .frame(width:  39))
                              .padding([.leading, .trailing], 10)
                      }
                  
                  
                  
                  
              }
              
             
              //fonts
              HStack (alignment: .firstTextBaseline, spacing: 5){
                  
                  // size 15
                  Button(action: {
                      self.fifteen = true
                      seventeen = false
                      nineteen = false
                     twoone = false
                      twothree = false
                      twofour = false
                      
                  }) {
                  Text("A")
                          .foregroundColor(getPalette()[1])
                          .font(.system(size: 15))
                  }
                  
                  
                  
                  // size 17
                  Button(action: {
                     fifteen = false
                      self.seventeen = true
                      nineteen = false
                     twoone = false
                      twothree = false
                      twofour = false
                      
                  }) {
                      Text("A")
                          .foregroundColor(getPalette()[1])
                              .font(.system(size: 17))
                  }
                  
                  // size 19
                  Button(action: {
                      fifteen = false
                      seventeen = false
                      self.nineteen = true
                     twoone = false
                      twothree = false
                      twofour = false
                      
                  }) {
                      Text("A")
                          .foregroundColor(getPalette()[1])
                              .font(.system(size: 19))
                  }
                  
                  // size 21
                  Button(action: {
                     fifteen = false
                      seventeen = false
                      nineteen = false
                      self.twoone = true
                      twothree = false
                      twofour = false
                      
                  }) {
                      Text("A")
                          .foregroundColor(getPalette()[1])
                              .font(.system(size: 21))
                  }
                  
                  // size 23
                  Button(action: {
                      fifteen = false
                      seventeen = false
                      nineteen = false
                     twoone = false
                      self.twothree = true
                      twofour = false
                      
                  }) {
                      Text("A")
                          .foregroundColor(getPalette()[1])
                              .font(.system(size: 23))
                  }
                  
                  // size 25
                  Button(action: {
                      fifteen = false
                      seventeen = false
                      nineteen = false
                     twoone = false
                      twothree = false
                      self.twofour = true
                      
                  }) {
                      Text("A")
                              .foregroundColor(getPalette()[1])
                              .font(.system(size: 25))
                  }
                
                  
                  
              }.padding(10)
                  
              
                  .cornerRadius(8)
              
              }
          }
          .frame(maxWidth: .infinity, maxHeight: 50)
          .background(getPalette()[0])
              
            
          
         
          
          ScrollView {
              
              VStack(spacing: 10) {
                  Text("Book")
                      .font(.custom("PTSerif-Bold", size: 30))
                  
//
                  
                  Text(text)
                      .fixedSize(horizontal: false, vertical: true)
                
              }
              
              .lineLimit(nil)
                  .padding(20)
                  .font(.custom("PTSerif-Regular", size: getFontSize()))
                  .foregroundColor(getPalette()[1])
                  .background(getPalette()[0])
                 
              
              
          
          }
          
       
          
      }
              
               
  }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: sampleText)
    }
}

