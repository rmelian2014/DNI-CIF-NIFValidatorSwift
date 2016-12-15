//
//  SwiftDNICIFNITValidator.swift
//
//  Created by Reinier Melian rmelian2014@gmail.com
//             Vladimir Sanchez Mondeja vsanchez2187@gmail.com on 12/12/16.
//

import UIKit

class SwiftDNICIFNITValidator: NSObject {
    
    //Sum digits values for Int <= 100
    static func digitsSum(_ value:Int) -> Int
    {
        var currentResult : Int = 0
        var currentValue = value

        if(currentValue <= 100 && currentValue > 10)
        {
            currentResult += currentValue%10
            currentValue /= 10
            currentResult += currentValue
            return currentResult
        }
        
        if(currentValue == 10)
        {
            currentResult += 1
            return currentResult
        }
        
        return currentResult;
    }
    
    /*
     * Tiene que recibir el dni sin espacios ni guiones
     * Esta funcion es llamada
     */
    static func validateDNI(candidateDNI:String) -> Bool
    {
        let buffer = NSMutableString(string: candidateDNI)
        let opts = NSString.CompareOptions()
        let rng = NSMakeRange(0, 1)
        buffer.replaceOccurrences(of: "X", with: "0", options: opts, range: rng)
        buffer.replaceOccurrences(of: "Y", with: "1", options: opts, range: rng)
        buffer.replaceOccurrences(of: "Z", with: "2", options: opts, range: rng)
        
        if let baseNumber = Int(buffer.substring(to: 8)) {
            let letterMap1 = "TRWAGMYFPDXBNJZSQVHLCKET"
            let letterMap2 = "TRWAGMYFPDXBNJZSQVHLCKET".lowercased()
            
            let letterIdx = baseNumber % 23
            
            //Find case sensitive letter
            var expectedLetter = letterMap1[letterMap1.index(letterMap1.startIndex, offsetBy: letterIdx)]
            var providedLetter = candidateDNI[candidateDNI.index(before: candidateDNI.endIndex)]
            
            if(expectedLetter == providedLetter){
                return true
            }else{
                expectedLetter = letterMap2[letterMap2.index(letterMap2.startIndex, offsetBy: letterIdx)]
                providedLetter = candidateDNI[candidateDNI.index(before: candidateDNI.endIndex)]
                
                return expectedLetter == providedLetter
            }
            
        } else {
            return false
        }

    }
    
    static func validateCIF(cifCandidate:String) -> Bool
    {
        if(cifCandidate.characters.count != 9)
        {
            return false
        }
        
        let valueCif = cifCandidate.substring(with: cifCandidate.index(after:cifCandidate.startIndex) ..< cifCandidate.index(before:cifCandidate.endIndex))
        var suma = 0
        
        var currIndex = valueCif.index(after:valueCif.startIndex)
        while currIndex < valueCif.endIndex {
            if(Int(valueCif.substring(with: currIndex..<valueCif.index(after: currIndex))) != nil)
            {
                suma += Int(valueCif.substring(with: currIndex..<valueCif.index(after: currIndex)))!
                currIndex = valueCif.index(currIndex, offsetBy: 2)
            }else
            {
                return false
            }
        }
        
        var suma2 = 0
        
        var currIndex2 = valueCif.startIndex
        while currIndex2 < valueCif.endIndex {
            let result = Int(valueCif.substring(with: currIndex2..<valueCif.index(after: currIndex2)))! * 2
            
            if(result > 9)
            {
                suma2 += SwiftDNICIFNITValidator.digitsSum(result)
            }else{
                suma2 += result
            }
            
            if(currIndex2 != valueCif.index(before:valueCif.endIndex))
            {
                currIndex2 = valueCif.index(currIndex2, offsetBy: 2)
            }else
            {
                break;
            }
        }
        
        let totalSum = suma + suma2
        
        let unidadStr = "\(totalSum)"
        var unidadInt = 10 - Int(unidadStr.substring(with: unidadStr.index(before: unidadStr.endIndex) ..< unidadStr.endIndex))!
        
        let primerCaracter = cifCandidate.substring(to: cifCandidate.index(after:cifCandidate.startIndex)).uppercased()
        let lastchar = cifCandidate.substring(from: cifCandidate.index(before: cifCandidate.endIndex)).uppercased()
        var lastcharchar = lastchar[lastchar.startIndex]
        if Int(lastchar) != nil
        {
            //lastcharchar = String.init(stringInterpolationSegment: UnicodeScalar(64 + Int(lastchar)!))
            lastcharchar = Character.init(UnicodeScalar(64 + Int(lastchar)!)!)
        }
        
        if("FJKNPQRSUVW".contains(primerCaracter))
        {
            //let value = String.init(stringInterpolationSegment: UnicodeScalar(64+unidadInt))
            let value = Character.init(UnicodeScalar(64+unidadInt)!)
            if(value == lastcharchar)
            {
                return true
            }
        }else if("XYZ".contains(primerCaracter))
        {
            //Se valida como un dni
            return SwiftDNICIFNITValidator.validateDNI(candidateDNI: cifCandidate);
            
        }else if("ABCDEFGHLM".contains(primerCaracter))
        {
            if(unidadInt == 10)
            {
                unidadInt = 0
            }
            
            let unidadChar = Character.init(UnicodeScalar(64 + unidadInt)!)
            let lastSubstring = cifCandidate.substring(from: cifCandidate.index(before: cifCandidate.endIndex))
            if("\(unidadInt)" == lastSubstring)
            {
                return true
            }
            
            if(unidadChar == lastSubstring[lastSubstring.startIndex])
            {
                return true
            }
        }else
        {
            return SwiftDNICIFNITValidator.validateDNI(candidateDNI: cifCandidate)
        }
        
        return false;
    }
}
