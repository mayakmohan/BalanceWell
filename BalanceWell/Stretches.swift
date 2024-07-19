//
//  Stretches.swift
//  BalanceWell
//
//  Created by Smita Mohan on 7/18/24.
//

import SwiftUI

struct StretchesView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                  
                RadialGradient(gradient: Gradient(colors:[Color.InnerColor, Color.OuterColor]), center: .center, startRadius: 5, endRadius: 500)
                    .ignoresSafeArea()

            VStack(spacing: 20) {
                Spacer()
                
                Text("Stretches")
                    .foregroundColor(.DarkBlue)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .bottom], 40)
                
                NavigationLink(destination: UpperBodyView()) {
                    Text("Upper Body")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.DarkBlue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .padding(.horizontal)
                        .padding(10)
                }
                
                NavigationLink(destination: LowerBodyView()) {
                    Text("Lower Body")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.DarkBlue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .padding(.horizontal)
                        .padding(10)
                }
                
                NavigationLink(destination: FullBodyView()) {
                    Text("Full Body")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.DarkBlue)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .padding(.horizontal)
                        .padding(10)
                        
                }
                
                Spacer()
                
                Image("sleepy") // Replace with your actual image name
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding(.bottom)
                
                Spacer()
            }
            .navigationBarHidden(true)
           
           
            
        }
    }
}

struct UpperBodyView: View {
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors:[Color.InnerColor, Color.OuterColor]), center: .center, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            
            ScrollView {
                
                VStack {
                    Text("Upper Body Stretches")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    Text("Below are some great stretches to release any tension, soreness, and stretch out your upper body 😊")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding([.bottom, .trailing, .leading], 20)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    
                    Text("1. Chin to Chest")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("neck1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        
                        Image("neck2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                    }
                    
                    Text("2. Wall Chest Stretch")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("wallchest")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        Image("wallchest2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("3. Wrist Extensions")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("wrist")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        Image("wrist2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("4. Oblique Stretch")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("oblique")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        Image("oblique2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("5. Neck Stretch")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("neck")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        Image("pull")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        
                    }
                    
                    Text("6. Overhead Tricep Stretch")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("tricep1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 200)
                            .padding(.bottom, 20)
                        
                        Image("tricep2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 200)
                            .padding(.bottom, 20)
                        
                    }
                    
                    
                }
                
            }
        }
    }
}

struct LowerBodyView: View {
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors:[Color.InnerColor, Color.OuterColor]), center: .center, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            
            ScrollView {
                
                VStack {
                    Text("Lower Body Stretches")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    Text("Below are some great stretches to release any tension, soreness, and stretch out your lower body 😊")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding([.bottom, .trailing, .leading], 20)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    Text("1. Butterfly/Foreward Fold")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("fold")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                           
                        
                        
                        Image("butterfly")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("2. Knee to Chest")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("kneeToChest")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("3. Standing Hamstring")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("hamstring")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        
                        Image("hamstring2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                    }
                    
                    Text("4. Standing Calf")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("calf")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        
                        Image("calf2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("5. Side Lunge")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("sideLunge")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        
                        Image("sideLunge2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("6. Hip Stretch")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("hip")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        
                        Image("hip2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                }
            }
            
        }
    }
       
    }
}

struct FullBodyView: View {
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors:[Color.InnerColor, Color.OuterColor]), center: .center, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    Text("Full Body Stretches")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    Text("Below are some great stretches to release any tension, soreness, and stretch out your full body 😊")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding([.bottom, .trailing, .leading], 20)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    
                    Text("1. Cobra")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("cobra")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
        
                    }
                    
                    Text("2. Downward Dog")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        
                        Image("downwardDog")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("3. Cat Cow")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("cat")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        Image("cow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                    }
                    
                    Text("4. Spinal Twist")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("spineTwist")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                        Image("spineTwist2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                    }
                    
                    Text("5. Stretch Up")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("stretchUp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .padding(.bottom, 20)
                        
                    }
                    
                    Text("6. Touch the Ground")
                        .font(.title2)
                        .foregroundColor(.DarkBlue)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image("touchToes")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                        
                        
                    }
                    
                    
                }
            }
            
        }
    }
}

struct StretchesView_Previews: PreviewProvider {
    static var previews: some View {
        StretchesView()
    }
}

