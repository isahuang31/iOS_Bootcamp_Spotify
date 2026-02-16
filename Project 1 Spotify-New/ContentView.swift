//
//  ContentView.swift
//  Project 1 Spotify-New
//
//  Created by Isabella - on 2/15/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var time: Double = 0
    
    var body: some View {
        ZStack {
            
            let startColor = Color(
                        red: 53 / 255.0,
                        green: 87 / 255.0,
                        blue: 35 / 255.0
                    )
                    
                    let endColor = Color(
                        red: 30 / 255.0,
                        green: 40 / 255.0,
                        blue: 25 / 255.0)
                        
            LinearGradient(
                gradient: Gradient(colors: [startColor,endColor]),startPoint: .top,
                endPoint: .bottom)
                .ignoresSafeArea()
                        
            Image("dtmf")
                 .resizable()
                 .frame(width: 355, height: 355)
                 .clipShape(RoundedRectangle(cornerRadius: 9))
                 .offset(y:-100)
            
            Text("ISABELLA's Music")
                .offset(y:-370)
                .bold()
                .foregroundStyle(Color.white)
                .font(.system(size: 11.5))

            Text("VOY A LLeVARTE PA PR")
                .offset(x:-55,y:145)
                .bold()
                .foregroundStyle(Color.white)
                .font(.title2)
            
            Text("Bad Bunny")
                .offset(x:-135,y:175)
                .foregroundStyle(Color.gray)
                .font(.subheadline)
            
            Text(". . . ")
                .offset(x:160,y:-375)
                .bold()
                .foregroundStyle(Color.white)
                .font(.title2)

            Image(systemName: "shuffle")
                .foregroundStyle(Color.white)
                .offset(x:-135,y:300)
            
            Image(systemName: "play.circle.fill")
                .foregroundStyle(Color.white)
                .offset(y:290)
                .font(.system(size: 67))

            
            Slider(value: $time, in: 0...236).offset(y:220)
                .accentColor(.white)
            
            Image(systemName: "checkmark.circle.fill")
                .offset(x:165,y:160)
                .foregroundStyle(Color.green)
                .font(.title)
            
            Image(systemName:
                        "forward.end.fill")
                .foregroundStyle(Color.white)
                .offset(x:100,y:300)
                
            Image(systemName:
                        "backward.end.fill")
                .foregroundStyle(Color.white)
                .offset(x:-100,y:300)
            
            Image(systemName: "square.and.arrow.up")
                .foregroundStyle(Color.white)
                .offset(x:0,y:200)
            
            Image(systemName: "list.bullet.below.rectangle")
                .foregroundStyle(Color.white)
                .offset(x:0,y:250)
            
            Image(systemName: "chevron.down")
                .foregroundStyle(Color.white)
                .offset(x:0,y:-350)
            
            Image(systemName: "tv.and.hifispeaker.fill")
                .foregroundStyle(Color.white)
                .offset(x:-100,y:350)
            
            Image(systemName: "repeat")
                .foregroundStyle(Color.white)
                .offset(x:100,y:350)
            
            
            HStack{
                
                Text("11:11")
                    .offset(x:-70,y:-420)
                    .bold()
                    .foregroundStyle(Color.white)
                    .font(.headline)
                
                Image(systemName: "cellularbars")
                    .offset(x:105,y:-420)
                    .foregroundStyle(Color.white)
                    .font(.subheadline)
                
                Image(systemName: "wifi")
                    .offset(x:100,y:-420)
                    .foregroundStyle(Color.white)

                Image(systemName: "battery.75")
                    .offset(x:95,y:-420)
                    .foregroundStyle(Color.white)

            }
            
        }

    }
}
#Preview {
    ContentView()
}
