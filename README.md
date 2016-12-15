# Spanish DNI, CIF, NIE validator

# Description
This is a single class repo, intended to help with Spain DNI, CIF, NIT validation, was created because the lack of this in the internet,
we search and results are almost 0, and in Swift well we can´t find any, so we use as reference the code founded in this
web page : http://www.lawebdelprogramador.com/codigo/JavaScript/1992-Validar-un-CIF-NIF-y-DNI.html and we add some improvements

# Usage
You only need to add the SwiftDNICIFNITValidator.swift class to your project and use the static method called validateCIF this will return true if is valid or false if not

# Example
  SwiftDNICIFNITValidator.validateCIF(cifCandidate: "F08216863") will return true
  SwiftDNICIFNITValidator.validateCIF(cifCandidate: "  aaaa41d") will return false
  
# Autors
   Reinier Melian Massip email: rmelian2014@gmail.com
   
   Vladimir Sanchez Mondeja email: vsanchez2187@gmail.com on 12/12/16.
