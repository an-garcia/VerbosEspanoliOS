//
//  Conjugation.swift
//  VerbosEspanoliOS
//
//  Created by xengar on 2018-03-19.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation

// MARK: - Conjugation
class Conjugation {
    
    // MARK: Properties
    var id : Int = 0
    var termination : String = ""
    var radicals : String = ""
    var infinitivoSimple : String = ""
    var infinitivoCompuesto : String = ""
    var participio : String = ""
    var gerundioSimple : String = ""
    var gerundioCompuesto : String = ""
    
    var imperativoTu : String = ""
    var imperativoEl : String = ""
    var imperativoN : String = ""
    var imperativoV : String = ""
    var imperativoEll : String = ""
    var imperativoNegTu : String = ""
    var imperativoNegEl : String = ""
    var imperativoNegN : String = ""
    var imperativoNegV : String = ""
    var imperativoNegEll : String = ""
    
    var indicativoPresenteYo : String = ""
    var indicativoPresenteTu : String = ""
    var indicativoPresenteEl : String = ""
    var indicativoPresenteN : String = ""
    var indicativoPresenteV : String = ""
    var indicativoPresenteEll : String = ""
    
    var indicativoPreteritoImperfectoYo : String = ""
    var indicativoPreteritoImperfectoTu : String = ""
    var indicativoPreteritoImperfectoEl : String = ""
    var indicativoPreteritoImperfectoN : String = ""
    var indicativoPreteritoImperfectoV : String = ""
    var indicativoPreteritoImperfectoEll : String = ""
    
    var indicativoPreteritoPerfectoSimpleYo : String = ""
    var indicativoPreteritoPerfectoSimpleTu : String = ""
    var indicativoPreteritoPerfectoSimpleEl : String = ""
    var indicativoPreteritoPerfectoSimpleN : String = ""
    var indicativoPreteritoPerfectoSimpleV : String = ""
    var indicativoPreteritoPerfectoSimpleEll : String = ""
    
    var indicativoFuturoSimpleYo : String = ""
    var indicativoFuturoSimpleTu : String = ""
    var indicativoFuturoSimpleEl : String = ""
    var indicativoFuturoSimpleN : String = ""
    var indicativoFuturoSimpleV : String = ""
    var indicativoFuturoSimpleEll : String = ""
    
    var indicativoCondicionalSimpleYo : String = ""
    var indicativoCondicionalSimpleTu : String = ""
    var indicativoCondicionalSimpleEl : String = ""
    var indicativoCondicionalSimpleN : String = ""
    var indicativoCondicionalSimpleV : String = ""
    var indicativoCondicionalSimpleEll : String = ""
    
    var indicativoPreteritoPerfectoCompuestoYo : String = ""
    var indicativoPreteritoPerfectoCompuestoTu : String = ""
    var indicativoPreteritoPerfectoCompuestoEl : String = ""
    var indicativoPreteritoPerfectoCompuestoN : String = ""
    var indicativoPreteritoPerfectoCompuestoV : String = ""
    var indicativoPreteritoPerfectoCompuestoEll : String = ""
    
    var indicativoPreteritoPluscuamperfectoYo : String = ""
    var indicativoPreteritoPluscuamperfectoTu : String = ""
    var indicativoPreteritoPluscuamperfectoEl : String = ""
    var indicativoPreteritoPluscuamperfectoN : String = ""
    var indicativoPreteritoPluscuamperfectoV : String = ""
    var indicativoPreteritoPluscuamperfectoEll : String = ""
    
    var indicativoPreteritoAnteriorYo : String = ""
    var indicativoPreteritoAnteriorTu : String = ""
    var indicativoPreteritoAnteriorEl : String = ""
    var indicativoPreteritoAnteriorN : String = ""
    var indicativoPreteritoAnteriorV : String = ""
    var indicativoPreteritoAnteriorEll : String = ""
    
    var indicativoFuturoCompuestoYo : String = ""
    var indicativoFuturoCompuestoTu : String = ""
    var indicativoFuturoCompuestoEl : String = ""
    var indicativoFuturoCompuestoN : String = ""
    var indicativoFuturoCompuestoV : String = ""
    var indicativoFuturoCompuestoEll : String = ""
    
    var indicativoCondicionalCompuestoYo : String = ""
    var indicativoCondicionalCompuestoTu : String = ""
    var indicativoCondicionalCompuestoEl : String = ""
    var indicativoCondicionalCompuestoN : String = ""
    var indicativoCondicionalCompuestoV : String = ""
    var indicativoCondicionalCompuestoEll : String = ""
    
    var subjuntivoPresenteYo : String = ""
    var subjuntivoPresenteTu : String = ""
    var subjuntivoPresenteEl : String = ""
    var subjuntivoPresenteN : String = ""
    var subjuntivoPresenteV : String = ""
    var subjuntivoPresenteEll : String = ""
    
    var subjuntivoPreteritoImperfectoYo : String = ""
    var subjuntivoPreteritoImperfectoTu : String = ""
    var subjuntivoPreteritoImperfectoEl : String = ""
    var subjuntivoPreteritoImperfectoN : String = ""
    var subjuntivoPreteritoImperfectoV : String = ""
    var subjuntivoPreteritoImperfectoEll : String = ""
    
    var subjuntivoFuturoSimpleYo : String = ""
    var subjuntivoFuturoSimpleTu : String = ""
    var subjuntivoFuturoSimpleEl : String = ""
    var subjuntivoFuturoSimpleN : String = ""
    var subjuntivoFuturoSimpleV : String = ""
    var subjuntivoFuturoSimpleEll : String = ""
    
    var subjuntivoPreteritoPerfectoCompuestoYo : String = ""
    var subjuntivoPreteritoPerfectoCompuestoTu : String = ""
    var subjuntivoPreteritoPerfectoCompuestoEl : String = ""
    var subjuntivoPreteritoPerfectoCompuestoN : String = ""
    var subjuntivoPreteritoPerfectoCompuestoV : String = ""
    var subjuntivoPreteritoPerfectoCompuestoEll : String = ""
    
    var subjuntivoPreteritoPluscuamperfectoYo : String = ""
    var subjuntivoPreteritoPluscuamperfectoTu : String = ""
    var subjuntivoPreteritoPluscuamperfectoEl : String = ""
    var subjuntivoPreteritoPluscuamperfectoN : String = ""
    var subjuntivoPreteritoPluscuamperfectoV : String = ""
    var subjuntivoPreteritoPluscuamperfectoEll : String = ""
    
    var subjuntivoFuturoCompuestoYo : String = ""
    var subjuntivoFuturoCompuestoTu : String = ""
    var subjuntivoFuturoCompuestoEl : String = ""
    var subjuntivoFuturoCompuestoN : String = ""
    var subjuntivoFuturoCompuestoV : String = ""
    var subjuntivoFuturoCompuestoEll : String = ""
    
    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! Int
        termination = dictionary["term"] as! String
        radicals = dictionary["radicals"] as! String
        infinitivoSimple = dictionary["inf_si"] as! String
        infinitivoCompuesto = dictionary["inf_co"] as! String
        participio = dictionary["pa"] as! String
        gerundioSimple = dictionary["ge_si"] as! String
        gerundioCompuesto = dictionary["ge_co"] as! String
        
        imperativoTu = dictionary["imp_t"] as! String
        imperativoEl = dictionary["imp_el"] as! String
        imperativoN = dictionary["imp_n"] as! String
        imperativoV = dictionary["imp_v"] as! String
        imperativoEll = dictionary["imp_ell"] as! String
        imperativoNegTu = dictionary["imp_neg_t"] as! String
        imperativoNegEl = dictionary["imp_neg_el"] as! String
        imperativoNegN = dictionary["imp_neg_n"] as! String
        imperativoNegV = dictionary["imp_neg_v"] as! String
        imperativoNegEll = dictionary["imp_neg_ell"] as! String
        
        indicativoPresenteYo = dictionary["in_pres_y"] as! String
        indicativoPresenteTu = dictionary["in_pres_t"] as! String
        indicativoPresenteEl = dictionary["in_pres_el"] as! String
        indicativoPresenteN = dictionary["in_pres_n"] as! String
        indicativoPresenteV = dictionary["in_pres_v"] as! String
        indicativoPresenteEll = dictionary["in_pres_ell"] as! String
        
        indicativoPreteritoImperfectoYo = dictionary["in_pret_imp_y"] as! String
        indicativoPreteritoImperfectoTu = dictionary["in_pret_imp_t"] as! String
        indicativoPreteritoImperfectoEl = dictionary["in_pret_imp_el"] as! String
        indicativoPreteritoImperfectoN = dictionary["in_pret_imp_n"] as! String
        indicativoPreteritoImperfectoV = dictionary["in_pret_imp_v"] as! String
        indicativoPreteritoImperfectoEll = dictionary["in_pret_imp_ell"] as! String
        
        indicativoPreteritoPerfectoSimpleYo = dictionary["in_pret_perf_si_y"] as! String
        indicativoPreteritoPerfectoSimpleTu = dictionary["in_pret_perf_si_t"] as! String
        indicativoPreteritoPerfectoSimpleEl = dictionary["in_pret_perf_si_el"] as! String
        indicativoPreteritoPerfectoSimpleN = dictionary["in_pret_perf_si_n"] as! String
        indicativoPreteritoPerfectoSimpleV = dictionary["in_pret_perf_si_v"] as! String
        indicativoPreteritoPerfectoSimpleEll = dictionary["in_pret_perf_si_ell"] as! String
        
        indicativoFuturoSimpleYo = dictionary["in_fu_si_y"] as! String
        indicativoFuturoSimpleTu = dictionary["in_fu_si_t"] as! String
        indicativoFuturoSimpleEl = dictionary["in_fu_si_el"] as! String
        indicativoFuturoSimpleN = dictionary["in_fu_si_n"] as! String
        indicativoFuturoSimpleV = dictionary["in_fu_si_v"] as! String
        indicativoFuturoSimpleEll = dictionary["in_fu_si_ell"] as! String
        
        indicativoCondicionalSimpleYo = dictionary["in_cond_si_y"] as! String
        indicativoCondicionalSimpleTu = dictionary["in_cond_si_t"] as! String
        indicativoCondicionalSimpleEl = dictionary["in_cond_si_el"] as! String
        indicativoCondicionalSimpleN = dictionary["in_cond_si_n"] as! String
        indicativoCondicionalSimpleV = dictionary["in_cond_si_v"] as! String
        indicativoCondicionalSimpleEll = dictionary["in_cond_si_ell"] as! String
        
        indicativoPreteritoPerfectoCompuestoYo = dictionary["in_pret_perf_comp_y"] as! String
        indicativoPreteritoPerfectoCompuestoTu = dictionary["in_pret_perf_comp_t"] as! String
        indicativoPreteritoPerfectoCompuestoEl = dictionary["in_pret_perf_comp_el"] as! String
        indicativoPreteritoPerfectoCompuestoN = dictionary["in_pret_perf_comp_n"] as! String
        indicativoPreteritoPerfectoCompuestoV = dictionary["in_pret_perf_comp_v"] as! String
        indicativoPreteritoPerfectoCompuestoEll = dictionary["in_pret_perf_comp_ell"] as! String
        
        indicativoPreteritoPluscuamperfectoYo = dictionary["in_pret_plus_y"] as! String
        indicativoPreteritoPluscuamperfectoTu = dictionary["in_pret_plus_t"] as! String
        indicativoPreteritoPluscuamperfectoEl = dictionary["in_pret_plus_el"] as! String
        indicativoPreteritoPluscuamperfectoN = dictionary["in_pret_plus_n"] as! String
        indicativoPreteritoPluscuamperfectoV = dictionary["in_pret_plus_v"] as! String
        indicativoPreteritoPluscuamperfectoEll = dictionary["in_pret_plus_ell"] as! String
        
        indicativoPreteritoAnteriorYo = dictionary["in_pret_ant_y"] as! String
        indicativoPreteritoAnteriorTu = dictionary["in_pret_ant_t"] as! String
        indicativoPreteritoAnteriorEl = dictionary["in_pret_ant_el"] as! String
        indicativoPreteritoAnteriorN = dictionary["in_pret_ant_n"] as! String
        indicativoPreteritoAnteriorV = dictionary["in_pret_ant_v"] as! String
        indicativoPreteritoAnteriorEll = dictionary["in_pret_ant_ell"] as! String
        
        indicativoFuturoCompuestoYo = dictionary["in_fu_comp_y"] as! String
        indicativoFuturoCompuestoTu = dictionary["in_fu_comp_t"] as! String
        indicativoFuturoCompuestoEl = dictionary["in_fu_comp_el"] as! String
        indicativoFuturoCompuestoN = dictionary["in_fu_comp_n"] as! String
        indicativoFuturoCompuestoV = dictionary["in_fu_comp_v"] as! String
        indicativoFuturoCompuestoEll = dictionary["in_fu_comp_ell"] as! String
        
        indicativoCondicionalCompuestoYo = dictionary["in_cond_co_y"] as! String
        indicativoCondicionalCompuestoTu = dictionary["in_cond_co_t"] as! String
        indicativoCondicionalCompuestoEl = dictionary["in_cond_co_el"] as! String
        indicativoCondicionalCompuestoN = dictionary["in_cond_co_n"] as! String
        indicativoCondicionalCompuestoV = dictionary["in_cond_co_v"] as! String
        indicativoCondicionalCompuestoEll = dictionary["in_cond_co_ell"] as! String
        
        subjuntivoPresenteYo = dictionary["su_pres_y"] as! String
        subjuntivoPresenteTu = dictionary["su_pres_t"] as! String
        subjuntivoPresenteEl = dictionary["su_pres_el"] as! String
        subjuntivoPresenteN = dictionary["su_pres_n"] as! String
        subjuntivoPresenteV = dictionary["su_pres_v"] as! String
        subjuntivoPresenteEll = dictionary["su_pres_ell"] as! String
        
        subjuntivoPreteritoImperfectoYo = dictionary["su_pret_imp_y"] as! String
        subjuntivoPreteritoImperfectoTu = dictionary["su_pret_imp_t"] as! String
        subjuntivoPreteritoImperfectoEl = dictionary["su_pret_imp_el"] as! String
        subjuntivoPreteritoImperfectoN = dictionary["su_pret_imp_n"] as! String
        subjuntivoPreteritoImperfectoV = dictionary["su_pret_imp_v"] as! String
        subjuntivoPreteritoImperfectoEll = dictionary["su_pret_imp_ell"] as! String
        
        subjuntivoFuturoSimpleYo = dictionary["su_fu_si_y"] as! String
        subjuntivoFuturoSimpleTu = dictionary["su_fu_si_t"] as! String
        subjuntivoFuturoSimpleEl = dictionary["su_fu_si_el"] as! String
        subjuntivoFuturoSimpleN = dictionary["su_fu_si_n"] as! String
        subjuntivoFuturoSimpleV = dictionary["su_fu_si_v"] as! String
        subjuntivoFuturoSimpleEll = dictionary["su_fu_si_ell"] as! String
        
        subjuntivoPreteritoPerfectoCompuestoYo = dictionary["su_pret_perf_comp_y"] as! String
        subjuntivoPreteritoPerfectoCompuestoTu = dictionary["su_pret_perf_comp_t"] as! String
        subjuntivoPreteritoPerfectoCompuestoEl = dictionary["su_pret_perf_comp_el"] as! String
        subjuntivoPreteritoPerfectoCompuestoN = dictionary["su_pret_perf_comp_n"] as! String
        subjuntivoPreteritoPerfectoCompuestoV = dictionary["su_pret_perf_comp_v"] as! String
        subjuntivoPreteritoPerfectoCompuestoEll = dictionary["su_pret_perf_comp_ell"] as! String
        
        subjuntivoPreteritoPluscuamperfectoYo = dictionary["su_pret_plus_y"] as! String
        subjuntivoPreteritoPluscuamperfectoTu = dictionary["su_pret_plus_t"] as! String
        subjuntivoPreteritoPluscuamperfectoEl = dictionary["su_pret_plus_el"] as! String
        subjuntivoPreteritoPluscuamperfectoN = dictionary["su_pret_plus_n"] as! String
        subjuntivoPreteritoPluscuamperfectoV = dictionary["su_pret_plus_v"] as! String
        subjuntivoPreteritoPluscuamperfectoEll = dictionary["su_pret_plus_ell"] as! String
        
        subjuntivoFuturoCompuestoYo = dictionary["su_fu_comp_y"] as! String
        subjuntivoFuturoCompuestoTu = dictionary["su_fu_comp_t"] as! String
        subjuntivoFuturoCompuestoEl = dictionary["su_fu_comp_el"] as! String
        subjuntivoFuturoCompuestoN = dictionary["su_fu_comp_n"] as! String
        subjuntivoFuturoCompuestoV = dictionary["su_fu_comp_v"] as! String
        subjuntivoFuturoCompuestoEll = dictionary["su_fu_comp_ell"] as! String
    }
    
    init() {
    }
}


// MARK: - Conjugation (Copy)
extension Conjugation : NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Conjugation()
        
        copy.id = id
        copy.termination = termination
        copy.radicals = radicals
        copy.infinitivoSimple = infinitivoSimple
        copy.infinitivoCompuesto = infinitivoCompuesto
        copy.participio = participio
        copy.gerundioSimple = gerundioSimple
        copy.gerundioCompuesto = gerundioCompuesto
        
        copy.imperativoTu = imperativoTu
        copy.imperativoEl = imperativoEl
        copy.imperativoN = imperativoN
        copy.imperativoV = imperativoV
        copy.imperativoEll = imperativoEll
        copy.imperativoNegTu = imperativoNegTu
        copy.imperativoNegEl = imperativoNegEl
        copy.imperativoNegN = imperativoNegN
        copy.imperativoNegV = imperativoNegV
        copy.imperativoNegEll = imperativoNegEll
        
        copy.indicativoPresenteYo = indicativoPresenteYo
        copy.indicativoPresenteTu = indicativoPresenteTu
        copy.indicativoPresenteEl = indicativoPresenteEl
        copy.indicativoPresenteN = indicativoPresenteN
        copy.indicativoPresenteV = indicativoPresenteV
        copy.indicativoPresenteEll = indicativoPresenteEll
        
        copy.indicativoPreteritoImperfectoYo = indicativoPreteritoImperfectoYo
        copy.indicativoPreteritoImperfectoTu = indicativoPreteritoImperfectoTu
        copy.indicativoPreteritoImperfectoEl = indicativoPreteritoImperfectoEl
        copy.indicativoPreteritoImperfectoN = indicativoPreteritoImperfectoN
        copy.indicativoPreteritoImperfectoV = indicativoPreteritoImperfectoV
        copy.indicativoPreteritoImperfectoEll = indicativoPreteritoImperfectoEll
        
        copy.indicativoPreteritoPerfectoSimpleYo = indicativoPreteritoPerfectoSimpleYo
        copy.indicativoPreteritoPerfectoSimpleTu = indicativoPreteritoPerfectoSimpleTu
        copy.indicativoPreteritoPerfectoSimpleEl = indicativoPreteritoPerfectoSimpleEl
        copy.indicativoPreteritoPerfectoSimpleN = indicativoPreteritoPerfectoSimpleN
        copy.indicativoPreteritoPerfectoSimpleV = indicativoPreteritoPerfectoSimpleV
        copy.indicativoPreteritoPerfectoSimpleEll = indicativoPreteritoPerfectoSimpleEll
        
        copy.indicativoFuturoSimpleYo = indicativoFuturoSimpleYo
        copy.indicativoFuturoSimpleTu = indicativoFuturoSimpleTu
        copy.indicativoFuturoSimpleEl = indicativoFuturoSimpleEl
        copy.indicativoFuturoSimpleN = indicativoFuturoSimpleN
        copy.indicativoFuturoSimpleV = indicativoFuturoSimpleV
        copy.indicativoFuturoSimpleEll = indicativoFuturoSimpleEll
        
        copy.indicativoCondicionalSimpleYo = indicativoCondicionalSimpleYo
        copy.indicativoCondicionalSimpleTu = indicativoCondicionalSimpleTu
        copy.indicativoCondicionalSimpleEl = indicativoCondicionalSimpleEl
        copy.indicativoCondicionalSimpleN = indicativoCondicionalSimpleN
        copy.indicativoCondicionalSimpleV = indicativoCondicionalSimpleV
        copy.indicativoCondicionalSimpleEll = indicativoCondicionalSimpleEll
        
        copy.indicativoPreteritoPerfectoCompuestoYo = indicativoPreteritoPerfectoCompuestoYo
        copy.indicativoPreteritoPerfectoCompuestoTu = indicativoPreteritoPerfectoCompuestoTu
        copy.indicativoPreteritoPerfectoCompuestoEl = indicativoPreteritoPerfectoCompuestoEl
        copy.indicativoPreteritoPerfectoCompuestoN = indicativoPreteritoPerfectoCompuestoN
        copy.indicativoPreteritoPerfectoCompuestoV = indicativoPreteritoPerfectoCompuestoV
        copy.indicativoPreteritoPerfectoCompuestoEll = indicativoPreteritoPerfectoCompuestoEll
        
        copy.indicativoPreteritoPluscuamperfectoYo = indicativoPreteritoPluscuamperfectoYo
        copy.indicativoPreteritoPluscuamperfectoTu = indicativoPreteritoPluscuamperfectoTu
        copy.indicativoPreteritoPluscuamperfectoEl = indicativoPreteritoPluscuamperfectoEl
        copy.indicativoPreteritoPluscuamperfectoN = indicativoPreteritoPluscuamperfectoN
        copy.indicativoPreteritoPluscuamperfectoV = indicativoPreteritoPluscuamperfectoV
        copy.indicativoPreteritoPluscuamperfectoEll = indicativoPreteritoPluscuamperfectoEll
        
        copy.indicativoPreteritoAnteriorYo = indicativoPreteritoAnteriorYo
        copy.indicativoPreteritoAnteriorTu = indicativoPreteritoAnteriorTu
        copy.indicativoPreteritoAnteriorEl = indicativoPreteritoAnteriorEl
        copy.indicativoPreteritoAnteriorN = indicativoPreteritoAnteriorN
        copy.indicativoPreteritoAnteriorV = indicativoPreteritoAnteriorV
        copy.indicativoPreteritoAnteriorEll = indicativoPreteritoAnteriorEll
        
        copy.indicativoFuturoCompuestoYo = indicativoFuturoCompuestoYo
        copy.indicativoFuturoCompuestoTu = indicativoFuturoCompuestoTu
        copy.indicativoFuturoCompuestoEl = indicativoFuturoCompuestoEl
        copy.indicativoFuturoCompuestoN = indicativoFuturoCompuestoN
        copy.indicativoFuturoCompuestoV = indicativoFuturoCompuestoV
        copy.indicativoFuturoCompuestoEll = indicativoFuturoCompuestoEll
        
        copy.indicativoCondicionalCompuestoYo = indicativoCondicionalCompuestoYo
        copy.indicativoCondicionalCompuestoTu = indicativoCondicionalCompuestoTu
        copy.indicativoCondicionalCompuestoEl = indicativoCondicionalCompuestoEl
        copy.indicativoCondicionalCompuestoN = indicativoCondicionalCompuestoN
        copy.indicativoCondicionalCompuestoV = indicativoCondicionalCompuestoV
        copy.indicativoCondicionalCompuestoEll = indicativoCondicionalCompuestoEll
        
        copy.subjuntivoPresenteYo = subjuntivoPresenteYo
        copy.subjuntivoPresenteTu = subjuntivoPresenteTu
        copy.subjuntivoPresenteEl = subjuntivoPresenteEl
        copy.subjuntivoPresenteN = subjuntivoPresenteN
        copy.subjuntivoPresenteV = subjuntivoPresenteV
        copy.subjuntivoPresenteEll = subjuntivoPresenteEll
        
        copy.subjuntivoPreteritoImperfectoYo = subjuntivoPreteritoImperfectoYo
        copy.subjuntivoPreteritoImperfectoTu = subjuntivoPreteritoImperfectoTu
        copy.subjuntivoPreteritoImperfectoEl = subjuntivoPreteritoImperfectoEl
        copy.subjuntivoPreteritoImperfectoN = subjuntivoPreteritoImperfectoN
        copy.subjuntivoPreteritoImperfectoV = subjuntivoPreteritoImperfectoV
        copy.subjuntivoPreteritoImperfectoEll = subjuntivoPreteritoImperfectoEll
        
        copy.subjuntivoFuturoSimpleYo = subjuntivoFuturoSimpleYo
        copy.subjuntivoFuturoSimpleTu = subjuntivoFuturoSimpleTu
        copy.subjuntivoFuturoSimpleEl = subjuntivoFuturoSimpleEl
        copy.subjuntivoFuturoSimpleN = subjuntivoFuturoSimpleN
        copy.subjuntivoFuturoSimpleV = subjuntivoFuturoSimpleV
        copy.subjuntivoFuturoSimpleEll = subjuntivoFuturoSimpleEll
        
        copy.subjuntivoPreteritoPerfectoCompuestoYo = subjuntivoPreteritoPerfectoCompuestoYo
        copy.subjuntivoPreteritoPerfectoCompuestoTu = subjuntivoPreteritoPerfectoCompuestoTu
        copy.subjuntivoPreteritoPerfectoCompuestoEl = subjuntivoPreteritoPerfectoCompuestoEl
        copy.subjuntivoPreteritoPerfectoCompuestoN = subjuntivoPreteritoPerfectoCompuestoN
        copy.subjuntivoPreteritoPerfectoCompuestoV = subjuntivoPreteritoPerfectoCompuestoV
        copy.subjuntivoPreteritoPerfectoCompuestoEll = subjuntivoPreteritoPerfectoCompuestoEll
        
        copy.subjuntivoPreteritoPluscuamperfectoYo = subjuntivoPreteritoPluscuamperfectoYo
        copy.subjuntivoPreteritoPluscuamperfectoTu = subjuntivoPreteritoPluscuamperfectoTu
        copy.subjuntivoPreteritoPluscuamperfectoEl = subjuntivoPreteritoPluscuamperfectoEl
        copy.subjuntivoPreteritoPluscuamperfectoN = subjuntivoPreteritoPluscuamperfectoN
        copy.subjuntivoPreteritoPluscuamperfectoV = subjuntivoPreteritoPluscuamperfectoV
        copy.subjuntivoPreteritoPluscuamperfectoEll = subjuntivoPreteritoPluscuamperfectoEll
        
        copy.subjuntivoFuturoCompuestoYo = subjuntivoFuturoCompuestoYo
        copy.subjuntivoFuturoCompuestoTu = subjuntivoFuturoCompuestoTu
        copy.subjuntivoFuturoCompuestoEl = subjuntivoFuturoCompuestoEl
        copy.subjuntivoFuturoCompuestoN = subjuntivoFuturoCompuestoN
        copy.subjuntivoFuturoCompuestoV = subjuntivoFuturoCompuestoV
        copy.subjuntivoFuturoCompuestoEll = subjuntivoFuturoCompuestoEll
        
        return copy
    }
    
}
