//
//  sleepTracker.swift
//  BalanceWell
//
//  Created by Smita Mohan on 7/18/24.
//



import SwiftUI

struct SleepTrackerView: View {
    @State private var sleepTime: String = ""
    @State private var wakeUpTime: String = ""
    @State private var sleepHours: Int = 0
    @State private var sleepMinutes: Int = 0
    @State private var sleepMessage: String = ""
    
    var body: some View {
     
        
        NavigationView {

            ZStack {
                
                RadialGradient(gradient: Gradient(colors:[Color.SleepInner, Color.SleepOuter]), center: .center, startRadius: 5, endRadius: 500)
                    .ignoresSafeArea()

                
                VStack {
                    
                    Spacer()
                    
                    Text("Sleep Tracker")
                        .font(.system(size: 40))
                        .bold()
                    
                    Image(systemName: "moon.stars.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding()
                    
                    Text("What time did you go to sleep?")
                        .font(.system(size: 25))
                        .padding(.top)
                        .fontWeight(.bold)
                    
                    TextField("Enter Sleep Time (HH:MM)", text: $sleepTime, onEditingChanged: { _ in
                        calculateSleepHours()
                    })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numbersAndPunctuation)
                    .padding()
                    .foregroundColor(.black)
                    
                    Text("What time did you wake up?")
                        .font(.system(size: 25))                      .padding(.top)
                        .fontWeight(.bold)
                    
                    TextField("Enter Wake Up Time (HH:MM)", text: $wakeUpTime, onEditingChanged: { _ in
                        calculateSleepHours()
                    })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numbersAndPunctuation)
                    .padding()
                    .foregroundColor(.black)
                    
                    Text(sleepMessage)
                        .font(.body)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: MeditationView()) {
                        Text("If you have trouble sleeping, click here!")
                            .font(.body)
                            .padding()
                            .background(Color(#colorLiteral(red: 0.6926626563, green: 0.7349323034, blue: 1, alpha: 1)))
                            .foregroundColor(.DarkBlue)
                            .cornerRadius(10)
                            .fontWeight(.bold)
                            
                    }
                    .padding(.top)
                    
                    Spacer()
                }
          //      .navigationBarTitle("Sleep Tracker", displayMode: .inline)
                .foregroundColor(.white)
               
                
            }
        }
    }
    
    
    func calculateSleepHours() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        guard let sleepDate = dateFormatter.date(from: sleepTime),
              let wakeUpDate = dateFormatter.date(from: wakeUpTime) else {
            sleepMessage = "Invalid time format. Please use HH:MM."
            return
        }
        
        let calendar = Calendar.current
        var adjusted = wakeUpDate
        if wakeUpDate < sleepDate {
            //  adjusted += 24
            adjusted = calendar.date(byAdding: .day, value: 1, to: wakeUpDate)!
          }
        let components = calendar.dateComponents([.hour, .minute], from: sleepDate, to: adjusted)
        
        var hours = components.hour ?? 0
        let minutes = components.minute ?? 0
        
        
        sleepHours = hours
        sleepMinutes = minutes
        
        if sleepHours >= 8 {
            sleepMessage = "You slept \(sleepHours) hours and \(sleepMinutes) minutes!\nGreat job, stay consistent and make sure your body continues to get 8 or more hours every night."
        
            
        } else {
            sleepMessage = "You slept \(sleepHours) hours and \(sleepMinutes) minutes.\nMake sure you are always getting 8 or more hours of sleep."
        }
    }
}



struct MeditationView: View {
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors:[Color.SleepInner, Color.SleepOuter]), center: .center, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            VStack {
                Text("💤 Sleep Resources 💤")
     
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            
                Text("Sleep Meditation:")
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("https://www.youtube.com/watch?v=g0jfhRcXtLQ")
                    .multilineTextAlignment(.center)
                    .padding(15)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                Text("Click on this guided 20 minute sleep meditiation to help relax your mind and body")
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing, .bottom], 30)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("Tips to Help You Fall Asleep:")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                    .fontWeight(.bold)
                
                Text("1. Lower the Room Temperature ")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("2. Try the 4-7-8 Breathing Technique")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("✧ Inhale for 4, Hold for 7, Exhale for 8")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("3. Write or Read Before Bed")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("4. Try Sleeping on Your Side")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                
            }
            
        }
    }
}
    


struct SleepTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        SleepTrackerView()
    }
}


