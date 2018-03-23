//
//  VerbDetailsViewController.swift
//  VerbosEspanoliOS
//
//  Created by xengar on 2018-03-21.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit
//import GoogleMobileAds

public extension String
{
    func replaceFirst(_ target: String, with replace: String) -> String {
        if let range = self.range(of: target) {
            return self.replacingCharacters(in: range, with: replace)
        }
        return self
    }
    
    func replaceLast(_ target: String, with replace: String) -> String {
        return String(String(self.reversed()).replaceFirst("i", with: "í").reversed())
    }
}


// MARK: - VerbDetailsViewController
class VerbDetailsViewController: UIViewController {

    // MARK: Properties
    var verb : Verb!
    var conjugation : Conjugation!
    let speaker = Speaker("es-ES")
    
    @IBOutlet weak var infinitive : UIButton!
    @IBOutlet weak var regular : UILabel!
    @IBOutlet weak var translation : UILabel!
    @IBOutlet weak var definitionLabel : UILabel!
    @IBOutlet weak var definition : UIButton!
    @IBOutlet weak var examples : UILabel!
    @IBOutlet weak var sample1 : UIButton!
    @IBOutlet weak var sample2 : UIButton!
    @IBOutlet weak var sample3 : UIButton!
    @IBOutlet weak var image : UIImageView!
    
    @IBOutlet weak var infinitivoSimple : UIButton!
    @IBOutlet weak var infinitivoCompuesto : UIButton!
    @IBOutlet weak var participio : UIButton!
    @IBOutlet weak var gerundioSimple : UIButton!
    @IBOutlet weak var gerundioCompuesto : UIButton!
    
    @IBOutlet weak var imperativoTu : UIButton!
    @IBOutlet weak var imperativoEl : UIButton!
    @IBOutlet weak var imperativoN : UIButton!
    @IBOutlet weak var imperativoV : UIButton!
    @IBOutlet weak var imperativoEll : UIButton!
    @IBOutlet weak var imperativoNegTu : UIButton!
    @IBOutlet weak var imperativoNegEl : UIButton!
    @IBOutlet weak var imperativoNegN : UIButton!
    @IBOutlet weak var imperativoNegV : UIButton!
    @IBOutlet weak var imperativoNegEll : UIButton!
    
    @IBOutlet weak var indicativoPresenteYo : UIButton!
    @IBOutlet weak var indicativoPresenteTu : UIButton!
    @IBOutlet weak var indicativoPresenteEl : UIButton!
    @IBOutlet weak var indicativoPresenteN : UIButton!
    @IBOutlet weak var indicativoPresenteV : UIButton!
    @IBOutlet weak var indicativoPresenteEll : UIButton!
    
    @IBOutlet weak var indicativoPreteritoImperfectoYo : UIButton!
    @IBOutlet weak var indicativoPreteritoImperfectoTu : UIButton!
    @IBOutlet weak var indicativoPreteritoImperfectoEl : UIButton!
    @IBOutlet weak var indicativoPreteritoImperfectoN : UIButton!
    @IBOutlet weak var indicativoPreteritoImperfectoV : UIButton!
    @IBOutlet weak var indicativoPreteritoImperfectoEll : UIButton!
    
    @IBOutlet weak var indicativoPreteritoPerfectoSimpleYo : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoSimpleTu : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoSimpleEl : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoSimpleN : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoSimpleV : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoSimpleEll : UIButton!
    
    @IBOutlet weak var indicativoFuturoSimpleYo : UIButton!
    @IBOutlet weak var indicativoFuturoSimpleTu : UIButton!
    @IBOutlet weak var indicativoFuturoSimpleEl : UIButton!
    @IBOutlet weak var indicativoFuturoSimpleN : UIButton!
    @IBOutlet weak var indicativoFuturoSimpleV : UIButton!
    @IBOutlet weak var indicativoFuturoSimpleEll : UIButton!
    
    @IBOutlet weak var indicativoCondicionalSimpleYo : UIButton!
    @IBOutlet weak var indicativoCondicionalSimpleTu : UIButton!
    @IBOutlet weak var indicativoCondicionalSimpleEl : UIButton!
    @IBOutlet weak var indicativoCondicionalSimpleN : UIButton!
    @IBOutlet weak var indicativoCondicionalSimpleV : UIButton!
    @IBOutlet weak var indicativoCondicionalSimpleEll : UIButton!
    
    @IBOutlet weak var indicativoPreteritoPerfectoCompuestoYo : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoCompuestoTu : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoCompuestoEl : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoCompuestoN : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoCompuestoV : UIButton!
    @IBOutlet weak var indicativoPreteritoPerfectoCompuestoEll : UIButton!
    
    @IBOutlet weak var indicativoPreteritoPluscuamperfectoYo : UIButton!
    @IBOutlet weak var indicativoPreteritoPluscuamperfectoTu : UIButton!
    @IBOutlet weak var indicativoPreteritoPluscuamperfectoEl : UIButton!
    @IBOutlet weak var indicativoPreteritoPluscuamperfectoN : UIButton!
    @IBOutlet weak var indicativoPreteritoPluscuamperfectoV : UIButton!
    @IBOutlet weak var indicativoPreteritoPluscuamperfectoEll : UIButton!
    
    @IBOutlet weak var indicativoPreteritoAnteriorYo : UIButton!
    @IBOutlet weak var indicativoPreteritoAnteriorTu : UIButton!
    @IBOutlet weak var indicativoPreteritoAnteriorEl : UIButton!
    @IBOutlet weak var indicativoPreteritoAnteriorN : UIButton!
    @IBOutlet weak var indicativoPreteritoAnteriorV : UIButton!
    @IBOutlet weak var indicativoPreteritoAnteriorEll : UIButton!
    
    @IBOutlet weak var indicativoFuturoCompuestoYo : UIButton!
    @IBOutlet weak var indicativoFuturoCompuestoTu : UIButton!
    @IBOutlet weak var indicativoFuturoCompuestoEl : UIButton!
    @IBOutlet weak var indicativoFuturoCompuestoN : UIButton!
    @IBOutlet weak var indicativoFuturoCompuestoV : UIButton!
    @IBOutlet weak var indicativoFuturoCompuestoEll : UIButton!
    
    @IBOutlet weak var indicativoCondicionalCompuestoYo : UIButton!
    @IBOutlet weak var indicativoCondicionalCompuestoTu : UIButton!
    @IBOutlet weak var indicativoCondicionalCompuestoEl : UIButton!
    @IBOutlet weak var indicativoCondicionalCompuestoN : UIButton!
    @IBOutlet weak var indicativoCondicionalCompuestoV : UIButton!
    @IBOutlet weak var indicativoCondicionalCompuestoEll : UIButton!
    
    @IBOutlet weak var subjuntivoPresenteYo : UIButton!
    @IBOutlet weak var subjuntivoPresenteTu : UIButton!
    @IBOutlet weak var subjuntivoPresenteEl : UIButton!
    @IBOutlet weak var subjuntivoPresenteN : UIButton!
    @IBOutlet weak var subjuntivoPresenteV : UIButton!
    @IBOutlet weak var subjuntivoPresenteEll : UIButton!
    
    @IBOutlet weak var subjuntivoPreteritoImperfectoYo : UIButton!
    @IBOutlet weak var subjuntivoPreteritoImperfectoTu : UIButton!
    @IBOutlet weak var subjuntivoPreteritoImperfectoEl : UIButton!
    @IBOutlet weak var subjuntivoPreteritoImperfectoN : UIButton!
    @IBOutlet weak var subjuntivoPreteritoImperfectoV : UIButton!
    @IBOutlet weak var subjuntivoPreteritoImperfectoEll : UIButton!
    
    @IBOutlet weak var subjuntivoFuturoSimpleYo : UIButton!
    @IBOutlet weak var subjuntivoFuturoSimpleTu : UIButton!
    @IBOutlet weak var subjuntivoFuturoSimpleEl : UIButton!
    @IBOutlet weak var subjuntivoFuturoSimpleN : UIButton!
    @IBOutlet weak var subjuntivoFuturoSimpleV : UIButton!
    @IBOutlet weak var subjuntivoFuturoSimpleEll : UIButton!
    
    @IBOutlet weak var subjuntivoPreteritoPerfectoCompuestoYo : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPerfectoCompuestoTu : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPerfectoCompuestoEl : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPerfectoCompuestoN : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPerfectoCompuestoV : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPerfectoCompuestoEll : UIButton!
    
    @IBOutlet weak var subjuntivoPreteritoPluscuamperfectoYo : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPluscuamperfectoTu : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPluscuamperfectoEl : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPluscuamperfectoN : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPluscuamperfectoV : UIButton!
    @IBOutlet weak var subjuntivoPreteritoPluscuamperfectoEll : UIButton!
    
    @IBOutlet weak var subjuntivoFuturoCompuestoYo : UIButton!
    @IBOutlet weak var subjuntivoFuturoCompuestoTu : UIButton!
    @IBOutlet weak var subjuntivoFuturoCompuestoEl : UIButton!
    @IBOutlet weak var subjuntivoFuturoCompuestoN : UIButton!
    @IBOutlet weak var subjuntivoFuturoCompuestoV : UIButton!
    @IBOutlet weak var subjuntivoFuturoCompuestoEll : UIButton!
    
    @IBOutlet weak var stack: UIStackView!
    //var banner: GADBannerView!
    //let adUnitID : String = ViewUtils.loadAdMobKey("banner_ad_unit_id_2")
    
    deinit {
        verb = nil
        conjugation = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func setup() {
        self.title = verb.infinitive
        definitionLabel.text = NSLocalizedString("Definition", comment: "")
        examples.text = NSLocalizedString("Examples", comment: "")
        fillVerbDetails(verb)
        processConjugation(verb, conjugation)
        fillConjugationDetails(conjugation)
        //banner = ViewUtils.createAdMobBanner(self, self, adUnitID)
        
        setAdjustsFontForContentSizeCategory()
    }
    
    
    // MARK: - Verb Details
    
    private func fillVerbDetails(_ verb : Verb) {
        infinitive.setTitle(verb.infinitive, for: .normal)
        let translationLanguage = UserDefaults.standard.string(forKey: Constants.KEY_TRANSLATION_LANGUAGE)
        let lang : String = translationLanguage != nil ? translationLanguage! : Constants.ENGLISH
        translation.text = ViewUtils.getTranslation(verb, lang)
        // TODO: Set better string
        regular.text = verb.regular != 0 ? "irregular" : "regular"
        
        definition.setTitle(verb.definition, for: .normal)
        sample1.setTitle(verb.sample1, for: .normal)
        sample2.setTitle(verb.sample2, for: .normal)
        sample3.setTitle(verb.sample3, for: .normal)
        
        let verbName = ViewUtils.removeAccents(verb.infinitive)
        image.image = imageForVerb(verbName)
    }
    
    // MARK: Image for Match
    private func imageForVerb(_ infinitive : String) -> UIImage {
        // Check if resource exist
        let image = UIImage(named: "verb_" + infinitive)
        if (image != nil) {
            return image!
        } else {
            return UIImage(named: "verb_teach")!
        }
    }
    
    
    // MARK: - Verb Conjugations
    private func processConjugation(_ verb : Verb, _ c : Conjugation) {
        if (!c.infinitivoSimple.isEmpty && !c.infinitivoSimple.elementsEqual(verb.infinitive)) {
            // if we need, conjugate the verb model.
            conjugateVerb(c, verb.infinitive)
            
            // TODO: Add pronomial. Like emborracharse
        }
        addPronoms(c)
    }
    
    /**
     * Conjugates the verb according to the model.
     */
    private func conjugateVerb(_ c : Conjugation, _ verbInfinitive : String) {
        // Generate verb radicals for each time and person based on the radical's model.
        var modelRadicals = [String]()
        var verbRadicals = [String]()
        let modelRs : String = c.radicals.replacingOccurrences(of: ", ", with: ",")
        if (!modelRs.isEmpty) {
            let arrayModelRs = modelRs.split(separator: ",")
            for modelR in arrayModelRs {
                modelRadicals.append(String(modelR))
                let verbR : String = generateRadical(verbInfinitive, String(modelR), c.id)
                verbRadicals.append(verbR)
            }
            let participio = c.participio
            replaceRadicals(c, modelRadicals, verbRadicals)
            replaceParticipio(c, participio, c.participio)
        }
    }
    
    
    /**
     * Generates the verb radical based on the model.
     */
    private func generateRadical(_ infinitive : String, _ model : String, _ id : Int) -> String {
        // remove termination
        var rad : String = infinitive
        if (infinitive.hasSuffix("ar") || infinitive.hasSuffix("er") || infinitive.hasSuffix("ir")) {
            rad = String(infinitive.prefix(infinitive.count - 2))
        } else if (infinitive.hasSuffix("arse") || infinitive.hasSuffix("erse") || infinitive.hasSuffix("irse")) {
            rad = String(infinitive.prefix(infinitive.count - 4))
        }
        
        // know models
        switch (id) {
            case 5: // enviar, verbs ending -iar : aliar, amnistiar, confiar, etc.
                if (model.elementsEqual("enví")) {
                    rad = rad.replaceLast("i", with: "í")
                }
            case 6: // averiguar, verbs ending -guar, -guarse : achiguar, amortiguar, apaniguarse, etc.
                if (model.elementsEqual("averigü")) {
                    rad = rad.replaceLast("u", with: "ü")
                }
            case 7: // actuar, verbs ending -uar : acentuar, atenuar, situar, etc.
                if (model.elementsEqual("actú")) {
                    rad = rad.replaceLast("u", with: "ú")
                }
            case 9: // aislar, verbs ending -i-ar : ahijar, airar, descafeinar, etc.
                if (model.elementsEqual("aísl")) {
                    let aux = infinitive.replaceLast("i", with: "í")
                    if (aux.hasSuffix("ar")) {
                        rad = String(aux.prefix(aux.count - 2))
                    } else if (aux.hasSuffix("arse")) {
                        rad = String(aux.prefix(aux.count - 4))
                    }
                }
            case 11: // aunar, verbs ending -u-ar : ahumar, maullar, rehusar, etc.
                if (model.elementsEqual("aún")) {
                    let aux = infinitive.replaceLast("u", with: "ú")
                    if (aux.hasSuffix("ar")) {
                        rad = String(aux.prefix(aux.count - 2))
                    } else if (aux.hasSuffix("arse")) {
                        rad = String(aux.prefix(aux.count - 4))
                    }
                }
            case 13: // descafeinar, verbs ending -i-ar : airar, desahijar, sobrehilar, etc.
                if (model.elementsEqual("descafeín")) {
                    let aux = infinitive.replaceLast("i", with: "í")
                    if (aux.hasSuffix("ar")) {
                        rad = String(aux.prefix(aux.count - 2))
                    } else if (aux.hasSuffix("arse")) {
                        rad = String(aux.prefix(aux.count - 4))
                    }
                }
            case 15: // rehusar, verbs ending -u-ar : ahumar, aunar, maullar, etc.
                if (model.elementsEqual("rehús")) {
                    let aux = infinitive.replaceLast("u", with: "ú")
                    if (aux.hasSuffix("ar")) {
                        rad = String(aux.prefix(aux.count - 2))
                    } else if (aux.hasSuffix("arse")) {
                        rad = String(aux.prefix(aux.count - 4))
                    }
                }
            case 16: // acertar, verbs ending -e-ar : acrecentar, arrendar, merendar, etc.
                if (model.elementsEqual("aciert")) {
                    rad = rad.replaceLast("e", with: "ei")
                }
            case 17: // adquirir, verbs ending -i-ir : no know
                if (model.elementsEqual("adquier")) {
                    let aux = infinitive.replaceLast("i", with: "ei")
                    if (aux.hasSuffix("ir")) {
                        rad = String(aux.prefix(aux.count - 2))
                    } else if (aux.hasSuffix("irse")) {
                        rad = String(aux.prefix(aux.count - 4))
                    }
                }
            case 18: // agradecer, verbs ending -cer : abastecer, conocer, enriquecer, etc.
                if (model.elementsEqual("agradezc")) {
                    let aux = infinitive.replaceLast("c", with: "cz")
                    if (aux.hasSuffix("er")) {
                        rad = String(aux.prefix(aux.count - 2))
                    } else if (aux.hasSuffix("erse")) {
                        rad = String(aux.prefix(aux.count - 4))
                    }
                }
            case 20: // asir, verbs ending -ir : desasir, etc.
                if (model.elementsEqual("asg")) {
                    rad = rad.replaceLast("s", with: "gs")
                }
            case 21: // caber, : no known
                break
            case 23: // ceñir, verbs ending -eñir: constreñir, desceñir, estreñir, etc.
                if (model.elementsEqual("c")) {
                    if (infinitive.hasSuffix("eñir")) {
                        rad = String(infinitive.prefix(infinitive.count - 4))
                    } else if (infinitive.hasSuffix("eñirse")) {
                        rad = String(infinitive.prefix(infinitive.count - 6))
                    }
                }
            case 24: // conducir, verbs ending -ucir: deducir, introducir, reproducir, etc.
                if (model.elementsEqual("condu")) {
                    if (infinitive.hasSuffix("ucir")) {
                        rad = String(infinitive.prefix(infinitive.count - 3))
                    } else if (infinitive.hasSuffix("ucirse")) {
                        rad = String(infinitive.prefix(infinitive.count - 5))
                    }
                }
            case 26: // contar, verbs ending -o-ar: acordar, afollarse, desollar, etc.
                if (model.elementsEqual("cuent")) {
                    rad = rad.replaceLast("o", with: "eu")
                }
            case 28: // decir, verbs ending -ecir: decir, bendecir, maldecir, etc.
                if (model.elementsEqual("d")) {
                    if (infinitive.hasSuffix("ecir")) {
                        rad = String(infinitive.prefix(infinitive.count - 4))
                    } else if (infinitive.hasSuffix("ecirse")) {
                        rad = String(infinitive.prefix(infinitive.count - 6))
                    }
                }
            case 29: // discernir, verbs ending -e-ir: cernir, concernir, hendir, etc.
                if (model.elementsEqual("disciern")) {
                    rad = rad.replaceLast("e", with: "ei")
                }
            case 30: // dormir, verbs ending -o-ir: dormir, morir, premorir, etc.
                if (model.elementsEqual("durm")) {
                    rad = rad.replaceLast("o", with: "u")
                } else if (model.contains("duerm")) {
                    rad = rad.replaceLast("o", with: "eu")
                }
            case 31: // entender, verbs ending -e-er: ascender, heder, verter, etc.
                if (model.elementsEqual("entiend")) {
                    rad = rad.replaceLast("e", with: "ei")
                }
            case 32: // erguir, : no known
                break
            case 33: // errar, : no known
                break
            case 35: // haber, : no known
                break
            case 36: // hacer, verbs ending -a-er: deshacer, satisfacer, etc.
                if (model.elementsEqual("h")) {
                    if (infinitive.hasSuffix("acer")) {
                        rad = String(infinitive.prefix(infinitive.count - 4))
                    } else if (infinitive.hasSuffix("acerse")) {
                        rad = String(infinitive.prefix(infinitive.count - 6))
                    }
                }
            case 38: // jugar, no known
                break
            case 40: // lucir, verbs ending -ucir: balbucir, relucir, translucir, etc.
                if (model.elementsEqual("luzc")) {
                    rad = rad.replaceLast("c", with: "cz")
                }
            case 41: // mover, verbs ending -o-er: absolver, condolerse, llover, etc.
                if (model.elementsEqual("muev")) {
                    rad = rad.replaceLast("o", with: "eu")
                }
            case 44: // oler, no known
                break
            case 45: // pedir, verbs ending -e-ir: acomedirse, competir, vestir, etc.
                if (model.elementsEqual("pid")) {
                    rad = rad.replaceLast("e", with: "i")
                }
            case 46: // poder, no known
                break
            case 47: // poner, no known
                break
            case 48: // podrir o pudrir, verbs ending -o-ir or -u-ir: podrir, repudrir, etc.
                if (model.elementsEqual("podr")) {
                    rad = rad.replaceLast("u", with: "o")
                }
            case 49: // querer, verbs ending -querer:
                if (model.elementsEqual("qui")) {
                    if (infinitive.hasSuffix("querer")) {
                        rad = String(infinitive.prefix(infinitive.count - 4)) + "i"
                    } else if (infinitive.hasSuffix("quererse")) {
                        rad = String(infinitive.prefix(infinitive.count - 6)) + "i"
                    }
                }
            case 51: // saber, no known
                break
            case 53: // sentir, verbs ending -e-ir : advertir, arrepentirse, hervir, requerir, etc.
                if (model.elementsEqual("sint")) {
                    rad = rad.replaceLast("e", with: "i")
                } else if (model.elementsEqual("sient")) {
                    rad = rad.replaceLast("e", with: "ei")
                }
            case 55: // sonreír, verbs ending -eír : reír, engreír, freír, etc.
                if (model.elementsEqual("sonr")) {
                    rad = rad.replaceLast("e", with: "")
                }
            case 57: // tener, no know
                break
            case 60: // venir, no know
                break
            case 62: // yacer, verbs ending -acer : subyacer, etc.
                if (model.elementsEqual("ya")) {
                    rad = rad.replaceLast("c", with: "")
                }
            case 63: // sacar, verbs ending -car : abanicar, acurrucarse, alambicar, churruscar, etc.
                if (model.elementsEqual("saqu")) {
                    rad = rad.replaceLast("c", with: "uq")
                }
            case 65: // forzar, verbs ending -orzar : almorzar, disforzar, esforzar, etc.
                if (model.elementsEqual("fuerz")) {
                    rad = rad.replaceLast("o", with: "eu")
                } else if (model.elementsEqual("forc")) {
                    rad = rad.replaceLast("z", with: "c")
                } else if (model.elementsEqual("fuerc")) {
                    rad = rad.replaceLast("zro", with: "creu")
                }
            case 66: // cazar, verbs ending -zar : abalanzarse, actualizar, embozar, etc.
                if (model.elementsEqual("cac")) {
                    rad = rad.replaceLast("z", with: "c")
                }
            case 67: // coger, verbs ending -ger : absterger, desproteger, encoger, etc.
                if (model.elementsEqual("coj")) {
                    rad = rad.replaceLast("g", with: "j")
                }
            case 68: // negar, verbs ending -egar : denegar, estregar, refregar, etc.
                if (model.elementsEqual("nieg")) {
                    rad = rad.replaceLast("e", with: "ei")
                }
            case 69: // tropezar, verbs ending -e-zar : comenzar, recomenzar, etc.
                if (model.elementsEqual("tropiez")) {
                    rad = rad.replaceLast("e", with: "ei")
                } else if (model.elementsEqual("tropec")) {
                    rad = rad.replaceLast("z", with: "c")
                } else if (model.elementsEqual("tropiec")) {
                    rad = rad.replaceLast("z", with: "c")
                        .replaceLast("e", with: "ei")
                }
            case 70: // retener, verbs ending -ener : abstenerse, contener, obtener, etc.
                if (model.elementsEqual("retien")) {
                    rad = rad.replaceLast("e", with: "ei")
                } else if (model.elementsEqual("retuv")) {
                    rad = rad.replaceLast("ne", with: "vu")
                } else if (model.elementsEqual("retén")) {
                    rad = rad.replaceLast("e", with: "é")
                }
            case 71: // seguir, verbs ending -eguir : conseguir, perseguir, proseguir, etc.
                if (model.elementsEqual("sig")) {
                    rad = rad.replaceLast("uge", with: "gi")
                }
            case 72: // elegir, verbs ending -egir : corregir, reelegir, regir, etc.
                if (model.elementsEqual("elig")) {
                    rad = rad.replaceLast("e", with: "i")
                } else if (model.elementsEqual("elij")) {
                    rad = rad.replaceLast("ge", with: "ji")
                } else if (model.elementsEqual("elec")) {
                    rad = rad.replaceLast("g", with: "c")
                }
            case 73: // rugir, verbs ending -gir : convergir, exigir, surgir, etc.
                if (model.elementsEqual("ruj")) {
                    rad = rad.replaceLast("g", with: "j")
                }
            case 74: // prevenir, verbs ending -enir : avenir, provenir, sobrevenir, etc.
                if (model.elementsEqual("previn")) {
                    rad = rad.replaceLast("e", with: "i")
                } else if (model.elementsEqual("previen")) {
                    rad = rad.replaceLast("e", with: "ei")
                } else if (model.elementsEqual("prevén")) {
                    rad = rad.replaceLast("e", with: "é")
                }
            case 75: // reponer, verbs ending -oner : componer, exponer, suponer, etc.
                if (model.elementsEqual("repu")) {
                    rad = rad.replaceLast("no", with: "u")
                } else if (model.elementsEqual("repón")) {
                    rad = rad.replaceLast("o", with: "ó")
                }
            case 76: // mecer, verbs ending -cer : coercer, convencer, vencer, etc.
                if (model.elementsEqual("mez")) {
                    rad = rad.replaceLast("c", with: "z")
                }
            default:
                break
        }
        
        return rad
    }
    
    private func replaceRadicals(_ c: Conjugation, _ modelR: [String], _ verbR: [String]) {
        c.infinitivoSimple = verb.infinitive
        c.participio = replaceRadical(c.participio, modelR, verbR)
        c.gerundioSimple = replaceRadical(c.gerundioSimple, modelR, verbR)
    
    
        c.imperativoTu = replaceRadical(c.imperativoTu, modelR, verbR)
        c.imperativoEl = replaceRadical(c.imperativoEl, modelR, verbR)
        c.imperativoN = replaceRadical(c.imperativoN, modelR, verbR)
        c.imperativoV = replaceRadical(c.imperativoV, modelR, verbR)
        c.imperativoEll = replaceRadical(c.imperativoEll, modelR, verbR)
    
        c.imperativoNegTu = replaceRadical(c.imperativoNegTu, modelR, verbR)
        c.imperativoNegEl = replaceRadical(c.imperativoNegEl, modelR, verbR)
        c.imperativoNegN = replaceRadical(c.imperativoNegN, modelR, verbR)
        c.imperativoNegV = replaceRadical(c.imperativoNegV, modelR, verbR)
        c.imperativoNegEll = replaceRadical(c.imperativoNegEll, modelR, verbR)
    
    
        c.indicativoPresenteYo = replaceRadical(c.indicativoPresenteYo, modelR, verbR)
        c.indicativoPresenteTu = replaceRadical(c.indicativoPresenteTu, modelR, verbR)
        c.indicativoPresenteEl = replaceRadical(c.indicativoPresenteEl, modelR, verbR)
        c.indicativoPresenteN = replaceRadical(c.indicativoPresenteN, modelR, verbR)
        c.indicativoPresenteV = replaceRadical(c.indicativoPresenteV, modelR, verbR)
        c.indicativoPresenteEll = replaceRadical(c.indicativoPresenteEll, modelR, verbR)
    
        c.indicativoPreteritoImperfectoYo = replaceRadical(c.indicativoPreteritoImperfectoYo, modelR, verbR)
        c.indicativoPreteritoImperfectoTu = replaceRadical(c.indicativoPreteritoImperfectoTu, modelR, verbR)
        c.indicativoPreteritoImperfectoEl = replaceRadical(c.indicativoPreteritoImperfectoEl, modelR, verbR)
        c.indicativoPreteritoImperfectoN = replaceRadical(c.indicativoPreteritoImperfectoN, modelR, verbR)
        c.indicativoPreteritoImperfectoV = replaceRadical(c.indicativoPreteritoImperfectoV, modelR, verbR)
        c.indicativoPreteritoImperfectoEll = replaceRadical(c.indicativoPreteritoImperfectoEll, modelR, verbR)
    
        c.indicativoPreteritoPerfectoSimpleYo = replaceRadical(c.indicativoPreteritoPerfectoSimpleYo, modelR, verbR)
        c.indicativoPreteritoPerfectoSimpleTu = replaceRadical(c.indicativoPreteritoPerfectoSimpleTu, modelR, verbR)
        c.indicativoPreteritoPerfectoSimpleEl = replaceRadical(c.indicativoPreteritoPerfectoSimpleEl, modelR, verbR)
        c.indicativoPreteritoPerfectoSimpleN = replaceRadical(c.indicativoPreteritoPerfectoSimpleN, modelR, verbR)
        c.indicativoPreteritoPerfectoSimpleV = replaceRadical(c.indicativoPreteritoPerfectoSimpleV, modelR, verbR)
        c.indicativoPreteritoPerfectoSimpleEll = replaceRadical(c.indicativoPreteritoPerfectoSimpleEll, modelR, verbR)
    
        c.indicativoFuturoSimpleYo = replaceRadical(c.indicativoFuturoSimpleYo, modelR, verbR)
        c.indicativoFuturoSimpleTu = replaceRadical(c.indicativoFuturoSimpleTu, modelR, verbR)
        c.indicativoFuturoSimpleEl = replaceRadical(c.indicativoFuturoSimpleEl, modelR, verbR)
        c.indicativoFuturoSimpleN = replaceRadical(c.indicativoFuturoSimpleN, modelR, verbR)
        c.indicativoFuturoSimpleV = replaceRadical(c.indicativoFuturoSimpleV, modelR, verbR)
        c.indicativoFuturoSimpleEll = replaceRadical(c.indicativoFuturoSimpleEll, modelR, verbR)
    
        c.indicativoCondicionalSimpleYo = replaceRadical(c.indicativoCondicionalSimpleYo, modelR, verbR)
        c.indicativoCondicionalSimpleTu = replaceRadical(c.indicativoCondicionalSimpleTu, modelR, verbR)
        c.indicativoCondicionalSimpleEl = replaceRadical(c.indicativoCondicionalSimpleEl, modelR, verbR)
        c.indicativoCondicionalSimpleN = replaceRadical(c.indicativoCondicionalSimpleN, modelR, verbR)
        c.indicativoCondicionalSimpleV = replaceRadical(c.indicativoCondicionalSimpleV, modelR, verbR)
        c.indicativoCondicionalSimpleEll = replaceRadical(c.indicativoCondicionalSimpleEll, modelR, verbR)
    
    
        c.subjuntivoPresenteYo = replaceRadical(c.subjuntivoPresenteYo, modelR, verbR)
        c.subjuntivoPresenteTu = replaceRadical(c.subjuntivoPresenteTu, modelR, verbR)
        c.subjuntivoPresenteEl = replaceRadical(c.subjuntivoPresenteEl, modelR, verbR)
        c.subjuntivoPresenteN = replaceRadical(c.subjuntivoPresenteN, modelR, verbR)
        c.subjuntivoPresenteV = replaceRadical(c.subjuntivoPresenteV, modelR, verbR)
        c.subjuntivoPresenteEll = replaceRadical(c.subjuntivoPresenteEll, modelR, verbR)
    
        c.subjuntivoPreteritoImperfectoYo = replaceRadical(c.subjuntivoPreteritoImperfectoYo, modelR, verbR)
        c.subjuntivoPreteritoImperfectoTu = replaceRadical(c.subjuntivoPreteritoImperfectoTu, modelR, verbR)
        c.subjuntivoPreteritoImperfectoEl = replaceRadical(c.subjuntivoPreteritoImperfectoEl, modelR, verbR)
        c.subjuntivoPreteritoImperfectoN = replaceRadical(c.subjuntivoPreteritoImperfectoN, modelR, verbR)
        c.subjuntivoPreteritoImperfectoV = replaceRadical(c.subjuntivoPreteritoImperfectoV, modelR, verbR)
        c.subjuntivoPreteritoImperfectoEll = replaceRadical(c.subjuntivoPreteritoImperfectoEll, modelR, verbR)
    
        c.subjuntivoFuturoSimpleYo = replaceRadical(c.subjuntivoFuturoSimpleYo, modelR, verbR)
        c.subjuntivoFuturoSimpleTu = replaceRadical(c.subjuntivoFuturoSimpleTu, modelR, verbR)
        c.subjuntivoFuturoSimpleEl = replaceRadical(c.subjuntivoFuturoSimpleEl, modelR, verbR)
        c.subjuntivoFuturoSimpleN = replaceRadical(c.subjuntivoFuturoSimpleN, modelR, verbR)
        c.subjuntivoFuturoSimpleV = replaceRadical(c.subjuntivoFuturoSimpleV, modelR, verbR)
        c.subjuntivoFuturoSimpleEll = replaceRadical(c.subjuntivoFuturoSimpleEll, modelR, verbR)
    }
    
    private func replaceRadical(_ text: String, _ modelR: [String], _ verbR: [String]) -> String {
        var newText = text
        var radicalM:String
        var radicalV:String
        for i in 0 ..< modelR.count {
            radicalM = modelR[i]
            radicalV = verbR[i]
            if (!radicalM.isEmpty && !radicalV.isEmpty && text.contains(radicalM)) {
                // There could be 3 radicals at most.
                if (text.contains(" o ")) {
                    // forms like: 'yo roo o roigo o royo'  or 'yo temiera o temiese'
                    newText = newText.replacingOccurrences(of: " o \(radicalM)", with: " o \(radicalV)")
                } else if (text.hasSuffix(")")){
                
                    // Know exceptions
                    // Model 26 contar - 'tu cuentas (contás)' both radicals in the same line
                    // Model 71 seguir - 'tu sigues (seguís)' both radicals in the same line
                    let ignore = radicalM.elementsEqual("cont")
                        || radicalM.elementsEqual("segu")
                    
                    if (!ignore) {
                        // forms like: 'tu temes (temés)'
                        newText = newText.replaceFirst("(" + radicalM, with: "(" + radicalV)
                    }
                }
                newText = newText.replaceFirst(radicalM, with: radicalV)
            }
        }
        return newText
    }
    
    private func replaceParticipio(_ c: Conjugation, _ old: String, _ new: String) {
        c.infinitivoCompuesto = c.infinitivoCompuesto.replacingOccurrences(of: old, with: new)
        c.gerundioCompuesto = c.gerundioCompuesto.replacingOccurrences(of: old, with: new)
    
        c.indicativoPreteritoPerfectoCompuestoYo = c.indicativoPreteritoPerfectoCompuestoYo.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPerfectoCompuestoTu = c.indicativoPreteritoPerfectoCompuestoTu.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPerfectoCompuestoEl = c.indicativoPreteritoPerfectoCompuestoEl.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPerfectoCompuestoN = c.indicativoPreteritoPerfectoCompuestoN.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPerfectoCompuestoV = c.indicativoPreteritoPerfectoCompuestoV.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPerfectoCompuestoEll = c.indicativoPreteritoPerfectoCompuestoEll.replacingOccurrences(of: old, with: new)
    
        c.indicativoPreteritoPluscuamperfectoYo = c.indicativoPreteritoPluscuamperfectoYo.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPluscuamperfectoTu = c.indicativoPreteritoPluscuamperfectoTu.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPluscuamperfectoEl = c.indicativoPreteritoPluscuamperfectoEl.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPluscuamperfectoN = c.indicativoPreteritoPluscuamperfectoN.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPluscuamperfectoV = c.indicativoPreteritoPluscuamperfectoV.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoPluscuamperfectoEll = c.indicativoPreteritoPluscuamperfectoEll.replacingOccurrences(of: old, with: new)
    
        c.indicativoPreteritoAnteriorYo = c.indicativoPreteritoAnteriorYo.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoAnteriorTu = c.indicativoPreteritoAnteriorTu.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoAnteriorEl = c.indicativoPreteritoAnteriorEl.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoAnteriorN = c.indicativoPreteritoAnteriorN.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoAnteriorV = c.indicativoPreteritoAnteriorV.replacingOccurrences(of: old, with: new)
        c.indicativoPreteritoAnteriorEll = c.indicativoPreteritoAnteriorEll.replacingOccurrences(of: old, with: new)
    
        c.indicativoFuturoCompuestoYo = c.indicativoFuturoCompuestoYo.replacingOccurrences(of: old, with: new)
        c.indicativoFuturoCompuestoTu = c.indicativoFuturoCompuestoTu.replacingOccurrences(of: old, with: new)
        c.indicativoFuturoCompuestoEl = c.indicativoFuturoCompuestoEl.replacingOccurrences(of: old, with: new)
        c.indicativoFuturoCompuestoN = c.indicativoFuturoCompuestoN.replacingOccurrences(of: old, with: new)
        c.indicativoFuturoCompuestoV = c.indicativoFuturoCompuestoV.replacingOccurrences(of: old, with: new)
        c.indicativoFuturoCompuestoEll = c.indicativoFuturoCompuestoEll.replacingOccurrences(of: old, with: new)
    
        c.indicativoCondicionalCompuestoYo = c.indicativoCondicionalCompuestoYo.replacingOccurrences(of: old, with: new)
        c.indicativoCondicionalCompuestoTu = c.indicativoCondicionalCompuestoTu.replacingOccurrences(of: old, with: new)
        c.indicativoCondicionalCompuestoEl = c.indicativoCondicionalCompuestoEl.replacingOccurrences(of: old, with: new)
        c.indicativoCondicionalCompuestoN = c.indicativoCondicionalCompuestoN.replacingOccurrences(of: old, with: new)
        c.indicativoCondicionalCompuestoV = c.indicativoCondicionalCompuestoV.replacingOccurrences(of: old, with: new)
        c.indicativoCondicionalCompuestoEll = c.indicativoCondicionalCompuestoEll.replacingOccurrences(of: old, with: new)
    
        c.subjuntivoPreteritoPerfectoCompuestoYo = c.subjuntivoPreteritoPerfectoCompuestoYo.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPerfectoCompuestoTu = c.subjuntivoPreteritoPerfectoCompuestoTu.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPerfectoCompuestoEl = c.subjuntivoPreteritoPerfectoCompuestoEl.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPerfectoCompuestoN = c.subjuntivoPreteritoPerfectoCompuestoN.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPerfectoCompuestoV = c.subjuntivoPreteritoPerfectoCompuestoV.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPerfectoCompuestoEll = c.subjuntivoPreteritoPerfectoCompuestoEll.replacingOccurrences(of: old, with: new)
    
        c.subjuntivoPreteritoPluscuamperfectoYo = c.subjuntivoPreteritoPluscuamperfectoYo.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPluscuamperfectoTu = c.subjuntivoPreteritoPluscuamperfectoTu.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPluscuamperfectoEl = c.subjuntivoPreteritoPluscuamperfectoEl.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPluscuamperfectoN = c.subjuntivoPreteritoPluscuamperfectoN.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPluscuamperfectoV = c.subjuntivoPreteritoPluscuamperfectoV.replacingOccurrences(of: old, with: new)
        c.subjuntivoPreteritoPluscuamperfectoEll = c.subjuntivoPreteritoPluscuamperfectoEll.replacingOccurrences(of: old, with: new)
    
        c.subjuntivoFuturoCompuestoYo = c.subjuntivoFuturoCompuestoYo.replacingOccurrences(of: old, with: new)
        c.subjuntivoFuturoCompuestoTu = c.subjuntivoFuturoCompuestoTu.replacingOccurrences(of: old, with: new)
        c.subjuntivoFuturoCompuestoEl = c.subjuntivoFuturoCompuestoEl.replacingOccurrences(of: old, with: new)
        c.subjuntivoFuturoCompuestoN = c.subjuntivoFuturoCompuestoN.replacingOccurrences(of: old, with: new)
        c.subjuntivoFuturoCompuestoV = c.subjuntivoFuturoCompuestoV.replacingOccurrences(of: old, with: new)
        c.subjuntivoFuturoCompuestoEll = c.subjuntivoFuturoCompuestoEll.replacingOccurrences(of: old, with: new)
    }
    
    
    private func addPronoms(_ c: Conjugation) {
        // TODO: Show pronoms in different color
        addPronomsIndicativoPresente(c)
        addPronomsIndicativoPreteritoPerfectoCompuesto(c)
        addPronomsIndicativoPreteritoImperfecto(c)
        addPronomsIndicativoPreteritoPluscuamperfecto(c)
        addPronomsIndicativoPreteritoPerfectoSimple(c)
        addPronomsIndicativoPreteritoAnterior(c)
        addPronomsIndicativoFuturoSimple(c)
        addPronomsIndicativoFuturoCompuesto(c)
        addPronomsIndicativoCondicionalSimple(c)
        addPronomsIndicativoCondicionalCompuesto(c)
    
        addPronomsSubjuntivoPresente(c)
        addPronomsSubjuntivoPreteritoPerfectoCompuesto(c)
        addPronomsSubjuntivoPreteritoImperfecto(c)
        addPronomsSubjuntivoPreteritoPluscuamperfecto(c)
        addPronomsSubjuntivoFuturoSimple(c)
        addPronomsSubjuntivoFuturoCompuesto(c)
    }
    
    private func addPronomsIndicativoPresente(_ c: Conjugation) {
        if (!c.indicativoPresenteYo.elementsEqual("-")) {
            c.indicativoPresenteYo = Constants.YO + c.indicativoPresenteYo
        }
        if (!c.indicativoPresenteTu.elementsEqual("-")) {
            c.indicativoPresenteTu = Constants.TU + c.indicativoPresenteTu
        }
        if (!c.indicativoPresenteEl.elementsEqual("-")) {
            c.indicativoPresenteEl = Constants.EL + c.indicativoPresenteEl
        }
        if (!c.indicativoPresenteN.elementsEqual("-")) {
            c.indicativoPresenteN = Constants.NOSOTROS + c.indicativoPresenteN
        }
        if (!c.indicativoPresenteV.elementsEqual("-")) {
            c.indicativoPresenteV = Constants.VOSOTROS + c.indicativoPresenteV
        }
        if (!c.indicativoPresenteEll.elementsEqual("-")) {
            c.indicativoPresenteEll = Constants.ELLOS + c.indicativoPresenteEll
        }
    }
    
    private func addPronomsIndicativoPreteritoPerfectoCompuesto(_ c: Conjugation) {
        if (!c.indicativoPreteritoPerfectoCompuestoYo.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoCompuestoYo = Constants.YO + c.indicativoPreteritoPerfectoCompuestoYo
        }
        if (!c.indicativoPreteritoPerfectoCompuestoTu.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoCompuestoTu = Constants.TU + c.indicativoPreteritoPerfectoCompuestoTu
        }
        if (!c.indicativoPreteritoPerfectoCompuestoEl.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoCompuestoEl = Constants.EL + c.indicativoPreteritoPerfectoCompuestoEl
        }
        if (!c.indicativoPreteritoPerfectoCompuestoN.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoCompuestoN = Constants.NOSOTROS + c.indicativoPreteritoPerfectoCompuestoN
        }
        if (!c.indicativoPreteritoPerfectoCompuestoV.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoCompuestoV = Constants.VOSOTROS + c.indicativoPreteritoPerfectoCompuestoV
        }
        if (!c.indicativoPreteritoPerfectoCompuestoEll.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoCompuestoEll = Constants.ELLOS + c.indicativoPreteritoPerfectoCompuestoEll
        }
    }
    
    private func addPronomsIndicativoPreteritoImperfecto(_ c: Conjugation) {
        if (!c.indicativoPreteritoImperfectoYo.elementsEqual("-")) {
            c.indicativoPreteritoImperfectoYo = Constants.YO + c.indicativoPreteritoImperfectoYo
        }
        if (!c.indicativoPreteritoImperfectoTu.elementsEqual("-")) {
            c.indicativoPreteritoImperfectoTu = Constants.TU + c.indicativoPreteritoImperfectoTu
        }
        if (!c.indicativoPreteritoImperfectoEl.elementsEqual("-")) {
            c.indicativoPreteritoImperfectoEl = Constants.EL + c.indicativoPreteritoImperfectoEl
        }
        if (!c.indicativoPreteritoImperfectoN.elementsEqual("-")) {
            c.indicativoPreteritoImperfectoN = Constants.NOSOTROS + c.indicativoPreteritoImperfectoN
        }
        if (!c.indicativoPreteritoImperfectoV.elementsEqual("-")) {
            c.indicativoPreteritoImperfectoV = Constants.VOSOTROS + c.indicativoPreteritoImperfectoV
        }
        if (!c.indicativoPreteritoImperfectoEll.elementsEqual("-")) {
            c.indicativoPreteritoImperfectoEll = Constants.ELLOS + c.indicativoPreteritoImperfectoEll
        }
    }
    
    private func addPronomsIndicativoPreteritoPluscuamperfecto(_ c: Conjugation) {
        if (!c.indicativoPreteritoPluscuamperfectoYo.elementsEqual("-")) {
            c.indicativoPreteritoPluscuamperfectoYo = Constants.YO + c.indicativoPreteritoPluscuamperfectoYo
        }
        if (!c.indicativoPreteritoPluscuamperfectoTu.elementsEqual("-")) {
            c.indicativoPreteritoPluscuamperfectoTu = Constants.TU + c.indicativoPreteritoPluscuamperfectoTu
        }
        if (!c.indicativoPreteritoPluscuamperfectoEl.elementsEqual("-")) {
            c.indicativoPreteritoPluscuamperfectoEl = Constants.EL + c.indicativoPreteritoPluscuamperfectoEl
        }
        if (!c.indicativoPreteritoPluscuamperfectoN.elementsEqual("-")) {
            c.indicativoPreteritoPluscuamperfectoN = Constants.NOSOTROS + c.indicativoPreteritoPluscuamperfectoN
        }
        if (!c.indicativoPreteritoPluscuamperfectoV.elementsEqual("-")) {
            c.indicativoPreteritoPluscuamperfectoV = Constants.VOSOTROS + c.indicativoPreteritoPluscuamperfectoV
        }
        if (!c.indicativoPreteritoPluscuamperfectoEll.elementsEqual("-")) {
            c.indicativoPreteritoPluscuamperfectoEll = Constants.ELLOS + c.indicativoPreteritoPluscuamperfectoEll
        }
    }
    
    private func addPronomsIndicativoPreteritoPerfectoSimple(_ c: Conjugation) {
        if (!c.indicativoPreteritoPerfectoSimpleYo.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoSimpleYo = Constants.YO + c.indicativoPreteritoPerfectoSimpleYo
        }
        if (!c.indicativoPreteritoPerfectoSimpleTu.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoSimpleTu = Constants.TU + c.indicativoPreteritoPerfectoSimpleTu
        }
        if (!c.indicativoPreteritoPerfectoSimpleEl.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoSimpleEl = Constants.EL + c.indicativoPreteritoPerfectoSimpleEl
        }
        if (!c.indicativoPreteritoPerfectoSimpleN.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoSimpleN = Constants.NOSOTROS + c.indicativoPreteritoPerfectoSimpleN
        }
        if (!c.indicativoPreteritoPerfectoSimpleV.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoSimpleV = Constants.VOSOTROS + c.indicativoPreteritoPerfectoSimpleV
        }
        if (!c.indicativoPreteritoPerfectoSimpleEll.elementsEqual("-")) {
            c.indicativoPreteritoPerfectoSimpleEll = Constants.ELLOS + c.indicativoPreteritoPerfectoSimpleEll
        }
    }
    
    private func addPronomsIndicativoPreteritoAnterior(_ c: Conjugation) {
        if (!c.indicativoPreteritoAnteriorYo.elementsEqual("-")) {
            c.indicativoPreteritoAnteriorYo = Constants.YO + c.indicativoPreteritoAnteriorYo
        }
        if (!c.indicativoPreteritoAnteriorTu.elementsEqual("-")) {
            c.indicativoPreteritoAnteriorTu = Constants.TU + c.indicativoPreteritoAnteriorTu
        }
        if (!c.indicativoPreteritoAnteriorEl.elementsEqual("-")) {
            c.indicativoPreteritoAnteriorEl = Constants.EL + c.indicativoPreteritoAnteriorEl
        }
        if (!c.indicativoPreteritoAnteriorN.elementsEqual("-")) {
            c.indicativoPreteritoAnteriorN = Constants.NOSOTROS + c.indicativoPreteritoAnteriorN
        }
        if (!c.indicativoPreteritoAnteriorV.elementsEqual("-")) {
            c.indicativoPreteritoAnteriorV = Constants.VOSOTROS + c.indicativoPreteritoAnteriorV
        }
        if (!c.indicativoPreteritoAnteriorEll.elementsEqual("-")) {
            c.indicativoPreteritoAnteriorEll = Constants.ELLOS + c.indicativoPreteritoAnteriorEll
        }
    }
    
    private func addPronomsIndicativoFuturoSimple(_ c: Conjugation) {
        if (!c.indicativoFuturoSimpleYo.elementsEqual("-")) {
            c.indicativoFuturoSimpleYo = Constants.YO + c.indicativoFuturoSimpleYo
        }
        if (!c.indicativoFuturoSimpleTu.elementsEqual("-")) {
            c.indicativoFuturoSimpleTu = Constants.TU + c.indicativoFuturoSimpleTu
        }
        if (!c.indicativoFuturoSimpleEl.elementsEqual("-")) {
            c.indicativoFuturoSimpleEl = Constants.EL + c.indicativoFuturoSimpleEl
        }
        if (!c.indicativoFuturoSimpleN.elementsEqual("-")) {
            c.indicativoFuturoSimpleN = Constants.NOSOTROS + c.indicativoFuturoSimpleN
        }
        if (!c.indicativoFuturoSimpleV.elementsEqual("-")) {
            c.indicativoFuturoSimpleV = Constants.VOSOTROS + c.indicativoFuturoSimpleV
        }
        if (!c.indicativoFuturoSimpleEll.elementsEqual("-")) {
            c.indicativoFuturoSimpleEll = Constants.ELLOS + c.indicativoFuturoSimpleEll
        }
    }
    
    private func addPronomsIndicativoFuturoCompuesto(_ c: Conjugation) {
        if (!c.indicativoFuturoCompuestoYo.elementsEqual("-")) {
            c.indicativoFuturoCompuestoYo = Constants.YO + c.indicativoFuturoCompuestoYo
        }
        if (!c.indicativoFuturoCompuestoTu.elementsEqual("-")) {
            c.indicativoFuturoCompuestoTu = Constants.TU + c.indicativoFuturoCompuestoTu
        }
        if (!c.indicativoFuturoCompuestoEl.elementsEqual("-")) {
            c.indicativoFuturoCompuestoEl = Constants.EL + c.indicativoFuturoCompuestoEl
        }
        if (!c.indicativoFuturoCompuestoN.elementsEqual("-")) {
            c.indicativoFuturoCompuestoN = Constants.NOSOTROS + c.indicativoFuturoCompuestoN
        }
        if (!c.indicativoFuturoCompuestoV.elementsEqual("-")) {
            c.indicativoFuturoCompuestoV = Constants.VOSOTROS + c.indicativoFuturoCompuestoV
        }
        if (!c.indicativoFuturoCompuestoEll.elementsEqual("-")) {
            c.indicativoFuturoCompuestoEll = Constants.ELLOS + c.indicativoFuturoCompuestoEll
        }
    }
    
    private func addPronomsIndicativoCondicionalSimple(_ c: Conjugation) {
        if (!c.indicativoCondicionalSimpleYo.elementsEqual("-")) {
            c.indicativoCondicionalSimpleYo = Constants.YO + c.indicativoCondicionalSimpleYo
        }
        if (!c.indicativoCondicionalSimpleTu.elementsEqual("-")) {
            c.indicativoCondicionalSimpleTu = Constants.TU + c.indicativoCondicionalSimpleTu
        }
        if (!c.indicativoCondicionalSimpleEl.elementsEqual("-")) {
            c.indicativoCondicionalSimpleEl = Constants.EL + c.indicativoCondicionalSimpleEl
        }
        if (!c.indicativoCondicionalSimpleN.elementsEqual("-")) {
            c.indicativoCondicionalSimpleN = Constants.NOSOTROS + c.indicativoCondicionalSimpleN
        }
        if (!c.indicativoCondicionalSimpleV.elementsEqual("-")) {
            c.indicativoCondicionalSimpleV = Constants.VOSOTROS + c.indicativoCondicionalSimpleV
        }
        if (!c.indicativoCondicionalSimpleEll.elementsEqual("-")) {
            c.indicativoCondicionalSimpleEll = Constants.ELLOS + c.indicativoCondicionalSimpleEll
        }
    }
    
    private func addPronomsIndicativoCondicionalCompuesto(_ c: Conjugation) {
        if (!c.indicativoCondicionalCompuestoYo.elementsEqual("-")) {
            c.indicativoCondicionalCompuestoYo = Constants.YO + c.indicativoCondicionalCompuestoYo
        }
        if (!c.indicativoCondicionalCompuestoTu.elementsEqual("-")) {
            c.indicativoCondicionalCompuestoTu = Constants.TU + c.indicativoCondicionalCompuestoTu
        }
        if (!c.indicativoCondicionalCompuestoEl.elementsEqual("-")) {
            c.indicativoCondicionalCompuestoEl = Constants.EL + c.indicativoCondicionalCompuestoEl
        }
        if (!c.indicativoCondicionalCompuestoN.elementsEqual("-")) {
            c.indicativoCondicionalCompuestoN = Constants.NOSOTROS + c.indicativoCondicionalCompuestoN
        }
        if (!c.indicativoCondicionalCompuestoV.elementsEqual("-")) {
            c.indicativoCondicionalCompuestoV = Constants.VOSOTROS + c.indicativoCondicionalCompuestoV
        }
        if (!c.indicativoCondicionalCompuestoEll.elementsEqual("-")) {
            c.indicativoCondicionalCompuestoEll = Constants.ELLOS + c.indicativoCondicionalCompuestoEll
        }
    }
    
    private func addPronomsSubjuntivoPresente(_ c: Conjugation) {
        if (!c.subjuntivoPresenteYo.elementsEqual("-")) {
            c.subjuntivoPresenteYo = Constants.QUE + Constants.YO + c.subjuntivoPresenteYo
        }
        if (!c.subjuntivoPresenteTu.elementsEqual("-")) {
            c.subjuntivoPresenteTu = Constants.QUE + Constants.TU + c.subjuntivoPresenteTu
        }
        if (!c.subjuntivoPresenteEl.elementsEqual("-")) {
            c.subjuntivoPresenteEl = Constants.QUE + Constants.EL + c.subjuntivoPresenteEl
        }
        if (!c.subjuntivoPresenteN.elementsEqual("-")) {
            c.subjuntivoPresenteN = Constants.QUE + Constants.NOSOTROS + c.subjuntivoPresenteN
        }
        if (!c.subjuntivoPresenteV.elementsEqual("-")) {
            c.subjuntivoPresenteV = Constants.QUE + Constants.VOSOTROS + c.subjuntivoPresenteV
        }
        if (!c.subjuntivoPresenteEll.elementsEqual("-")) {
            c.subjuntivoPresenteEll = Constants.QUE + Constants.ELLOS + c.subjuntivoPresenteEll
        }
    }
    
    private func addPronomsSubjuntivoPreteritoPerfectoCompuesto(_ c: Conjugation) {
        if (!c.subjuntivoPreteritoPerfectoCompuestoYo.elementsEqual("-")) {
            c.subjuntivoPreteritoPerfectoCompuestoYo = Constants.QUE + Constants.YO + c.subjuntivoPreteritoPerfectoCompuestoYo
        }
        if (!c.subjuntivoPreteritoPerfectoCompuestoTu.elementsEqual("-")) {
            c.subjuntivoPreteritoPerfectoCompuestoTu = Constants.QUE + Constants.TU + c.subjuntivoPreteritoPerfectoCompuestoTu
        }
        if (!c.subjuntivoPreteritoPerfectoCompuestoEl.elementsEqual("-")) {
            c.subjuntivoPreteritoPerfectoCompuestoEl = Constants.QUE + Constants.EL + c.subjuntivoPreteritoPerfectoCompuestoEl
        }
        if (!c.subjuntivoPreteritoPerfectoCompuestoN.elementsEqual("-")) {
            c.subjuntivoPreteritoPerfectoCompuestoN = Constants.QUE + Constants.NOSOTROS + c.subjuntivoPreteritoPerfectoCompuestoN
        }
        if (!c.subjuntivoPreteritoPerfectoCompuestoV.elementsEqual("-")) {
            c.subjuntivoPreteritoPerfectoCompuestoV = Constants.QUE + Constants.VOSOTROS + c.subjuntivoPreteritoPerfectoCompuestoV
        }
        if (!c.subjuntivoPreteritoPerfectoCompuestoEll.elementsEqual("-")) {
            c.subjuntivoPreteritoPerfectoCompuestoEll = Constants.QUE + Constants.ELLOS + c.subjuntivoPreteritoPerfectoCompuestoEll
        }
    }
    
    private func addPronomsSubjuntivoPreteritoImperfecto(_ c: Conjugation) {
        if (!c.subjuntivoPreteritoImperfectoYo.elementsEqual("-")) {
            c.subjuntivoPreteritoImperfectoYo = Constants.QUE + Constants.YO + c.subjuntivoPreteritoImperfectoYo
        }
        if (!c.subjuntivoPreteritoImperfectoTu.elementsEqual("-")) {
            c.subjuntivoPreteritoImperfectoTu = Constants.QUE + Constants.TU + c.subjuntivoPreteritoImperfectoTu
        }
        if (!c.subjuntivoPreteritoImperfectoEl.elementsEqual("-")) {
            c.subjuntivoPreteritoImperfectoEl = Constants.QUE + Constants.EL + c.subjuntivoPreteritoImperfectoEl
        }
        if (!c.subjuntivoPreteritoImperfectoN.elementsEqual("-")) {
            c.subjuntivoPreteritoImperfectoN = Constants.QUE + Constants.NOSOTROS + c.subjuntivoPreteritoImperfectoN
        }
        if (!c.subjuntivoPreteritoImperfectoV.elementsEqual("-")) {
            c.subjuntivoPreteritoImperfectoV = Constants.QUE + Constants.VOSOTROS + c.subjuntivoPreteritoImperfectoV
        }
        if (!c.subjuntivoPreteritoImperfectoEll.elementsEqual("-")) {
            c.subjuntivoPreteritoImperfectoEll = Constants.QUE + Constants.ELLOS + c.subjuntivoPreteritoImperfectoEll
        }
    }
    
    private func addPronomsSubjuntivoPreteritoPluscuamperfecto(_ c: Conjugation) {
        if (!c.subjuntivoPreteritoPluscuamperfectoYo.elementsEqual("-")) {
            c.subjuntivoPreteritoPluscuamperfectoYo = Constants.QUE + Constants.YO + c.subjuntivoPreteritoPluscuamperfectoYo
        }
        if (!c.subjuntivoPreteritoPluscuamperfectoTu.elementsEqual("-")) {
            c.subjuntivoPreteritoPluscuamperfectoTu = Constants.QUE + Constants.TU + c.subjuntivoPreteritoPluscuamperfectoTu
        }
        if (!c.subjuntivoPreteritoPluscuamperfectoEl.elementsEqual("-")) {
            c.subjuntivoPreteritoPluscuamperfectoEl = Constants.QUE + Constants.EL + c.subjuntivoPreteritoPluscuamperfectoEl
        }
        if (!c.subjuntivoPreteritoPluscuamperfectoN.elementsEqual("-")) {
            c.subjuntivoPreteritoPluscuamperfectoN = Constants.QUE + Constants.NOSOTROS + c.subjuntivoPreteritoPluscuamperfectoN
        }
        if (!c.subjuntivoPreteritoPluscuamperfectoV.elementsEqual("-")) {
            c.subjuntivoPreteritoPluscuamperfectoV = Constants.QUE + Constants.VOSOTROS + c.subjuntivoPreteritoPluscuamperfectoV
        }
        if (!c.subjuntivoPreteritoPluscuamperfectoEll.elementsEqual("-")) {
            c.subjuntivoPreteritoPluscuamperfectoEll = Constants.QUE + Constants.ELLOS + c.subjuntivoPreteritoPluscuamperfectoEll
        }
    }
    
    private func addPronomsSubjuntivoFuturoSimple(_ c: Conjugation) {
        if (!c.subjuntivoFuturoSimpleYo.elementsEqual("-")) {
        c.subjuntivoFuturoSimpleYo = Constants.QUE + Constants.YO + c.subjuntivoFuturoSimpleYo
        }
        if (!c.subjuntivoFuturoSimpleTu.elementsEqual("-")) {
        c.subjuntivoFuturoSimpleTu = Constants.QUE + Constants.TU + c.subjuntivoFuturoSimpleTu
        }
        if (!c.subjuntivoFuturoSimpleEl.elementsEqual("-")) {
        c.subjuntivoFuturoSimpleEl = Constants.QUE + Constants.EL + c.subjuntivoFuturoSimpleEl
        }
        if (!c.subjuntivoFuturoSimpleN.elementsEqual("-")) {
        c.subjuntivoFuturoSimpleN = Constants.QUE + Constants.NOSOTROS + c.subjuntivoFuturoSimpleN
        }
        if (!c.subjuntivoFuturoSimpleV.elementsEqual("-")) {
        c.subjuntivoFuturoSimpleV = Constants.QUE + Constants.VOSOTROS + c.subjuntivoFuturoSimpleV
        }
        if (!c.subjuntivoFuturoSimpleEll.elementsEqual("-")) {
        c.subjuntivoFuturoSimpleEll = Constants.QUE + Constants.ELLOS + c.subjuntivoFuturoSimpleEll
        }
    }
    
    private func addPronomsSubjuntivoFuturoCompuesto(_ c: Conjugation) {
        if (!c.subjuntivoFuturoCompuestoYo.elementsEqual("-")) {
            c.subjuntivoFuturoCompuestoYo = Constants.QUE + Constants.YO + c.subjuntivoFuturoCompuestoYo
        }
        if (!c.subjuntivoFuturoCompuestoTu.elementsEqual("-")) {
            c.subjuntivoFuturoCompuestoTu = Constants.QUE + Constants.TU + c.subjuntivoFuturoCompuestoTu
        }
        if (!c.subjuntivoFuturoCompuestoEl.elementsEqual("-")) {
            c.subjuntivoFuturoCompuestoEl = Constants.QUE + Constants.EL + c.subjuntivoFuturoCompuestoEl
        }
        if (!c.subjuntivoFuturoCompuestoN.elementsEqual("-")) {
            c.subjuntivoFuturoCompuestoN = Constants.QUE + Constants.NOSOTROS + c.subjuntivoFuturoCompuestoN
        }
        if (!c.subjuntivoFuturoCompuestoV.elementsEqual("-")) {
            c.subjuntivoFuturoCompuestoV = Constants.QUE + Constants.VOSOTROS + c.subjuntivoFuturoCompuestoV
        }
        if (!c.subjuntivoFuturoCompuestoEll.elementsEqual("-")) {
            c.subjuntivoFuturoCompuestoEll = Constants.QUE + Constants.ELLOS + c.subjuntivoFuturoCompuestoEll
        }
    }
    
    private func fillConjugationDetails(_ c : Conjugation) {
        infinitivoSimple.setTitle(c.infinitivoSimple, for: .normal)
        infinitivoCompuesto.setTitle(c.infinitivoCompuesto, for: .normal)
        participio.setTitle(c.participio, for: .normal)
        gerundioSimple.setTitle(c.gerundioSimple, for: .normal)
        gerundioCompuesto.setTitle(c.gerundioCompuesto, for: .normal)
        
        imperativoTu.setTitle(c.imperativoTu, for: .normal)
        imperativoEl.setTitle(c.imperativoEl, for: .normal)
        imperativoN.setTitle(c.imperativoN, for: .normal)
        imperativoV.setTitle(c.imperativoV, for: .normal)
        imperativoEll.setTitle(c.imperativoEll, for: .normal)
        imperativoNegTu.setTitle(c.imperativoNegTu, for: .normal)
        imperativoNegEl.setTitle(c.imperativoNegEl, for: .normal)
        imperativoNegN.setTitle(c.imperativoNegN, for: .normal)
        imperativoNegV.setTitle(c.imperativoNegV, for: .normal)
        imperativoNegEll.setTitle(c.imperativoNegEll, for: .normal)
        
        indicativoPresenteYo.setTitle(c.indicativoPresenteYo, for: .normal)
        indicativoPresenteTu.setTitle(c.indicativoPresenteTu, for: .normal)
        indicativoPresenteEl.setTitle(c.indicativoPresenteEl, for: .normal)
        indicativoPresenteN.setTitle(c.indicativoPresenteN, for: .normal)
        indicativoPresenteV.setTitle(c.indicativoPresenteV, for: .normal)
        indicativoPresenteEll.setTitle(c.indicativoPresenteEll, for: .normal)
        
        indicativoPreteritoImperfectoYo.setTitle(c.indicativoPreteritoImperfectoYo, for: .normal)
        indicativoPreteritoImperfectoTu.setTitle(c.indicativoPreteritoImperfectoTu, for: .normal)
        indicativoPreteritoImperfectoEl.setTitle(c.indicativoPreteritoImperfectoEl, for: .normal)
        indicativoPreteritoImperfectoN.setTitle(c.indicativoPreteritoImperfectoN, for: .normal)
        indicativoPreteritoImperfectoV.setTitle(c.indicativoPreteritoImperfectoV, for: .normal)
        indicativoPreteritoImperfectoEll.setTitle(c.indicativoPreteritoImperfectoEll, for: .normal)
        
        indicativoPreteritoPerfectoSimpleYo.setTitle(c.indicativoPreteritoPerfectoSimpleYo, for: .normal)
        indicativoPreteritoPerfectoSimpleTu.setTitle(c.indicativoPreteritoPerfectoSimpleTu, for: .normal)
        indicativoPreteritoPerfectoSimpleEl.setTitle(c.indicativoPreteritoPerfectoSimpleEl, for: .normal)
        indicativoPreteritoPerfectoSimpleN.setTitle(c.indicativoPreteritoPerfectoSimpleN, for: .normal)
        indicativoPreteritoPerfectoSimpleV.setTitle(c.indicativoPreteritoPerfectoSimpleV, for: .normal)
        indicativoPreteritoPerfectoSimpleEll.setTitle(c.indicativoPreteritoPerfectoSimpleEll, for: .normal)
        
        indicativoFuturoSimpleYo.setTitle(c.indicativoFuturoSimpleYo, for: .normal)
        indicativoFuturoSimpleTu.setTitle(c.indicativoFuturoSimpleTu, for: .normal)
        indicativoFuturoSimpleEl.setTitle(c.indicativoFuturoSimpleEl, for: .normal)
        indicativoFuturoSimpleN.setTitle(c.indicativoFuturoSimpleN, for: .normal)
        indicativoFuturoSimpleV.setTitle(c.indicativoFuturoSimpleV, for: .normal)
        indicativoFuturoSimpleEll.setTitle(c.indicativoFuturoSimpleEll, for: .normal)
        
        indicativoCondicionalSimpleYo.setTitle(c.indicativoCondicionalSimpleYo, for: .normal)
        indicativoCondicionalSimpleTu.setTitle(c.indicativoCondicionalSimpleTu, for: .normal)
        indicativoCondicionalSimpleEl.setTitle(c.indicativoCondicionalSimpleEl, for: .normal)
        indicativoCondicionalSimpleN.setTitle(c.indicativoCondicionalSimpleN, for: .normal)
        indicativoCondicionalSimpleV.setTitle(c.indicativoCondicionalSimpleV, for: .normal)
        indicativoCondicionalSimpleEll.setTitle(c.indicativoCondicionalSimpleEll, for: .normal)
        
        indicativoPreteritoPerfectoCompuestoYo.setTitle(c.indicativoPreteritoPerfectoCompuestoYo, for: .normal)
        indicativoPreteritoPerfectoCompuestoTu.setTitle(c.indicativoPreteritoPerfectoCompuestoTu, for: .normal)
        indicativoPreteritoPerfectoCompuestoEl.setTitle(c.indicativoPreteritoPerfectoCompuestoEl, for: .normal)
        indicativoPreteritoPerfectoCompuestoN.setTitle(c.indicativoPreteritoPerfectoCompuestoN, for: .normal)
        indicativoPreteritoPerfectoCompuestoV.setTitle(c.indicativoPreteritoPerfectoCompuestoV, for: .normal)
        indicativoPreteritoPerfectoCompuestoEll.setTitle(c.indicativoPreteritoPerfectoCompuestoEll, for: .normal)
        
        indicativoPreteritoPluscuamperfectoYo.setTitle(c.indicativoPreteritoPluscuamperfectoYo, for: .normal)
        indicativoPreteritoPluscuamperfectoTu.setTitle(c.indicativoPreteritoPluscuamperfectoTu, for: .normal)
        indicativoPreteritoPluscuamperfectoEl.setTitle(c.indicativoPreteritoPluscuamperfectoEl, for: .normal)
        indicativoPreteritoPluscuamperfectoN.setTitle(c.indicativoPreteritoPluscuamperfectoN, for: .normal)
        indicativoPreteritoPluscuamperfectoV.setTitle(c.indicativoPreteritoPluscuamperfectoV, for: .normal)
        indicativoPreteritoPluscuamperfectoEll.setTitle(c.indicativoPreteritoPluscuamperfectoEll, for: .normal)
        
        indicativoPreteritoAnteriorYo.setTitle(c.indicativoPreteritoAnteriorYo, for: .normal)
        indicativoPreteritoAnteriorTu.setTitle(c.indicativoPreteritoAnteriorTu, for: .normal)
        indicativoPreteritoAnteriorEl.setTitle(c.indicativoPreteritoAnteriorEl, for: .normal)
        indicativoPreteritoAnteriorN.setTitle(c.indicativoPreteritoAnteriorN, for: .normal)
        indicativoPreteritoAnteriorV.setTitle(c.indicativoPreteritoAnteriorV, for: .normal)
        indicativoPreteritoAnteriorEll.setTitle(c.indicativoPreteritoAnteriorEll, for: .normal)
        
        indicativoFuturoCompuestoYo.setTitle(c.indicativoFuturoCompuestoYo, for: .normal)
        indicativoFuturoCompuestoTu.setTitle(c.indicativoFuturoCompuestoTu, for: .normal)
        indicativoFuturoCompuestoEl.setTitle(c.indicativoFuturoCompuestoEl, for: .normal)
        indicativoFuturoCompuestoN.setTitle(c.indicativoFuturoCompuestoN, for: .normal)
        indicativoFuturoCompuestoV.setTitle(c.indicativoFuturoCompuestoV, for: .normal)
        indicativoFuturoCompuestoEll.setTitle(c.indicativoFuturoCompuestoEll, for: .normal)
        
        indicativoCondicionalCompuestoYo.setTitle(c.indicativoCondicionalCompuestoYo, for: .normal)
        indicativoCondicionalCompuestoTu.setTitle(c.indicativoCondicionalCompuestoTu, for: .normal)
        indicativoCondicionalCompuestoEl.setTitle(c.indicativoCondicionalCompuestoEl, for: .normal)
        indicativoCondicionalCompuestoN.setTitle(c.indicativoCondicionalCompuestoN, for: .normal)
        indicativoCondicionalCompuestoV.setTitle(c.indicativoCondicionalCompuestoV, for: .normal)
        indicativoCondicionalCompuestoEll.setTitle(c.indicativoCondicionalCompuestoEll, for: .normal)
        
        subjuntivoPresenteYo.setTitle(c.subjuntivoPresenteYo, for: .normal)
        subjuntivoPresenteTu.setTitle(c.subjuntivoPresenteTu, for: .normal)
        subjuntivoPresenteEl.setTitle(c.subjuntivoPresenteEl, for: .normal)
        subjuntivoPresenteN.setTitle(c.subjuntivoPresenteN, for: .normal)
        subjuntivoPresenteV.setTitle(c.subjuntivoPresenteV, for: .normal)
        subjuntivoPresenteEll.setTitle(c.subjuntivoPresenteEll, for: .normal)
        
        subjuntivoPreteritoImperfectoYo.setTitle(c.subjuntivoPreteritoImperfectoYo, for: .normal)
        subjuntivoPreteritoImperfectoTu.setTitle(c.subjuntivoPreteritoImperfectoTu, for: .normal)
        subjuntivoPreteritoImperfectoEl.setTitle(c.subjuntivoPreteritoImperfectoEl, for: .normal)
        subjuntivoPreteritoImperfectoN.setTitle(c.subjuntivoPreteritoImperfectoN, for: .normal)
        subjuntivoPreteritoImperfectoV.setTitle(c.subjuntivoPreteritoImperfectoV, for: .normal)
        subjuntivoPreteritoImperfectoEll.setTitle(c.subjuntivoPreteritoImperfectoEll, for: .normal)
        
        subjuntivoFuturoSimpleYo.setTitle(c.subjuntivoFuturoSimpleYo, for: .normal)
        subjuntivoFuturoSimpleTu.setTitle(c.subjuntivoFuturoSimpleTu, for: .normal)
        subjuntivoFuturoSimpleEl.setTitle(c.subjuntivoFuturoSimpleEl, for: .normal)
        subjuntivoFuturoSimpleN.setTitle(c.subjuntivoFuturoSimpleN, for: .normal)
        subjuntivoFuturoSimpleV.setTitle(c.subjuntivoFuturoSimpleV, for: .normal)
        subjuntivoFuturoSimpleEll.setTitle(c.subjuntivoFuturoSimpleEll, for: .normal)
        
        subjuntivoPreteritoPerfectoCompuestoYo.setTitle(c.subjuntivoPreteritoPerfectoCompuestoYo, for: .normal)
        subjuntivoPreteritoPerfectoCompuestoTu.setTitle(c.subjuntivoPreteritoPerfectoCompuestoTu, for: .normal)
        subjuntivoPreteritoPerfectoCompuestoEl.setTitle(c.subjuntivoPreteritoPerfectoCompuestoEl, for: .normal)
        subjuntivoPreteritoPerfectoCompuestoN.setTitle(c.subjuntivoPreteritoPerfectoCompuestoN, for: .normal)
        subjuntivoPreteritoPerfectoCompuestoV.setTitle(c.subjuntivoPreteritoPerfectoCompuestoV, for: .normal)
        subjuntivoPreteritoPerfectoCompuestoEll.setTitle(c.subjuntivoPreteritoPerfectoCompuestoEll, for: .normal)
        
        subjuntivoPreteritoPluscuamperfectoYo.setTitle(c.subjuntivoPreteritoPluscuamperfectoYo, for: .normal)
        subjuntivoPreteritoPluscuamperfectoTu.setTitle(c.subjuntivoPreteritoPluscuamperfectoTu, for: .normal)
        subjuntivoPreteritoPluscuamperfectoEl.setTitle(c.subjuntivoPreteritoPluscuamperfectoEl, for: .normal)
        subjuntivoPreteritoPluscuamperfectoN.setTitle(c.subjuntivoPreteritoPluscuamperfectoN, for: .normal)
        subjuntivoPreteritoPluscuamperfectoV.setTitle(c.subjuntivoPreteritoPluscuamperfectoV, for: .normal)
        subjuntivoPreteritoPluscuamperfectoEll.setTitle(c.subjuntivoPreteritoPluscuamperfectoEll, for: .normal)
        
        subjuntivoFuturoCompuestoYo.setTitle(c.subjuntivoFuturoCompuestoYo, for: .normal)
        subjuntivoFuturoCompuestoTu.setTitle(c.subjuntivoFuturoCompuestoTu, for: .normal)
        subjuntivoFuturoCompuestoEl.setTitle(c.subjuntivoFuturoCompuestoEl, for: .normal)
        subjuntivoFuturoCompuestoN.setTitle(c.subjuntivoFuturoCompuestoN, for: .normal)
        subjuntivoFuturoCompuestoV.setTitle(c.subjuntivoFuturoCompuestoV, for: .normal)
        subjuntivoFuturoCompuestoEll.setTitle(c.subjuntivoFuturoCompuestoEll, for: .normal)
    }
    
    private func setAdjustsFontForContentSizeCategory() {
        infinitive.titleLabel?.adjustsFontForContentSizeCategory = true
        definition.titleLabel?.adjustsFontForContentSizeCategory = true
        sample1.titleLabel?.adjustsFontForContentSizeCategory = true
        sample2.titleLabel?.adjustsFontForContentSizeCategory = true
        sample3.titleLabel?.adjustsFontForContentSizeCategory = true
        
        infinitivoSimple.titleLabel?.adjustsFontForContentSizeCategory = true
        infinitivoCompuesto.titleLabel?.adjustsFontForContentSizeCategory = true
        participio.titleLabel?.adjustsFontForContentSizeCategory = true
        gerundioSimple.titleLabel?.adjustsFontForContentSizeCategory = true
        gerundioCompuesto.titleLabel?.adjustsFontForContentSizeCategory = true
        
        imperativoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoN.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoV.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoNegTu.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoNegEl.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoNegN.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoNegV.titleLabel?.adjustsFontForContentSizeCategory = true
        imperativoNegEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoPresenteYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPresenteTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPresenteEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPresenteN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPresenteV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPresenteEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoPreteritoImperfectoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoImperfectoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoImperfectoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoImperfectoN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoImperfectoV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoImperfectoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoPreteritoPerfectoSimpleYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoSimpleTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoSimpleEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoSimpleN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoSimpleV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoSimpleEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoFuturoSimpleYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoSimpleTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoSimpleEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoSimpleN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoSimpleV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoSimpleEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoCondicionalSimpleYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalSimpleTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalSimpleEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalSimpleN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalSimpleV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalSimpleEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoPreteritoPerfectoCompuestoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoCompuestoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoCompuestoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoCompuestoN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoCompuestoV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPerfectoCompuestoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoPreteritoPluscuamperfectoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPluscuamperfectoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPluscuamperfectoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPluscuamperfectoN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPluscuamperfectoV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoPluscuamperfectoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoPreteritoAnteriorYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoAnteriorTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoAnteriorEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoAnteriorN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoAnteriorV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoPreteritoAnteriorEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoFuturoCompuestoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoCompuestoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoCompuestoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoCompuestoN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoCompuestoV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoFuturoCompuestoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        indicativoCondicionalCompuestoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalCompuestoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalCompuestoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalCompuestoN.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalCompuestoV.titleLabel?.adjustsFontForContentSizeCategory = true
        indicativoCondicionalCompuestoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjuntivoPresenteYo.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPresenteTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPresenteEl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPresenteN.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPresenteV.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPresenteEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjuntivoPreteritoImperfectoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoImperfectoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoImperfectoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoImperfectoN.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoImperfectoV.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoImperfectoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjuntivoFuturoSimpleYo.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoSimpleTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoSimpleEl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoSimpleN.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoSimpleV.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoSimpleEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjuntivoPreteritoPerfectoCompuestoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPerfectoCompuestoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPerfectoCompuestoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPerfectoCompuestoN.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPerfectoCompuestoV.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPerfectoCompuestoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjuntivoPreteritoPluscuamperfectoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPluscuamperfectoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPluscuamperfectoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPluscuamperfectoN.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPluscuamperfectoV.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoPreteritoPluscuamperfectoEll.titleLabel?.adjustsFontForContentSizeCategory = true
        
        subjuntivoFuturoCompuestoYo.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoCompuestoTu.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoCompuestoEl.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoCompuestoN.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoCompuestoV.titleLabel?.adjustsFontForContentSizeCategory = true
        subjuntivoFuturoCompuestoEll.titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
    
    // MARK: Speak button
    @IBAction func speakButton(_ sender: UIButton) {
        
        switch (sender) {
        case infinitive, definition, sample1, sample2, sample3,
             infinitivoSimple, infinitivoCompuesto, participio,
             gerundioSimple, gerundioCompuesto,
            
             imperativoTu, imperativoEl, imperativoN, imperativoV, imperativoEll,
             imperativoNegTu, imperativoNegEl, imperativoNegN, imperativoNegV, imperativoNegEll,
            
             indicativoPresenteYo, indicativoPresenteTu, indicativoPresenteEl,
             indicativoPresenteN, indicativoPresenteV, indicativoPresenteEll,
            
             indicativoPreteritoImperfectoYo, indicativoPreteritoImperfectoTu, indicativoPreteritoImperfectoEl,
             indicativoPreteritoImperfectoN, indicativoPreteritoImperfectoV, indicativoPreteritoImperfectoEll,
            
             indicativoPreteritoPerfectoSimpleYo, indicativoPreteritoPerfectoSimpleTu, indicativoPreteritoPerfectoSimpleEl,
             indicativoPreteritoPerfectoSimpleN, indicativoPreteritoPerfectoSimpleV, indicativoPreteritoPerfectoSimpleEll,
            
             indicativoFuturoSimpleYo, indicativoFuturoSimpleTu, indicativoFuturoSimpleEl,
             indicativoFuturoSimpleN, indicativoFuturoSimpleV, indicativoFuturoSimpleEll,
            
             indicativoCondicionalSimpleYo, indicativoCondicionalSimpleTu, indicativoCondicionalSimpleEl,
             indicativoCondicionalSimpleN, indicativoCondicionalSimpleV, indicativoCondicionalSimpleEll,
            
             indicativoPreteritoPerfectoCompuestoYo, indicativoPreteritoPerfectoCompuestoTu, indicativoPreteritoPerfectoCompuestoEl,
             indicativoPreteritoPerfectoCompuestoN, indicativoPreteritoPerfectoCompuestoV, indicativoPreteritoPerfectoCompuestoEll,
            
             indicativoPreteritoPluscuamperfectoYo, indicativoPreteritoPluscuamperfectoTu, indicativoPreteritoPluscuamperfectoEl,
             indicativoPreteritoPluscuamperfectoN, indicativoPreteritoPluscuamperfectoV, indicativoPreteritoPluscuamperfectoEll,
            
             indicativoPreteritoAnteriorYo, indicativoPreteritoAnteriorTu, indicativoPreteritoAnteriorEl,
             indicativoPreteritoAnteriorN, indicativoPreteritoAnteriorV, indicativoPreteritoAnteriorEll,
            
             indicativoFuturoCompuestoYo, indicativoFuturoCompuestoTu, indicativoFuturoCompuestoEl,
             indicativoFuturoCompuestoN, indicativoFuturoCompuestoV,indicativoFuturoCompuestoEll,
            
             indicativoCondicionalCompuestoYo, indicativoCondicionalCompuestoTu, indicativoCondicionalCompuestoEl,
             indicativoCondicionalCompuestoN, indicativoCondicionalCompuestoV, indicativoCondicionalCompuestoEll,
            
             subjuntivoPresenteYo, subjuntivoPresenteTu, subjuntivoPresenteEl,
             subjuntivoPresenteN, subjuntivoPresenteV, subjuntivoPresenteEll,
            
             subjuntivoPreteritoImperfectoYo, subjuntivoPreteritoImperfectoTu, subjuntivoPreteritoImperfectoEl,
             subjuntivoPreteritoImperfectoN, subjuntivoPreteritoImperfectoV, subjuntivoPreteritoImperfectoEll,
            
             subjuntivoFuturoSimpleYo, subjuntivoFuturoSimpleTu, subjuntivoFuturoSimpleEl,
             subjuntivoFuturoSimpleN, subjuntivoFuturoSimpleV, subjuntivoFuturoSimpleEll,
            
             subjuntivoPreteritoPerfectoCompuestoYo, subjuntivoPreteritoPerfectoCompuestoTu, subjuntivoPreteritoPerfectoCompuestoEl,
             subjuntivoPreteritoPerfectoCompuestoN, subjuntivoPreteritoPerfectoCompuestoV,subjuntivoPreteritoPerfectoCompuestoEll,
            
             subjuntivoPreteritoPluscuamperfectoYo, subjuntivoPreteritoPluscuamperfectoTu, subjuntivoPreteritoPluscuamperfectoEl,
             subjuntivoPreteritoPluscuamperfectoN, subjuntivoPreteritoPluscuamperfectoV, subjuntivoPreteritoPluscuamperfectoEll,
            
             subjuntivoFuturoCompuestoYo, subjuntivoFuturoCompuestoTu, subjuntivoFuturoCompuestoEl,
             subjuntivoFuturoCompuestoN, subjuntivoFuturoCompuestoV, subjuntivoFuturoCompuestoEll:
            
            let text : String = sender.title(for: .normal)!
            speaker.speak(text)
            
        default:
            break
        }
    }
    
    // MARK: - Share action
    @IBAction func share(_ sender: Any) {
        let string : String = createShareText()
        let activityVC = UIActivityViewController(activityItems: [string], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
    /**
     * Create the text to share.
     */
    private func createShareText() -> String {
        let text : String = "Verb: \(verb.infinitive)\nType: \(verb.regular)\n\nDefinition:\n\(verb.definition)\n\nExamples:\n1. \(verb.sample1)\n2. \(verb.sample2)\n3. \(verb.sample3)"
            + "\n\nIndicativo Presente:"
            + "\n\(conjugation.indicativoPresenteYo)"
            + "\n\(conjugation.indicativoPresenteTu)"
            + "\n\(conjugation.indicativoPresenteEl)"
            + "\n\(conjugation.indicativoPresenteN)"
            + "\n\(conjugation.indicativoPresenteV)"
            + "\n\(conjugation.indicativoPresenteEll)"
            + "\n\nIndicativo Pretérito Perfecto Compuesto:"
            + "\n\(conjugation.indicativoPreteritoPerfectoCompuestoYo)"
            + "\n\(conjugation.indicativoPreteritoPerfectoCompuestoTu)"
            + "\n\(conjugation.indicativoPreteritoPerfectoCompuestoEl)"
            + "\n\(conjugation.indicativoPreteritoPerfectoCompuestoN)"
            + "\n\(conjugation.indicativoPreteritoPerfectoCompuestoV)"
            + "\n\(conjugation.indicativoPreteritoPerfectoCompuestoEll)"
            + "\n\nIndicativo Pretérito Imperfecto:"
            + "\n\(conjugation.indicativoPreteritoImperfectoYo)"
            + "\n\(conjugation.indicativoPreteritoImperfectoTu)"
            + "\n\(conjugation.indicativoPreteritoImperfectoEl)"
            + "\n\(conjugation.indicativoPreteritoImperfectoN)"
            + "\n\(conjugation.indicativoPreteritoImperfectoV)"
            + "\n\(conjugation.indicativoPreteritoImperfectoEll)"
            + "\n\nIndicativo Pretérito Pluscuamperfecto:"
            + "\n\(conjugation.indicativoPreteritoPluscuamperfectoYo)"
            + "\n\(conjugation.indicativoPreteritoPluscuamperfectoTu)"
            + "\n\(conjugation.indicativoPreteritoPluscuamperfectoEl)"
            + "\n\(conjugation.indicativoPreteritoPluscuamperfectoN)"
            + "\n\(conjugation.indicativoPreteritoPluscuamperfectoV)"
            + "\n\(conjugation.indicativoPreteritoPluscuamperfectoEll)"
            + "\n\nIndicativo Pretérito Perfecto Simple:"
            + "\n\(conjugation.indicativoPreteritoPerfectoSimpleYo)"
            + "\n\(conjugation.indicativoPreteritoPerfectoSimpleTu)"
            + "\n\(conjugation.indicativoPreteritoPerfectoSimpleEl)"
            + "\n\(conjugation.indicativoPreteritoPerfectoSimpleN)"
            + "\n\(conjugation.indicativoPreteritoPerfectoSimpleV)"
            + "\n\(conjugation.indicativoPreteritoPerfectoSimpleEll)"
            + "\n\nIndicativo Pretérito Anterior:"
            + "\n\(conjugation.indicativoPreteritoAnteriorYo)"
            + "\n\(conjugation.indicativoPreteritoAnteriorTu)"
            + "\n\(conjugation.indicativoPreteritoAnteriorEl)"
            + "\n\(conjugation.indicativoPreteritoAnteriorN)"
            + "\n\(conjugation.indicativoPreteritoAnteriorV)"
            + "\n\(conjugation.indicativoPreteritoAnteriorEll)"
            + "\n\nIndicativo Futuro Simple:"
            + "\n\(conjugation.indicativoFuturoSimpleYo)"
            + "\n\(conjugation.indicativoFuturoSimpleTu)"
            + "\n\(conjugation.indicativoFuturoSimpleEl)"
            + "\n\(conjugation.indicativoFuturoSimpleN)"
            + "\n\(conjugation.indicativoFuturoSimpleV)"
            + "\n\(conjugation.indicativoFuturoSimpleEll)"
            + "\n\nIndicativo Futuro Compuesto:"
            + "\n\(conjugation.indicativoFuturoCompuestoYo)"
            + "\n\(conjugation.indicativoFuturoCompuestoTu)"
            + "\n\(conjugation.indicativoFuturoCompuestoEl)"
            + "\n\(conjugation.indicativoFuturoCompuestoN)"
            + "\n\(conjugation.indicativoFuturoCompuestoV)"
            + "\n\(conjugation.indicativoFuturoCompuestoEll)"
            + "\n\nIndicativo Condicional Simple:"
            + "\n\(conjugation.indicativoCondicionalSimpleYo)"
            + "\n\(conjugation.indicativoCondicionalSimpleTu)"
            + "\n\(conjugation.indicativoCondicionalSimpleEl)"
            + "\n\(conjugation.indicativoCondicionalSimpleN)"
            + "\n\(conjugation.indicativoCondicionalSimpleV)"
            + "\n\(conjugation.indicativoCondicionalSimpleEll)"
            + "\n\nIndicativo Condicional Compuesto:"
            + "\n\(conjugation.indicativoCondicionalCompuestoYo)"
            + "\n\(conjugation.indicativoCondicionalCompuestoTu)"
            + "\n\(conjugation.indicativoCondicionalCompuestoEl)"
            + "\n\(conjugation.indicativoCondicionalCompuestoN)"
            + "\n\(conjugation.indicativoCondicionalCompuestoV)"
            + "\n\(conjugation.indicativoCondicionalCompuestoEll)"
            + "\n\nSubjuntivo Presente:"
            + "\n\(conjugation.subjuntivoPresenteYo)"
            + "\n\(conjugation.subjuntivoPresenteTu)"
            + "\n\(conjugation.subjuntivoPresenteEl)"
            + "\n\(conjugation.subjuntivoPresenteN)"
            + "\n\(conjugation.subjuntivoPresenteV)"
            + "\n\(conjugation.subjuntivoPresenteEll)"
            + "\n\nSubjuntivo Pretérito Perfecto Compuesto:"
            + "\n\(conjugation.subjuntivoPreteritoPerfectoCompuestoYo)"
            + "\n\(conjugation.subjuntivoPreteritoPerfectoCompuestoTu)"
            + "\n\(conjugation.subjuntivoPreteritoPerfectoCompuestoEl)"
            + "\n\(conjugation.subjuntivoPreteritoPerfectoCompuestoN)"
            + "\n\(conjugation.subjuntivoPreteritoPerfectoCompuestoV)"
            + "\n\(conjugation.subjuntivoPreteritoPerfectoCompuestoEll)"
            + "\n\nSubjuntivo Pretérito Imperfecto:"
            + "\n\(conjugation.subjuntivoPreteritoImperfectoYo)"
            + "\n\(conjugation.subjuntivoPreteritoImperfectoTu)"
            + "\n\(conjugation.subjuntivoPreteritoImperfectoEl)"
            + "\n\(conjugation.subjuntivoPreteritoImperfectoN)"
            + "\n\(conjugation.subjuntivoPreteritoImperfectoV)"
            + "\n\(conjugation.subjuntivoPreteritoImperfectoEll)"
            + "\n\nSubjuntivo Pretérito Pluscuamperfecto:"
            + "\n\(conjugation.subjuntivoPreteritoPluscuamperfectoYo)"
            + "\n\(conjugation.subjuntivoPreteritoPluscuamperfectoTu)"
            + "\n\(conjugation.subjuntivoPreteritoPluscuamperfectoEl)"
            + "\n\(conjugation.subjuntivoPreteritoPluscuamperfectoN)"
            + "\n\(conjugation.subjuntivoPreteritoPluscuamperfectoV)"
            + "\n\(conjugation.subjuntivoPreteritoPluscuamperfectoEll)"
            + "\n\nSubjuntivo Futuro Simple:"
            + "\n\(conjugation.subjuntivoFuturoSimpleYo)"
            + "\n\(conjugation.subjuntivoFuturoSimpleTu)"
            + "\n\(conjugation.subjuntivoFuturoSimpleEl)"
            + "\n\(conjugation.subjuntivoFuturoSimpleN)"
            + "\n\(conjugation.subjuntivoFuturoSimpleV)"
            + "\n\(conjugation.subjuntivoFuturoSimpleEll)"
            + "\n\nSubjuntivo Futuro Compuesto:"
            + "\n\(conjugation.subjuntivoFuturoCompuestoYo)"
            + "\n\(conjugation.subjuntivoFuturoCompuestoTu)"
            + "\n\(conjugation.subjuntivoFuturoCompuestoEl)"
            + "\n\(conjugation.subjuntivoFuturoCompuestoN)"
            + "\n\(conjugation.subjuntivoFuturoCompuestoV)"
            + "\n\(conjugation.subjuntivoFuturoCompuestoEll)"
            + "\n\nImperativo Presente:"
            + "\n\(conjugation.imperativoTu)"
            + "\n\(conjugation.imperativoEl)"
            + "\n\(conjugation.imperativoN)"
            + "\n\(conjugation.imperativoV)"
            + "\n\(conjugation.imperativoEll)"
            + "\n\nImperativo Negativo:"
            + "\n\(conjugation.imperativoNegTu)"
            + "\n\(conjugation.imperativoNegEl)"
            + "\n\(conjugation.imperativoNegN)"
            + "\n\(conjugation.imperativoNegV)"
            + "\n\(conjugation.imperativoNegEll)"
            + "\n\nInfinitivo Simple:\n\(conjugation.infinitivoSimple)"
            + "\n\nInfinitivo Compuesto:\n\(conjugation.infinitivoCompuesto)"
            + "\n\nParticipio:\n\(conjugation.participio)"
            + "\n\nGerundio Simple:\n\(conjugation.gerundioSimple)"
            + "\n\nGerundio Compuesto:\n\(conjugation.gerundioCompuesto)"
        
        return text
    }
}


// MARK: - VerbDetailsViewController (AdMob banner)
/*
extension VerbDetailsViewController: GADBannerViewDelegate {
    
    // Detect when the device changed orientation.
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if banner != nil && banner.isDescendant(of: stack) {
            stack.removeArrangedSubview(banner)
            banner.isHidden = true // fix old banner remain drawn when switching from horizontal to vertical
        }
        banner = ViewUtils.createAdMobBanner(self, self, adUnitID)
    }
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        if !banner.isDescendant(of: stack) {
            // Add the banner to the stack when an ad is received
            stack.addArrangedSubview(banner)
        }
    }
}*/

