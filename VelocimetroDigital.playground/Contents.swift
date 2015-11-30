//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int{

    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
    
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    
    }
 
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        
        var velocidadActual : (actual : Int,velocidadEnCadena : String)
        
        switch self.velocidad {
        
        case .Apagado :
            velocidadActual = (self.velocidad.rawValue , "Apagado" )
            self.velocidad = .VelocidadBaja
            
            break
            
        case .VelocidadBaja :
            velocidadActual = (self.velocidad.rawValue , "Velocidad Baja" )
            self.velocidad = .VelocidadMedia
            break
            
        case .VelocidadMedia :
            velocidadActual = (self.velocidad.rawValue , "Velocidad Media" )
            self.velocidad = .VelocidadAlta
            break
            
        case .VelocidadAlta :
            velocidadActual = (self.velocidad.rawValue , "Velocidad Alta" )
            self.velocidad = .VelocidadMedia
            
            break
            
        }
        
        return velocidadActual
    }
}


let auto = Auto()

for var x = 0 ; x < 20 ; x++
{
  let (velocidad, nombre) = auto.cambioDeVelocidad()
    print("\(x). \(velocidad), \(nombre)")

}