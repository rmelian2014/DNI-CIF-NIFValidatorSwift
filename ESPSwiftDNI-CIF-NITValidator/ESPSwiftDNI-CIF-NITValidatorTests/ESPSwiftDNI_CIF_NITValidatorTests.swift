//
//  ESPSwiftDNI_CIF_NITValidatorTests.swift
//  ESPSwiftDNI-CIF-NITValidatorTests
//
//  Created by Reinier Melian rmelian2014@gmail.com
//             Vladimir Sanchez Mondeja vsanchez2187@gmail.com on 12/12/16.
//

import XCTest
@testable import ESPSwiftDNI_CIF_NITValidator

class ESPSwiftDNI_CIF_NITValidatorTests: XCTestCase {
    
    func testSwiftDNICIFNITValidator()
    {
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "  aaaa41d") == false, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "54aaaa41d") == false, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "54") == false, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "a58818501") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateDNI(candidateDNI: "38119995w") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "F08216863") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "j22382949") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "P0200100f") == true, "wrong answer")
        //TEST VALUES GETTED FROM THIS WEBPAGE http://generadordni.es/
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "62650219J") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "35761086L") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "07348726L") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "02363193N") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "29131633V") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "14758063K") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "71499401Z") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "39718897J") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "18076940K") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "01133210T") == true, "wrong answer")
        //DNIS2
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "61404140M") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "60088333M") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "93673759A") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "94158488F") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "84208059E") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "03293480H") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "52313106C") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "20430921K") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "44535312K") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "75910828H") == true, "wrong answer")
        //NIES1
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z5208783R") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y9385597R") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z6716416F") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X6514670N") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z3294580L") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y2718340F") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z4555342J") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z4572024C") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y7613762V") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X3953244G") == true, "wrong answer")
        //NIES2
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X5965007A") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X1061446L") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X8502916T") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z4621338E") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X1699388X") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y2388638X") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X0187312T") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X8099942D") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X2936278Y") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X3685367P") == true, "wrong answer")
        //CIFS1
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "H06321491") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "C78970670") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "H24647794") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "B73081317") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "P0288479I") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "J37033826") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "D1225387H") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Q5630031B") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "J3574987H") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "D2086707C") == true, "wrong answer")
        //CIFS2
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "B55294839") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "P3547062D") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "P8406183G") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "S7959527H") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "B07080641") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "P4733466I") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "S3083156D") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "F79247318") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "S6981484F") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "V7937974I") == true, "wrong answer")
        //NIF 3
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "14540135H") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "08819047L") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "13496084Y") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "99039409Y") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "48464231B") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "32394101G") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "66383371N") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "67239784C") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "42251394A") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "64432178R") == true, "wrong answer")
        //NIE 3
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z9788982A") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X8586267E") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y4829080Z") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y3334345A") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Z5556891G") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y8340579B") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y3608498L") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "X8281577J") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y2573188P") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Y2254506Z") == true, "wrong answer")
        //CIF 3
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "A14139554") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "A55491344") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "Q7185943C") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "B47951835") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "C70587258") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "B96955224") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "E86011681") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "R4725128E") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "P7510638E") == true, "wrong answer")
        XCTAssert(SwiftDNICIFNITValidator.validateCIF(cifCandidate: "S6061053B") == true, "wrong answer")
        
    }
    
}
