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
              
            //album cover
            Image("dtmf")
                 .resizable()
                 .frame(width: 355, height: 355)
                 .clipShape(RoundedRectangle(cornerRadius: 9))
                 .offset(y:-125)
            
            //playlist name
            Text("ISABELLA's Music")
                .offset(y:-370)
                .bold()
                .foregroundStyle(Color.white)
                .font(.system(size: 11.5))
            
            //song title
            Text("VOY A LLeVARTE PA PR")
                .offset(x:-55,y:130)
                .bold()
                .foregroundStyle(Color.white)
                .font(.title2)
            
            //artist name
            Text("Bad Bunny")
                .offset(x:-135,y:155)
                .foregroundStyle(Color.gray)
                .font(.subheadline)
            
            //three dots
            Text(". . . ")
                .offset(x:160,y:-375)
                .bold()
                .foregroundStyle(Color.white)
                .font(.body)

            HStack{
                //shuffle button
                Image(systemName: "shuffle")
                    .foregroundStyle(Color.white)
                    .offset(x:-55,y:260)
                    .font(.system(size: 23))
                
                //back button
                Image(systemName:
                        "backward.end.fill")
                .foregroundStyle(Color.white)
                .offset(x:-23,y:260)
                .font(.system(size: 28))
                
                //play button
                Image(systemName: "play.circle.fill")
                    .foregroundStyle(Color.white)
                    .offset(y:260)
                    .font(.system(size: 67))
                
                //next song
                Image(systemName:
                        "forward.end.fill")
                .foregroundStyle(Color.white)
                .offset(x:23,y:260)
                .font(.system(size: 28))
                
                
                //loop button
                Image(systemName: "repeat")
                    .foregroundStyle(Color.white)
                    .offset(x:55,y:260)
                    .font(.system(size: 23))
                
            }

            //slider
            Slider(value: $time, in: 0...236).offset(y:190)
                .accentColor(.white)
            
            //saved green check
            Image(systemName: "checkmark.circle.fill")
                .offset(x:165,y:150)
                .foregroundStyle(Color.green)
                .font(.title)
            
            
            //share button
            Image(systemName: "square.and.arrow.up")
                .foregroundStyle(Color.white)
                .offset(x:126,y:328)
                .bold()
                .font(.system(size: 18))
            
            //queue button
            Image(systemName: "list.bullet.below.rectangle")
                .foregroundStyle(Color.white)
                .offset(x:165,y:330)
                .bold()
                .font(.system(size: 18))
            
            //down minimize arrow
            Image(systemName: "chevron.down")
                .foregroundStyle(Color.white)
                .offset(x:-165,y:-367)
                .font(.title2)
            
            //speaker icon
            Image(systemName: "tv.and.hifispeaker.fill")
                .foregroundStyle(Color.white)
                .offset(x:-155,y:330)
                .bold()
                .font(.system(size: 16))
            
            
            HStack{
                
                //time
                Text("11:11")
                    .offset(x:-70,y:-420)
                    .bold()
                    .foregroundStyle(Color.white)
                    .font(.headline)
                
                //cell bar icon
                Image(systemName: "cellularbars")
                    .offset(x:105,y:-420)
                    .foregroundStyle(Color.white)
                    .font(.subheadline)
                
                //wifi icon
                Image(systemName: "wifi")
                    .offset(x:100,y:-420)
                    .foregroundStyle(Color.white)

                //battery icon
                Image(systemName: "battery.75")
                    .offset(x:95,y:-420)
                    .foregroundStyle(Color.white)

            }
            
        }

    }
}
// I finished!!
#Preview {
    ContentView()
}
