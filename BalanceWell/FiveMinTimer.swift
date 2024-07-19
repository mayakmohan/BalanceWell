//
//  FiveMinTimer.swift
//  BalanceWell
//
//  Created by Smita Mohan on 7/18/24.
//

import SwiftUI
struct FiveMinTimer: View {
    @State private var timeLeft = 300
    @State private var timerActive = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        ZStack {
            RadialGradient(gradient: Gradient(colors:[Color.InnerColor, Color.OuterColor]), center: .center, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            VStack {
                Text("Meditation")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.DarkBlue)
                    .padding(.top, 40)
                    .padding(.bottom, 150)
                
                Spacer()
                
                Text(minuteTime)
                    .font(.system(size: 80))
                    .foregroundColor(.DarkBlue)
                    .bold()
                    .padding(.bottom)
                
                
                HStack {
                    Button(action: startTimer) {
                        Text("Start")
                            .padding()
                            .background(Color(#colorLiteral(red: 0, green: 0.0511874482, blue: 0.3929117024, alpha: 1)))
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                    }
                    Button(action: pauseTimer) {
                        Text("Pause")
                            .padding()
                            .background(Color(#colorLiteral(red: 0, green: 0.0511874482, blue: 0.3929117024, alpha: 1)))
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                    }
                    Button(action: restartTimer) {
                        Text("Restart")
                            .padding()
                            .background(Color(#colorLiteral(red: 0, green: 0.0511874482, blue: 0.3929117024, alpha: 1)))
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                    }
                }
                .padding(.bottom, 125)
                
                Text("Inhale for 4 seconds\nHold for 7 seconds\nExhale for 8 seconds")
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                    .padding()
                    .padding(.horizontal)
                    .background(Color.DarkBlue)
                    .cornerRadius(25)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                Spacer()
            }
            
            .onReceive(timer) { _ in
                if timerActive {
                    if timeLeft > 0 {
                        timeLeft -= 1
                    } else {
                        pauseTimer()
                    }
                }
            }
        }
    }
        
        var minuteTime: String {
            let minutes = timeLeft / 60
            let seconds = timeLeft % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
        
        func startTimer() {
            timerActive = true
        }
        
        func pauseTimer() {
            timerActive = false
        }
        
        func restartTimer() {
            timeLeft = 300
            pauseTimer()
        }
    
}

#Preview {
    FiveMinTimer()
}
