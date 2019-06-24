//
//  ListModelConverter.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 24.06.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import Foundation

class ListModelConverter {
    
    var listArray = [ListModel]()
    
    init(model toModel :ResponseModel) {
        
        var listModel = ListModel()
       
        listModel.name = "ABD DOLARI"
        listModel.buying = toModel.abdDolari.alış
        listModel.selling = toModel.abdDolari.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "EURO"
        listModel.buying = toModel.euro.alış
        listModel.selling = toModel.euro.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "İNGİLİZ STERLİNİ"
        listModel.buying = toModel.i̇ngi̇li̇zSterli̇ni̇.alış
        listModel.selling = toModel.i̇ngi̇li̇zSterli̇ni̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "KANADA DOLARI"
        listModel.buying = toModel.kanadaDolari.alış
        listModel.selling = toModel.kanadaDolari.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "AVUSTRALYA DOLARI"
        listModel.buying = toModel.avustralyaDolari.alış
        listModel.selling = toModel.avustralyaDolari.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "DANİMARKA KRONU"
        listModel.buying = toModel.dani̇markaKronu.alış
        listModel.selling = toModel.dani̇markaKronu.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "JAPON YENİ"
        listModel.buying = toModel.japonYeni̇.alış
        listModel.selling = toModel.japonYeni̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "İSVEÇ KRONU"
        listModel.buying = toModel.i̇sveçKronu.alış
        listModel.selling = toModel.i̇sveçKronu.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "İSVİÇRE FRANGI"
        listModel.buying = toModel.i̇svi̇çreFrangi.alış
        listModel.selling = toModel.i̇svi̇çreFrangi.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "KATAR RİYALİ"
        listModel.buying = toModel.katarRi̇yali̇.alış
        listModel.selling = toModel.katarRi̇yali̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "KUVEYT DİNARI"
        listModel.buying = toModel.kuveytDi̇nari.alış
        listModel.selling = toModel.kuveytDi̇nari.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "NORVEÇ KRONU"
        listModel.buying = toModel.norveçKronu.alış
        listModel.selling = toModel.norveçKronu.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "ÇİN YUANI"
        listModel.buying = toModel.çi̇nYuani.alış
        listModel.selling = toModel.çi̇nYuani.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "BULGAR LEVASI"
        listModel.buying = toModel.bulgarLevasi.alış
        listModel.selling = toModel.bulgarLevasi.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "İRAN RİYALİ"
        listModel.buying = toModel.i̇ranRi̇yali̇.alış
        listModel.selling = toModel.i̇ranRi̇yali̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "PAKİSTAN RUPİSİ"
        listModel.buying = toModel.paki̇stanRupi̇si̇.alış
        listModel.selling = toModel.paki̇stanRupi̇si̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "RUMEN LEYİ"
        listModel.buying = toModel.rumenLeyi̇.alış
        listModel.selling = toModel.rumenLeyi̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "RUS RUBLESİ"
        listModel.buying = toModel.rusRublesi̇.alış
        listModel.selling = toModel.rusRublesi̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "SUUDİ ARABİSTAN RİYALİ"
        listModel.buying = toModel.suudi̇Arabi̇stanRi̇yali̇.alış
        listModel.selling = toModel.suudi̇Arabi̇stanRi̇yali̇.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Gram Altın"
        listModel.buying = toModel.gramAltın.alış
        listModel.selling = toModel.gramAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Çeyrek Altın"
        listModel.buying = toModel.çeyrekAltın.alış
        listModel.selling = toModel.çeyrekAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Yarım Altın"
        listModel.buying = toModel.yarımAltın.alış
        listModel.selling = toModel.yarımAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Tam Altın"
        listModel.buying = toModel.tamAltın.alış
        listModel.selling = toModel.tamAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Cumhuriyet Altını"
        listModel.buying = toModel.cumhuriyetAltını.alış
        listModel.selling = toModel.cumhuriyetAltını.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "14 Ayar Altın"
        listModel.buying = toModel.the14AyarAltın.alış
        listModel.selling = toModel.the14AyarAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "18 Ayar Altın"
        listModel.buying = toModel.the18AyarAltın.alış
        listModel.selling = toModel.the18AyarAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "22 Ayar Bilezik"
        listModel.buying = toModel.the22AyarBilezik.alış
        listModel.selling = toModel.the22AyarBilezik.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Ata Altın"
        listModel.buying = toModel.ataAltın.alış
        listModel.selling = toModel.ataAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Beşli Altın"
        listModel.buying = toModel.beşliAltın.alış
        listModel.selling = toModel.beşliAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "İkibuçuk Altın"
        listModel.buying = toModel.i̇kibuçukAltın.alış
        listModel.selling = toModel.i̇kibuçukAltın.satış
        self.listArray.append(listModel)
    
        listModel = ListModel()
        listModel.name = "Gremse Altın"
        listModel.buying = toModel.gremseAltın.alış
        listModel.selling = toModel.gremseAltın.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Ons"
        listModel.buying = toModel.ons.alış
        listModel.selling = toModel.ons.satış
        self.listArray.append(listModel)
        
        listModel = ListModel()
        listModel.name = "Gümüş"
        listModel.buying = toModel.gümüş.alış
        listModel.selling = toModel.gümüş.satış
        self.listArray.append(listModel)
        
    }
    
    func getListArray() -> [ListModel] {
        
        return self.listArray
    }
    
}



