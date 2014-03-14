(benchmark bedlam
:status sat
:logic QF_BV
  :extrafuns ((Blu0xyz BitVec[5]))
  :extrafuns ((Blu1xyz BitVec[5]))
  :extrafuns ((Blu2xyz BitVec[5]))
  :extrafuns ((Blu3xyz BitVec[5]))
  :extrafuns ((Wte0xyz BitVec[5]))
  :extrafuns ((Wte1xyz BitVec[5]))
  :extrafuns ((Wte2xyz BitVec[5]))
  :extrafuns ((Wte3xyz BitVec[5]))
  :extrafuns ((Wte4xyz BitVec[5]))
  :extrafuns ((Red0xyz BitVec[5]))
  :extrafuns ((Red1xyz BitVec[5]))
  :extrafuns ((Red2xyz BitVec[5]))
  :extrafuns ((Red3xyz BitVec[5]))
  :extrafuns ((Blu0shr BitVec[100]))
  :extrafuns ((Blu1shr BitVec[100]))
  :extrafuns ((Blu2shr BitVec[100]))
  :extrafuns ((Blu3shr BitVec[100]))
  :extrafuns ((Wte0shr BitVec[100]))
  :extrafuns ((Wte1shr BitVec[100]))
  :extrafuns ((Wte2shr BitVec[100]))
  :extrafuns ((Wte3shr BitVec[100]))
  :extrafuns ((Wte4shr BitVec[100]))
  :extrafuns ((Red0shr BitVec[100]))
  :extrafuns ((Red1shr BitVec[100]))
  :extrafuns ((Red2shr BitVec[100]))
  :extrafuns ((Red3shr BitVec[100]))

:formula
;
;Define the grid
;
	(let (?empty (bv0[100]))
	(let (?fullGrid (repeat[100] bit1))
	(let (?grid (bv40893088214061581890376205375[100]))

;
;Define the 12 pieces in 231 total orientation
;
(let (?Blu0_0(bv618989517851193640631664640[100]))
(let (?Blu0_1(bv19807041237309219372940656640[100]))
(let (?Blu0_2(bv19807060108327844377614352384[100]))
(let (?Blu0_3(bv19807060126774570859137859584[100]))
(let (?Blu0_4(bv19807060126775133259335467008[100]))
(let (?Blu0_5(bv20426030127970533965308100608[100]))
(let (?Blu0_6(bv158456358085094336749581107200[100]))
(let (?Blu0_7(bv193428131138340667952988160000[100]))
(let (?Blu0_8(bv316912664224157643408041574400[100]))
(let (?Blu0_9(bv316912678391256669804512149504[100]))
(let (?Blu0_10(bv316912683113622871199180652544[100]))
(let (?Blu0_11(bv316912683113623293411645718528[100]))
(let (?Blu0_12(bv332696385557945948879139635200[100]))
(let (?Blu0_13(bv347087438514638494574841954304[100]))
(let (?Blu0_14(bv351729713661958670605713670144[100]))
(let (?Blu0_15(bv352193941176690688208800841728[100]))
(let (?Blu0_16(bv475369003419785204254111694848[100]))
(let (?Blu0_17(bv505389021038256497227567464448[100]))
(let (?Blu0_18(bv633825319612323204251533705216[100]))
(let (?Blu0_19(bv633825333170680362310844809216[100]))
(let (?Blu0_20(bv653632341351423357171338838016[100]))
(let (?Blu0_21(bv668797106223926693514251862016[100]))
(let (?Blu0_22(bv950737964338271781206439755776[100]))
(let (?Blu0_23(bv965902715652417959490041675776[100]))
(let (?Blu1_0(bv9903540089192698011925348352[100]))
(let (?Blu1_1(bv9903540107639433289541877760[100]))
(let (?Blu1_2(bv9903548943629853392510124032[100]))
(let (?Blu1_3(bv9903553665996327466062315520[100]))
(let (?Blu1_4(bv19807050958742783267920936960[100]))
(let (?Blu1_5(bv19807050967966137712589668352[100]))
(let (?Blu1_6(bv19807069553060809567148965888[100]))
(let (?Blu1_7(bv29710570691953369553077010432[100]))
(let (?Blu1_8(bv29710580441057612508575039488[100]))
(let (?Blu1_9(bv34662330839871518615818731520[100]))
(let (?Blu1_10(bv316912660387234313126501416960[100]))
(let (?Blu1_11(bv316912660534807984241201119232[100]))
(let (?Blu1_12(bv316912678981552339425729445888[100]))
(let (?Blu1_13(bv326816171404358060701103685632[100]))
(let (?Blu1_14(bv326816203427905772660885291008[100]))
(let (?Blu1_15(bv327125656266605453180152053760[100]))
(let (?Blu1_16(bv346932696600023632399185215488[100]))
(let (?Blu1_17(bv351574980601780963810641707008[100]))
(let (?Blu1_18(bv633825319889024910714944356352[100]))
(let (?Blu1_19(bv633825328743462066095529132032[100]))
(let (?Blu1_20(bv654251311647767190822245629952[100]))
(let (?Blu1_21(bv664154831371754422662732972032[100]))
(let (?Blu1_22(bv1109194284939581597228258557952[100]))
(let (?Blu1_23(bv1119097795809131673688161124352[100]))
(let (?Blu2_0(bv618989812999081227798446080[100]))
(let (?Blu2_1(bv4951770634892154966621814784[100]))
(let (?Blu2_2(bv9903521199727048008321204224[100]))
(let (?Blu2_3(bv9903530081834029228400574464[100]))
(let (?Blu2_4(bv9903540236766641805508739072[100]))
(let (?Blu2_5(bv19807060108327852623951560704[100]))
(let (?Blu2_6(bv19807069571507536048672473088[100]))
(let (?Blu2_7(bv29710570682730006312315256832[100]))
(let (?Blu2_8(bv193118646423667228063616204800[100]))
(let (?Blu2_9(bv316912659796939065717749186560[100]))
(let (?Blu2_10(bv316912660396457403688379482112[100]))
(let (?Blu2_11(bv316912683261196683051368710144[100]))
(let (?Blu2_12(bv326816198705539571266216787968[100]))
(let (?Blu2_13(bv346932696018951194077334339584[100]))
(let (?Blu2_14(bv351574971747343808430056931328[100]))
(let (?Blu2_15(bv633825328448314178508362350592[100]))
(let (?Blu2_16(bv633825333465827986015220924416[100]))
(let (?Blu2_17(bv653632341628124518276982112256[100]))
(let (?Blu2_18(bv654560796362440630711617585152[100]))
(let (?Blu2_19(bv664154849966072448961961000960[100]))
(let (?Blu2_20(bv950737969650934355909767331840[100]))
(let (?Blu2_21(bv960950955790424343569798004736[100]))
(let (?Blu2_22(bv1119097800236350251378453512192[100]))
(let (?Blu2_23(bv1129001325272999776447291719680[100]))
(let (?Blu3_0(bv9903548943630407546370523136[100]))
(let (?Blu3_1(bv14855309100771365696013598720[100]))
(let (?Blu3_2(bv19807050958743047150711603200[100]))
(let (?Blu3_3(bv20426020978385455813184454656[100]))
(let (?Blu3_4(bv30020065432432213503590268928[100]))
(let (?Blu3_5(bv316912678981552075542938779648[100]))
(let (?Blu3_6(bv326816171275230852185136824320[100]))
(let (?Blu3_7(bv346623225167005925580690423808[100]))
(let (?Blu3_8(bv485272496285312783298515173376[100]))
(let (?Blu3_9(bv633825319889024356561083957248[100]))
(let (?Blu3_10(bv663535861361335104562138185728[100]))
(let (?Blu3_11(bv950737960058626874630847070208[100]))
(let (?Red0_0(bv309494777372332097932361728[100]))
(let (?Red0_1(bv618989527074548085300396032[100]))
(let (?Red0_2(bv4951765912525672096976601088[100]))
(let (?Red0_3(bv9903520609431255241801596928[100]))
(let (?Red0_4(bv19807041218862484095324127232[100]))
(let (?Red0_5(bv19807060551049684004701732864[100]))
(let (?Red0_6(bv158456358232668007864280809472[100]))
(let (?Red0_7(bv193118646276093275473939791872[100]))
(let (?Red0_8(bv316912659501791169334489382912[100]))
(let (?Red0_9(bv316912678695627524808254685184[100]))
(let (?Red0_10(bv327744625410027799816397914112[100]))
(let (?Red0_11(bv346623211295054390947200630784[100]))
(let (?Red0_12(bv633825319003581494244048633856[100]))
(let (?Red0_13(bv633825329057056152398638088192[100]))
(let (?Red0_14(bv633825333760975891194573750272[100]))
(let (?Red0_15(bv654560795790591564426621485056[100]))
(let (?Red0_16(bv663535861647259655296822280192[100]))
(let (?Red0_17(bv668487621804401158804232732672[100]))
(let (?Red0_18(bv960641479930188340535987535872[100]))
(let (?Red0_19(bv960950964940009404129735606272[100]))
(let (?Red0_20(bv970545009689204629949447667712[100]))
(let (?Red0_21(bv971163979708846757136943808512[100]))
(let (?Red0_22(bv1114146040079208730278857015296[100]))
(let (?Red0_23(bv1129001334717732742186582147072[100]))
(let (?Red1_0(bv19807060126774587901568090112[100]))
(let (?Red1_1(bv316912683113623011936669007872[100]))
(let (?Red1_2(bv351884456166869343140076060672[100]))
(let (?Red2_0(bv618980368266115488508018688[100]))
(let (?Red2_1(bv4951788934062276086497017856[100]))
(let (?Red2_2(bv9903530054164757542766379008[100]))
(let (?Red2_3(bv14855300246334210315428823040[100]))
(let (?Red2_4(bv19807041514010090207514198016[100]))
(let (?Red2_5(bv20426039572703482112412483584[100]))
(let (?Red2_6(bv20735515137791861441846837248[100]))
(let (?Red2_7(bv29710570682730278991198945280[100]))
(let (?Red2_8(bv173311606385396954023935868928[100]))
(let (?Red2_9(bv316912660405680775725234257920[100]))
(let (?Red2_10(bv316912678391256828134186549248[100]))
(let (?Red2_11(bv326816170694158413863285948416[100]))
(let (?Red2_12(bv326816198705539852741193498624[100]))
(let (?Red2_13(bv505079536618730962517548335104[100]))
(let (?Red2_14(bv505079540750801635028487897088[100]))
(let (?Red2_15(bv633825319593876468973917175808[100]))
(let (?Red2_16(bv633825328891035455735252123648[100]))
(let (?Red2_17(bv653632341628124509480889090048[100]))
(let (?Red2_18(bv663845346076008544451510140928[100]))
(let (?Red2_19(bv663845364956251103893236219904[100]))
(let (?Red2_20(bv950737964485845452321139458048[100]))
(let (?Red2_21(bv950737969650933810551999954944[100]))
(let (?Red2_22(bv960641470789826370537927999488[100]))
(let (?Red2_23(bv970545004966837584129849032704[100]))
(let (?Red3_0(bv9903530644460004951518609408[100]))
(let (?Red3_1(bv9903530662906467550251450368[100]))
(let (?Red3_2(bv9903548943630126071393812480[100]))
(let (?Red3_3(bv9903549091203797186093514752[100]))
(let (?Red3_4(bv14855290801601244576138395648[100]))
(let (?Red3_5(bv19807050958742774471827914752[100]))
(let (?Red3_6(bv19807050977189509749444444160[100]))
(let (?Red3_7(bv19807060403475740211118342144[100]))
(let (?Red3_8(bv20426030423118421552474882048[100]))
(let (?Red3_9(bv30329550442253558572315049984[100]))
(let (?Red3_10(bv316912678686404715721353330688[100]))
(let (?Red3_11(bv316912678833978105361076322304[100]))
(let (?Red3_12(bv316912678981552620900706156544[100]))
(let (?Red3_13(bv326816171266007480148282048512[100]))
(let (?Red3_14(bv331767931413925629211023769600[100]))
(let (?Red3_15(bv346623211304277754187962384384[100]))
(let (?Red3_16(bv505079536323583057338195509248[100]))
(let (?Red3_17(bv505079545473168117898133110784[100]))
(let (?Red3_18(bv633825319889024365357176979456[100]))
(let (?Red3_19(bv633825329038609425917114580992[100]))
(let (?Red3_20(bv663845346361933077594008190976[100]))
(let (?Red3_21(bv663845346657080982773361016832[100]))
(let (?Red3_22(bv950737964633419404910815870976[100]))
(let (?Red3_23(bv960641484652554541930656038912[100]))
(let (?Wte0_0(bv618970628385825112004231168[100]))
(let (?Wte0_1(bv20426030127971079323075477504[100]))
(let (?Wte0_2(bv158456339195628968220953673728[100]))
(let (?Wte0_3(bv174240060529417273692051734528[100]))
(let (?Wte0_4(bv475369003419785485729088405504[100]))
(let (?Wte0_5(bv505698506048077842296292245504[100]))
(let (?Wte0_6(bv633825319593876460727579967488[100]))
(let (?Wte0_7(bv633825328448314020178687950848[100]))
(let (?Wte0_8(bv653632341351423340128908607488[100]))
(let (?Wte0_9(bv664000088571695844949017755648[100]))
(let (?Wte0_10(bv950737964338271640468951400448[100]))
(let (?Wte0_11(bv965747973147507286955679285248[100]))
(let (?Wte1_0(bv9903530644459732272634920960[100]))
(let (?Wte1_1(bv9903530653683095513396674560[100]))
(let (?Wte1_2(bv9903530792033676066218311680[100]))
(let (?Wte1_3(bv19807060403475749007211364352[100]))
(let (?Wte1_4(bv19807060421922475488734871552[100]))
(let (?Wte1_5(bv316912678686404434246376620032[100]))
(let (?Wte1_6(bv316912683408770635641045123072[100]))
(let (?Wte1_7(bv346932696304875727219832389632[100]))
(let (?Wte1_8(bv351574971452195903250704105472[100]))
(let (?Wte1_9(bv633825329038609971274881957888[100]))
(let (?Wte1_10(bv664154831666902327842085797888[100]))
(let (?Wte1_11(bv1119097804958716734248098725888[100]))
(let (?Wte2_0(bv9903548943629844596417101824[100]))
(let (?Wte2_1(bv19807050958742765675734892544[100]))
(let (?Wte2_2(bv29710580422610868434865487872[100]))
(let (?Wte2_3(bv316912678981552057950752735232[100]))
(let (?Wte2_4(bv326816171256784108111427272704[100]))
(let (?Wte2_5(bv346623220444639442711045210112[100]))
(let (?Wte2_6(bv633825319889024347764990935040[100]))
(let (?Wte2_7(bv653632369076879682364608872448[100]))
(let (?Wte2_8(bv663535861352111732525283409920[100]))
(let (?Wte2_9(bv950737959911052922041170657280[100]))
(let (?Wte2_10(bv960641489374921024800301252608[100]))
(let (?Wte2_11(bv970544991390033945879619043328[100]))
(let (?Wte3_0(bv309504517253203016575614976[100]))
(let (?Wte3_1(bv928464778568278161672372224[100]))
(let (?Wte3_2(bv9903520609431536716778307584[100]))
(let (?Wte3_3(bv19807041218862756774207815680[100]))
(let (?Wte3_4(bv19807074275427274844608135168[100]))
(let (?Wte3_5(bv34662325969931083156497104896[100]))
(let (?Wte3_6(bv158456330783912826184468004864[100]))
(let (?Wte3_7(bv163408118242235576374200893440[100]))
(let (?Wte3_8(bv316912659501790623976722006016[100]))
(let (?Wte3_9(bv327125683715360634859964858368[100]))
(let (?Wte3_10(bv327744625419251171853252689920[100]))
(let (?Wte3_11(bv346623211590202304922646478848[100]))
(let (?Wte3_12(bv633825319003581485447955611648[100]))
(let (?Wte3_13(bv633825328752684875182430486528[100]))
(let (?Wte3_14(bv653632341775698453274472480768[100]))
(let (?Wte3_15(bv654251310789993591394751479808[100]))
(let (?Wte3_16(bv663535879946430321774464860160[100]))
(let (?Wte3_17(bv668487640103571279924107935744[100]))
(let (?Wte3_18(bv950737969669380537033523462144[100]))
(let (?Wte3_19(bv960641470780603007297166245888[100]))
(let (?Wte3_20(bv970545000244471382735180529664[100]))
(let (?Wte3_21(bv971163970264113791397653381120[100]))
(let (?Wte3_22(bv1109194294679462468146901811200[100]))
(let (?Wte3_23(bv1114146035504416199998888214528[100]))
(let (?Wte4_0(bv618998962584141787736047616[100]))
(let (?Wte4_1(bv4951780079625120705912242176[100]))
(let (?Wte4_2(bv29710561237997322048001540096[100]))
(let (?Wte4_3(bv193118646718815133242969030656[100]))
(let (?Wte4_4(bv316912659824608337403383382016[100]))
(let (?Wte4_5(bv326816179816074202737589354496[100]))
(let (?Wte4_6(bv633825333318254033425544511488[100]))
(let (?Wte4_7(bv653632341332976621893722308608[100]))
(let (?Wte4_8(bv654560814661610751831492788224[100]))
(let (?Wte4_9(bv950737969060638563143247724544[100]))
(let (?Wte4_10(bv960950955504499810427299954688[100]))
(let (?Wte4_11(bv1129001320550633293577646505984[100]))
;
;Define a formula to pick the orientation
;
;Pick Blu0
(let (?Blu0 (ite (= Blu0xyz bv0[5]) ?Blu0_0
			(ite (= Blu0xyz bv1[5]) ?Blu0_1
			(ite (= Blu0xyz bv2[5]) ?Blu0_2
			(ite (= Blu0xyz bv3[5]) ?Blu0_3
			(ite (= Blu0xyz bv4[5]) ?Blu0_4
			(ite (= Blu0xyz bv5[5]) ?Blu0_5
			(ite (= Blu0xyz bv6[5]) ?Blu0_6
			(ite (= Blu0xyz bv7[5]) ?Blu0_7
			(ite (= Blu0xyz bv8[5]) ?Blu0_8
			(ite (= Blu0xyz bv9[5]) ?Blu0_9
			(ite (= Blu0xyz bv10[5]) ?Blu0_10
			(ite (= Blu0xyz bv11[5]) ?Blu0_11
			(ite (= Blu0xyz bv12[5]) ?Blu0_12
			(ite (= Blu0xyz bv13[5]) ?Blu0_13
			(ite (= Blu0xyz bv14[5]) ?Blu0_14
			(ite (= Blu0xyz bv15[5]) ?Blu0_15
			(ite (= Blu0xyz bv16[5]) ?Blu0_16
			(ite (= Blu0xyz bv17[5]) ?Blu0_17
			(ite (= Blu0xyz bv18[5]) ?Blu0_18
			(ite (= Blu0xyz bv19[5]) ?Blu0_19
			(ite (= Blu0xyz bv20[5]) ?Blu0_20
			(ite (= Blu0xyz bv21[5]) ?Blu0_21
			(ite (= Blu0xyz bv22[5]) ?Blu0_22
			(ite (= Blu0xyz bv23[5]) ?Blu0_23 ?empty)))))))))))))))))))))))))
;Pick Blu1
(let (?Blu1 (ite (= Blu1xyz bv0[5]) ?Blu1_0
			(ite (= Blu1xyz bv1[5]) ?Blu1_1
			(ite (= Blu1xyz bv2[5]) ?Blu1_2
			(ite (= Blu1xyz bv3[5]) ?Blu1_3
			(ite (= Blu1xyz bv4[5]) ?Blu1_4
			(ite (= Blu1xyz bv5[5]) ?Blu1_5
			(ite (= Blu1xyz bv6[5]) ?Blu1_6
			(ite (= Blu1xyz bv7[5]) ?Blu1_7
			(ite (= Blu1xyz bv8[5]) ?Blu1_8
			(ite (= Blu1xyz bv9[5]) ?Blu1_9
			(ite (= Blu1xyz bv10[5]) ?Blu1_10
			(ite (= Blu1xyz bv11[5]) ?Blu1_11
			(ite (= Blu1xyz bv12[5]) ?Blu1_12
			(ite (= Blu1xyz bv13[5]) ?Blu1_13
			(ite (= Blu1xyz bv14[5]) ?Blu1_14
			(ite (= Blu1xyz bv15[5]) ?Blu1_15
			(ite (= Blu1xyz bv16[5]) ?Blu1_16
			(ite (= Blu1xyz bv17[5]) ?Blu1_17
			(ite (= Blu1xyz bv18[5]) ?Blu1_18
			(ite (= Blu1xyz bv19[5]) ?Blu1_19
			(ite (= Blu1xyz bv20[5]) ?Blu1_20
			(ite (= Blu1xyz bv21[5]) ?Blu1_21
			(ite (= Blu1xyz bv22[5]) ?Blu1_22
			(ite (= Blu1xyz bv23[5]) ?Blu1_23 ?empty)))))))))))))))))))))))))
;Pick Blu2
(let (?Blu2 (ite (= Blu2xyz bv0[5]) ?Blu2_0
			(ite (= Blu2xyz bv1[5]) ?Blu2_1
			(ite (= Blu2xyz bv2[5]) ?Blu2_2
			(ite (= Blu2xyz bv3[5]) ?Blu2_3
			(ite (= Blu2xyz bv4[5]) ?Blu2_4
			(ite (= Blu2xyz bv5[5]) ?Blu2_5
			(ite (= Blu2xyz bv6[5]) ?Blu2_6
			(ite (= Blu2xyz bv7[5]) ?Blu2_7
			(ite (= Blu2xyz bv8[5]) ?Blu2_8
			(ite (= Blu2xyz bv9[5]) ?Blu2_9
			(ite (= Blu2xyz bv10[5]) ?Blu2_10
			(ite (= Blu2xyz bv11[5]) ?Blu2_11
			(ite (= Blu2xyz bv12[5]) ?Blu2_12
			(ite (= Blu2xyz bv13[5]) ?Blu2_13
			(ite (= Blu2xyz bv14[5]) ?Blu2_14
			(ite (= Blu2xyz bv15[5]) ?Blu2_15
			(ite (= Blu2xyz bv16[5]) ?Blu2_16
			(ite (= Blu2xyz bv17[5]) ?Blu2_17
			(ite (= Blu2xyz bv18[5]) ?Blu2_18
			(ite (= Blu2xyz bv19[5]) ?Blu2_19
			(ite (= Blu2xyz bv20[5]) ?Blu2_20
			(ite (= Blu2xyz bv21[5]) ?Blu2_21
			(ite (= Blu2xyz bv22[5]) ?Blu2_22
			(ite (= Blu2xyz bv23[5]) ?Blu2_23 ?empty)))))))))))))))))))))))))
;Pick Blu3
(let (?Blu3 (ite (= Blu3xyz bv0[5]) ?Blu3_0
			(ite (= Blu3xyz bv1[5]) ?Blu3_1
			(ite (= Blu3xyz bv2[5]) ?Blu3_2
			(ite (= Blu3xyz bv3[5]) ?Blu3_3
			(ite (= Blu3xyz bv4[5]) ?Blu3_4
			(ite (= Blu3xyz bv5[5]) ?Blu3_5
			(ite (= Blu3xyz bv6[5]) ?Blu3_6
			(ite (= Blu3xyz bv7[5]) ?Blu3_7
			(ite (= Blu3xyz bv8[5]) ?Blu3_8
			(ite (= Blu3xyz bv9[5]) ?Blu3_9
			(ite (= Blu3xyz bv10[5]) ?Blu3_10
			(ite (= Blu3xyz bv11[5]) ?Blu3_11 ?empty)))))))))))))
;Pick Wte0
(let (?Wte0 (ite (= Wte0xyz bv0[5]) ?Wte0_0
			(ite (= Wte0xyz bv1[5]) ?Wte0_1
			(ite (= Wte0xyz bv2[5]) ?Wte0_2
			(ite (= Wte0xyz bv3[5]) ?Wte0_3
			(ite (= Wte0xyz bv4[5]) ?Wte0_4
			(ite (= Wte0xyz bv5[5]) ?Wte0_5
			(ite (= Wte0xyz bv6[5]) ?Wte0_6
			(ite (= Wte0xyz bv7[5]) ?Wte0_7
			(ite (= Wte0xyz bv8[5]) ?Wte0_8
			(ite (= Wte0xyz bv9[5]) ?Wte0_9
			(ite (= Wte0xyz bv10[5]) ?Wte0_10
			(ite (= Wte0xyz bv11[5]) ?Wte0_11 ?empty)))))))))))))
;Pick Wte1
(let (?Wte1 (ite (= Wte1xyz bv0[5]) ?Wte1_0
			(ite (= Wte1xyz bv1[5]) ?Wte1_1
			(ite (= Wte1xyz bv2[5]) ?Wte1_2
			(ite (= Wte1xyz bv3[5]) ?Wte1_3
			(ite (= Wte1xyz bv4[5]) ?Wte1_4
			(ite (= Wte1xyz bv5[5]) ?Wte1_5
			(ite (= Wte1xyz bv6[5]) ?Wte1_6
			(ite (= Wte1xyz bv7[5]) ?Wte1_7
			(ite (= Wte1xyz bv8[5]) ?Wte1_8
			(ite (= Wte1xyz bv9[5]) ?Wte1_9
			(ite (= Wte1xyz bv10[5]) ?Wte1_10
			(ite (= Wte1xyz bv11[5]) ?Wte1_11 ?empty)))))))))))))
;Pick Wte2
(let (?Wte2 (ite (= Wte2xyz bv0[5]) ?Wte2_0
			(ite (= Wte2xyz bv1[5]) ?Wte2_1
			(ite (= Wte2xyz bv2[5]) ?Wte2_2
			(ite (= Wte2xyz bv3[5]) ?Wte2_3
			(ite (= Wte2xyz bv4[5]) ?Wte2_4
			(ite (= Wte2xyz bv4[5]) ?Wte2_5
			(ite (= Wte2xyz bv5[5]) ?Wte2_6
			(ite (= Wte2xyz bv6[5]) ?Wte2_7
			(ite (= Wte2xyz bv7[5]) ?Wte2_8
			(ite (= Wte2xyz bv8[5]) ?Wte2_9
			(ite (= Wte2xyz bv9[5]) ?Wte2_10
			(ite (= Wte2xyz bv10[5]) ?Wte2_11 ?empty)))))))))))))
;Pick Wte3
(let (?Wte3 (ite (= Wte3xyz bv0[5]) ?Wte3_0
			(ite (= Wte3xyz bv1[5]) ?Wte3_1
			(ite (= Wte3xyz bv2[5]) ?Wte3_2
			(ite (= Wte3xyz bv3[5]) ?Wte3_3
			(ite (= Wte3xyz bv4[5]) ?Wte3_4
			(ite (= Wte3xyz bv5[5]) ?Wte3_5
			(ite (= Wte3xyz bv6[5]) ?Wte3_6
			(ite (= Wte3xyz bv7[5]) ?Wte3_7
			(ite (= Wte3xyz bv8[5]) ?Wte3_8
			(ite (= Wte3xyz bv9[5]) ?Wte3_9
			(ite (= Wte3xyz bv10[5]) ?Wte3_10
			(ite (= Wte3xyz bv11[5]) ?Wte3_11
			(ite (= Wte3xyz bv12[5]) ?Wte3_12
			(ite (= Wte3xyz bv13[5]) ?Wte3_13
			(ite (= Wte3xyz bv14[5]) ?Wte3_14
			(ite (= Wte3xyz bv15[5]) ?Wte3_15
			(ite (= Wte3xyz bv16[5]) ?Wte3_16
			(ite (= Wte3xyz bv17[5]) ?Wte3_17
			(ite (= Wte3xyz bv18[5]) ?Wte3_18
			(ite (= Wte3xyz bv19[5]) ?Wte3_19
			(ite (= Wte3xyz bv20[5]) ?Wte3_20
			(ite (= Wte3xyz bv21[5]) ?Wte3_21
			(ite (= Wte3xyz bv22[5]) ?Wte3_22
			(ite (= Wte3xyz bv23[5]) ?Wte3_23 ?empty)))))))))))))))))))))))))
;Pick Wte4
(let (?Wte4 (ite (= Wte4xyz bv0[5]) ?Wte4_0
			(ite (= Wte4xyz bv1[5]) ?Wte4_1
			(ite (= Wte4xyz bv2[5]) ?Wte4_2
			(ite (= Wte4xyz bv3[5]) ?Wte4_3
			(ite (= Wte4xyz bv4[5]) ?Wte4_4
			(ite (= Wte4xyz bv5[5]) ?Wte4_5
			(ite (= Wte4xyz bv6[5]) ?Wte4_6
			(ite (= Wte4xyz bv7[5]) ?Wte4_7
			(ite (= Wte4xyz bv8[5]) ?Wte4_8
			(ite (= Wte4xyz bv9[5]) ?Wte4_9
			(ite (= Wte4xyz bv10[5]) ?Wte4_10
			(ite (= Wte4xyz bv11[5]) ?Wte4_11 ?empty)))))))))))))
;Pick Red0
(let (?Red0 (ite (= Red0xyz bv0[5]) ?Red0_0
			(ite (= Red0xyz bv1[5]) ?Red0_1
			(ite (= Red0xyz bv2[5]) ?Red0_2
			(ite (= Red0xyz bv3[5]) ?Red0_3
			(ite (= Red0xyz bv4[5]) ?Red0_4
			(ite (= Red0xyz bv5[5]) ?Red0_5
			(ite (= Red0xyz bv6[5]) ?Red0_6
			(ite (= Red0xyz bv7[5]) ?Red0_7
			(ite (= Red0xyz bv8[5]) ?Red0_8
			(ite (= Red0xyz bv9[5]) ?Red0_9
			(ite (= Red0xyz bv10[5]) ?Red0_10
			(ite (= Red0xyz bv11[5]) ?Red0_11
			(ite (= Red0xyz bv12[5]) ?Red0_12
			(ite (= Red0xyz bv13[5]) ?Red0_13
			(ite (= Red0xyz bv14[5]) ?Red0_14
			(ite (= Red0xyz bv15[5]) ?Red0_15
			(ite (= Red0xyz bv16[5]) ?Red0_16
			(ite (= Red0xyz bv17[5]) ?Red0_17
			(ite (= Red0xyz bv18[5]) ?Red0_18
			(ite (= Red0xyz bv19[5]) ?Red0_19
			(ite (= Red0xyz bv20[5]) ?Red0_20
			(ite (= Red0xyz bv21[5]) ?Red0_21
			(ite (= Red0xyz bv22[5]) ?Red0_22
			(ite (= Red0xyz bv23[5]) ?Red0_23 ?empty)))))))))))))))))))))))))
;Pick Red1
(let (?Red1 (ite (= Red1xyz bv0[5]) ?Red1_0
			(ite (= Red1xyz bv1[5]) ?Red1_1
			(ite (= Red1xyz bv2[5]) ?Red1_2 ?empty))))
;Pick Red2
(let (?Red2 (ite (= Red2xyz bv0[5]) ?Red2_0
			(ite (= Red2xyz bv1[5]) ?Red2_1
			(ite (= Red2xyz bv2[5]) ?Red2_2
			(ite (= Red2xyz bv3[5]) ?Red2_3
			(ite (= Red2xyz bv4[5]) ?Red2_4
			(ite (= Red2xyz bv5[5]) ?Red2_5
			(ite (= Red2xyz bv6[5]) ?Red2_6
			(ite (= Red2xyz bv7[5]) ?Red2_7
			(ite (= Red2xyz bv8[5]) ?Red2_8
			(ite (= Red2xyz bv9[5]) ?Red2_9
			(ite (= Red2xyz bv10[5]) ?Red2_10
			(ite (= Red2xyz bv11[5]) ?Red2_11
			(ite (= Red2xyz bv12[5]) ?Red2_12
			(ite (= Red2xyz bv13[5]) ?Red2_13
			(ite (= Red2xyz bv14[5]) ?Red2_14
			(ite (= Red2xyz bv15[5]) ?Red2_15
			(ite (= Red2xyz bv16[5]) ?Red2_16
			(ite (= Red2xyz bv17[5]) ?Red2_17
			(ite (= Red2xyz bv18[5]) ?Red2_18
			(ite (= Red2xyz bv19[5]) ?Red2_19
			(ite (= Red2xyz bv20[5]) ?Red2_20
			(ite (= Red2xyz bv21[5]) ?Red2_21
			(ite (= Red2xyz bv22[5]) ?Red2_22
			(ite (= Red2xyz bv23[5]) ?Red2_23 ?empty)))))))))))))))))))))))))
;Pick Red3
(let (?Red3 (ite (= Red3xyz bv0[5]) ?Red3_0
			(ite (= Red3xyz bv1[5]) ?Red3_1
			(ite (= Red3xyz bv2[5]) ?Red3_2
			(ite (= Red3xyz bv3[5]) ?Red3_3
			(ite (= Red3xyz bv4[5]) ?Red3_4
			(ite (= Red3xyz bv5[5]) ?Red3_5
			(ite (= Red3xyz bv6[5]) ?Red3_6
			(ite (= Red3xyz bv7[5]) ?Red3_7
			(ite (= Red3xyz bv8[5]) ?Red3_8
			(ite (= Red3xyz bv9[5]) ?Red3_9
			(ite (= Red3xyz bv10[5]) ?Red3_10
			(ite (= Red3xyz bv11[5]) ?Red3_11
			(ite (= Red3xyz bv12[5]) ?Red3_12
			(ite (= Red3xyz bv13[5]) ?Red3_13
			(ite (= Red3xyz bv14[5]) ?Red3_14
			(ite (= Red3xyz bv15[5]) ?Red3_15
			(ite (= Red3xyz bv16[5]) ?Red3_16
			(ite (= Red3xyz bv17[5]) ?Red3_17
			(ite (= Red3xyz bv18[5]) ?Red3_18
			(ite (= Red3xyz bv19[5]) ?Red3_19
			(ite (= Red3xyz bv20[5]) ?Red3_20
			(ite (= Red3xyz bv21[5]) ?Red3_21
			(ite (= Red3xyz bv22[5]) ?Red3_22
			(ite (= Red3xyz bv23[5]) ?Red3_23 ?empty)))))))))))))))))))))))))
;
;pick a shift coefficient
;
(let (?Blu0shft ((bvlshr ?Blu0 Blu0shr)))
(let (?Blu1shft ((bvlshr ?Blu1 Blu1shr)))
(let (?Blu2shft ((bvlshr ?Blu2 Blu2shr)))
(let (?Blu3shft ((bvlshr ?Blu3 Blu3shr)))
(let (?Wte0shft ((bvlshr ?Wte0 Wte0shr)))
(let (?Wte1shft ((bvlshr ?Wte1 Wte1shr)))
(let (?Wte2shft ((bvlshr ?Wte2 Wte2shr)))
(let (?Wte3shft ((bvlshr ?Wte3 Wte3shr)))
(let (?Wte4shft ((bvlshr ?Wte4 Wte4shr)))
(let (?Red0shft ((bvlshr ?Red0 Red0shr)))
(let (?Red1shft ((bvlshr ?Red1 Red1shr)))
(let (?Red2shft ((bvlshr ?Red2 Red2shr)))
(let (?Red3shft ((bvlshr ?Red3 Red3shr)))
;
;
;
(and
;Shift coeficient is within grid
	(bvule Blu0shr bv100[100])
	(bvule Blu1shr bv100[100])
	(bvule Blu2shr bv100[100])
	(bvule Blu3shr bv100[100])
	(bvule Wte0shr bv100[100])
	(bvule Wte1shr bv100[100])
	(bvule Wte2shr bv100[100])
	(bvule Wte3shr bv100[100])
	(bvule Wte4shr bv100[100])
	(bvule Red0shr bv100[100])
	(bvule Red1shr bv100[100])
	(bvule Red2shr bv100[100])
	(bvule Red3shr bv100[100])
;Orientation is within 0..23 or 0..12 or 0..2
	(bvule Blu0xyz bv24[5])
	(bvule Blu1xyz bv24[5])
	(bvule Blu2xyz bv24[5])
	(bvule Blu3xyz bv12[5])
	(bvule Wte0xyz bv12[5])
	(bvule Wte1xyz bv12[5])
	(bvule Wte2xyz bv12[5])
	(bvule Wte3xyz bv24[5])
	(bvule Wte4xyz bv12[5])
	(bvule Red0xyz bv24[5])
	(bvule Red1xyz bv3[5])
	(bvule Red2xyz bv24[5])
	(bvule Red3xyz bv24[5])
;Pieces don't colide with borders
	(= ?empty (bvand ?grid ?Blu0shft))
	(= ?empty (bvand ?grid ?Blu1shft))
	(= ?empty (bvand ?grid ?Blu2shft))
	(= ?empty (bvand ?grid ?Blu3shft))
	(= ?empty (bvand ?grid ?Wte0shft))
	(= ?empty (bvand ?grid ?Wte1shft))
	(= ?empty (bvand ?grid ?Wte2shft))
	(= ?empty (bvand ?grid ?Wte3shft))
	(= ?empty (bvand ?grid ?Wte4shft))
	(= ?empty (bvand ?grid ?Red0shft))
	(= ?empty (bvand ?grid ?Red1shft))
	(= ?empty (bvand ?grid ?Red2shft))
	(= ?empty (bvand ?grid ?Red3shft))

; Pieces don't colide with each other
	(= ?empty (bvand ?Blu0shft ?Blu1shft))
	(= ?empty (bvand ?Blu0shft ?Blu2shft))
	(= ?empty (bvand ?Blu0shft ?Blu3shft))
	(= ?empty (bvand ?Blu0shft ?Wte0shft))
	(= ?empty (bvand ?Blu0shft ?Wte1shft))
	(= ?empty (bvand ?Blu0shft ?Wte2shft))
	(= ?empty (bvand ?Blu0shft ?Wte3shft))
	(= ?empty (bvand ?Blu0shft ?Wte4shft))
	(= ?empty (bvand ?Blu0shft ?Red0shft))
	(= ?empty (bvand ?Blu0shft ?Red1shft))
	(= ?empty (bvand ?Blu0shft ?Red2shft))
	(= ?empty (bvand ?Blu0shft ?Red3shft))

	(= ?empty (bvand ?Blu1shft ?Blu0shft))
	(= ?empty (bvand ?Blu1shft ?Blu2shft))
	(= ?empty (bvand ?Blu1shft ?Blu3shft))
	(= ?empty (bvand ?Blu1shft ?Wte0shft))
	(= ?empty (bvand ?Blu1shft ?Wte1shft))
	(= ?empty (bvand ?Blu1shft ?Wte2shft))
	(= ?empty (bvand ?Blu1shft ?Wte3shft))
	(= ?empty (bvand ?Blu1shft ?Wte4shft))
	(= ?empty (bvand ?Blu1shft ?Red0shft))
	(= ?empty (bvand ?Blu1shft ?Red1shft))
	(= ?empty (bvand ?Blu1shft ?Red2shft))
	(= ?empty (bvand ?Blu1shft ?Red3shft))

	(= ?empty (bvand ?Blu2shft ?Blu0shft))
	(= ?empty (bvand ?Blu2shft ?Blu1shft))
	(= ?empty (bvand ?Blu2shft ?Blu3shft))
	(= ?empty (bvand ?Blu2shft ?Wte0shft))
	(= ?empty (bvand ?Blu2shft ?Wte1shft))
	(= ?empty (bvand ?Blu2shft ?Wte2shft))
	(= ?empty (bvand ?Blu2shft ?Wte3shft))
	(= ?empty (bvand ?Blu2shft ?Wte4shft))
	(= ?empty (bvand ?Blu2shft ?Red0shft))
	(= ?empty (bvand ?Blu2shft ?Red1shft))
	(= ?empty (bvand ?Blu2shft ?Red2shft))
	(= ?empty (bvand ?Blu2shft ?Red3shft))

	(= ?empty (bvand ?Blu3shft ?Blu0shft))
	(= ?empty (bvand ?Blu3shft ?Blu1shft))
	(= ?empty (bvand ?Blu3shft ?Blu2shft))
	(= ?empty (bvand ?Blu3shft ?Wte0shft))
	(= ?empty (bvand ?Blu3shft ?Wte1shft))
	(= ?empty (bvand ?Blu3shft ?Wte2shft))
	(= ?empty (bvand ?Blu3shft ?Wte3shft))
	(= ?empty (bvand ?Blu3shft ?Wte4shft))
	(= ?empty (bvand ?Blu3shft ?Red0shft))
	(= ?empty (bvand ?Blu3shft ?Red1shft))
	(= ?empty (bvand ?Blu3shft ?Red2shft))
	(= ?empty (bvand ?Blu3shft ?Red3shft))

	(= ?empty (bvand ?Red0shft ?Blu0shft))
	(= ?empty (bvand ?Red0shft ?Blu1shft))
	(= ?empty (bvand ?Red0shft ?Blu2shft))
	(= ?empty (bvand ?Red0shft ?Blu3shft))
	(= ?empty (bvand ?Red0shft ?Wte0shft))
	(= ?empty (bvand ?Red0shft ?Wte1shft))
	(= ?empty (bvand ?Red0shft ?Wte2shft))
	(= ?empty (bvand ?Red0shft ?Wte3shft))
	(= ?empty (bvand ?Red0shft ?Wte4shft))
	(= ?empty (bvand ?Red0shft ?Red1shft))
	(= ?empty (bvand ?Red0shft ?Red2shft))
	(= ?empty (bvand ?Red0shft ?Red3shft))

	(= ?empty (bvand ?Red1shft ?Blu0shft))
	(= ?empty (bvand ?Red1shft ?Blu1shft))
	(= ?empty (bvand ?Red1shft ?Blu2shft))
	(= ?empty (bvand ?Red1shft ?Blu3shft))
	(= ?empty (bvand ?Red1shft ?Wte0shft))
	(= ?empty (bvand ?Red1shft ?Wte1shft))
	(= ?empty (bvand ?Red1shft ?Wte2shft))
	(= ?empty (bvand ?Red1shft ?Wte3shft))
	(= ?empty (bvand ?Red1shft ?Wte4shft))
	(= ?empty (bvand ?Red1shft ?Red0shft))
	(= ?empty (bvand ?Red1shft ?Red2shft))
	(= ?empty (bvand ?Red1shft ?Red3shft))

	(= ?empty (bvand ?Red2shft ?Blu0shft))
	(= ?empty (bvand ?Red2shft ?Blu1shft))
	(= ?empty (bvand ?Red2shft ?Blu2shft))
	(= ?empty (bvand ?Red2shft ?Blu3shft))
	(= ?empty (bvand ?Red2shft ?Wte0shft))
	(= ?empty (bvand ?Red2shft ?Wte1shft))
	(= ?empty (bvand ?Red2shft ?Wte2shft))
	(= ?empty (bvand ?Red2shft ?Wte3shft))
	(= ?empty (bvand ?Red2shft ?Wte4shft))
	(= ?empty (bvand ?Red2shft ?Red1shft))
	(= ?empty (bvand ?Red2shft ?Red0shft))
	(= ?empty (bvand ?Red2shft ?Red3shft))

	(= ?empty (bvand ?Red3shft ?Blu0shft))
	(= ?empty (bvand ?Red3shft ?Blu1shft))
	(= ?empty (bvand ?Red3shft ?Blu2shft))
	(= ?empty (bvand ?Red3shft ?Blu3shft))
	(= ?empty (bvand ?Red3shft ?Wte0shft))
	(= ?empty (bvand ?Red3shft ?Wte1shft))
	(= ?empty (bvand ?Red3shft ?Wte2shft))
	(= ?empty (bvand ?Red3shft ?Wte3shft))
	(= ?empty (bvand ?Red3shft ?Wte4shft))
	(= ?empty (bvand ?Red3shft ?Red1shft))
	(= ?empty (bvand ?Red3shft ?Red2shft))
	(= ?empty (bvand ?Red3shft ?Red0shft))

	(= ?empty (bvand ?Wte0shft ?Blu0shft))
	(= ?empty (bvand ?Wte0shft ?Blu1shft))
	(= ?empty (bvand ?Wte0shft ?Blu2shft))
	(= ?empty (bvand ?Wte0shft ?Blu3shft))
	(= ?empty (bvand ?Wte0shft ?Wte1shft))
	(= ?empty (bvand ?Wte0shft ?Wte2shft))
	(= ?empty (bvand ?Wte0shft ?Wte3shft))
	(= ?empty (bvand ?Wte0shft ?Wte4shft))
	(= ?empty (bvand ?Wte0shft ?Red0shft))
	(= ?empty (bvand ?Wte0shft ?Red1shft))
	(= ?empty (bvand ?Wte0shft ?Red2shft))
	(= ?empty (bvand ?Wte0shft ?Red3shft))

	(= ?empty (bvand ?Wte1shft ?Blu0shft))
	(= ?empty (bvand ?Wte1shft ?Blu1shft))
	(= ?empty (bvand ?Wte1shft ?Blu2shft))
	(= ?empty (bvand ?Wte1shft ?Blu3shft))
	(= ?empty (bvand ?Wte1shft ?Wte0shft))
	(= ?empty (bvand ?Wte1shft ?Wte2shft))
	(= ?empty (bvand ?Wte1shft ?Wte3shft))
	(= ?empty (bvand ?Wte1shft ?Wte4shft))
	(= ?empty (bvand ?Wte1shft ?Red0shft))
	(= ?empty (bvand ?Wte1shft ?Red1shft))
	(= ?empty (bvand ?Wte1shft ?Red2shft))
	(= ?empty (bvand ?Wte1shft ?Red3shft))

	(= ?empty (bvand ?Wte2shft ?Blu0shft))
	(= ?empty (bvand ?Wte2shft ?Blu1shft))
	(= ?empty (bvand ?Wte2shft ?Blu2shft))
	(= ?empty (bvand ?Wte2shft ?Blu3shft))
	(= ?empty (bvand ?Wte2shft ?Wte1shft))
	(= ?empty (bvand ?Wte2shft ?Wte0shft))
	(= ?empty (bvand ?Wte2shft ?Wte3shft))
	(= ?empty (bvand ?Wte2shft ?Wte4shft))
	(= ?empty (bvand ?Wte2shft ?Red0shft))
	(= ?empty (bvand ?Wte2shft ?Red1shft))
	(= ?empty (bvand ?Wte2shft ?Red2shft))
	(= ?empty (bvand ?Wte2shft ?Red3shft))

	(= ?empty (bvand ?Wte3shft ?Blu0shft))
	(= ?empty (bvand ?Wte3shft ?Blu1shft))
	(= ?empty (bvand ?Wte3shft ?Blu2shft))
	(= ?empty (bvand ?Wte3shft ?Blu3shft))
	(= ?empty (bvand ?Wte3shft ?Wte1shft))
	(= ?empty (bvand ?Wte3shft ?Wte2shft))
	(= ?empty (bvand ?Wte3shft ?Wte0shft))
	(= ?empty (bvand ?Wte3shft ?Wte4shft))
	(= ?empty (bvand ?Wte3shft ?Red0shft))
	(= ?empty (bvand ?Wte3shft ?Red1shft))
	(= ?empty (bvand ?Wte3shft ?Red2shft))
	(= ?empty (bvand ?Wte3shft ?Red3shft))

	(= ?empty (bvand ?Wte4shft ?Blu0shft))
	(= ?empty (bvand ?Wte4shft ?Blu1shft))
	(= ?empty (bvand ?Wte4shft ?Blu2shft))
	(= ?empty (bvand ?Wte4shft ?Blu3shft))
	(= ?empty (bvand ?Wte4shft ?Wte1shft))
	(= ?empty (bvand ?Wte4shft ?Wte2shft))
	(= ?empty (bvand ?Wte4shft ?Wte3shft))
	(= ?empty (bvand ?Wte4shft ?Wte0shft))
	(= ?empty (bvand ?Wte4shft ?Red0shft))
	(= ?empty (bvand ?Wte4shft ?Red1shft))
	(= ?empty (bvand ?Wte4shft ?Red2shft))
	(= ?empty (bvand ?Wte4shft ?Red3shft))






;combine all pieces together
	(= ?fullGrid 	(bvor	?grid
					(bvor ?Blu0shft(bvor ?Blu1shft(bvor ?Blu2shft(bvor ?Blu3shft
					(bvor ?Wte0shft(bvor ?Wte1shft(bvor ?Wte2shft (bvor ?Wte3shft (bvor ?Wte4shft 
					(bvor ?Red0shft(bvor ?Red1shft(bvor ?Red2shft ?Red3shft))))))))))))
	))
;extra assumption to force convergence

	(= Blu0xyz bv17[5])
	(= Blu1xyz bv8[5])
	(= Blu2xyz bv22[5])
	(= Blu3xyz bv5[5])
	(= Red0xyz bv11[5])
	(= Red1xyz bv1[5])
	(= Red2xyz bv17[5])
	(= Red3xyz bv5[5])
	(= Wte0xyz bv5[5])
	(= Wte1xyz bv4[5])
	(= Wte2xyz bv8[5])
	(= Wte3xyz bv2[5])
	(= Wte4xyz bv4[5])
	(= Blu0shr bv76[100])
	(= Blu1shr bv50[100])
	(= Blu2shr bv0[100])
	(= Blu3shr bv35[100])
	(= Red0shr bv12[100])
	(= Red1shr bv25[100])
	(= Red2shr bv10[100])
	(= Red3shr bv27[100])
	(= Wte0shr bv6[100])
	(= Wte1shr bv0[100])
	(= Wte2shr bv62[100])
	(= Wte3shr bv36[100])
	(= Wte4shr bv2[100])
;Blu0_17,76
;Blu1_8,50
;Blu2_22,0
;Blu3_5,35
;Red0_11,12
;Red1_1,25
;Red2_17,10
;Red3_5,27
;Wte0_5,6
;Wte1_4,0
;Wte2_8,62
;Wte3_2,36
;Wte4_4,2

;close the and
)
 
;close for pick a shift
)))))))))))))

;close for pick orientation
)))))))))))))			

;close for 12 pieces in 231 orientation definition
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)))))))))))))))))))))))))))))))
;close for grid definition
)))
;last close
)


;(let (?test (bv39614084835800520195936616448[100]))
;(= ?Red3shft ?test)
