//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Hector Saucedo Soledad on 10/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray : Color("lightBlue"))
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)
                
                HStack(spacing: 20) {
                    let weatherData = [
                        WeatherData(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74),
                        WeatherData(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88),
                        WeatherData(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55),
                        WeatherData(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60),
                        WeatherData(dayOfWeek: "SAT", imageName: "snow", temperature: 25)
                    ]
                    
                    ForEach(weatherData, id: \.dayOfWeek) { data in
                        WeatherDayView(weather: data)
                    }
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

// MARK: - Components

struct WeatherData {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}

struct WeatherDayView: View {
    var weather: WeatherData
    
    var body: some View {
        VStack {
            Text(weather.dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
            Image(systemName: weather.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(weather.temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
