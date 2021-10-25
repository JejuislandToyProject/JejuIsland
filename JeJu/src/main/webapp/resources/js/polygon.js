 // 지도에 폴리곤으로 표시할 영역데이터 배열입니다 

var areas = [
     {
        name : 'Namwon',
        path : [
        	new kakao.maps.LatLng(33.395054923937245,126.65341899579978),
        	new kakao.maps.LatLng(33.39019007349997,126.62633467550624),
        	new kakao.maps.LatLng(33.38503613729624,126.62491542496801),
        	new kakao.maps.LatLng(33.38223750780341,126.60693394627313),
        	new kakao.maps.LatLng(33.37434442178884,126.58932187074),
        	new kakao.maps.LatLng(33.371818906373186,126.57457157742698),
        	new kakao.maps.LatLng(33.373676380093,126.553716044883),
        	new kakao.maps.LatLng(33.36481752962276,126.54621011514958),
        	new kakao.maps.LatLng(33.35673718042064,126.56042142252166),
        	new kakao.maps.LatLng(33.35610164939701,126.56067693276881),
        	new kakao.maps.LatLng(33.35287617254808,126.56230367594429),
        	new kakao.maps.LatLng(33.352483464211694,126.56240754738099),
        	new kakao.maps.LatLng(33.347858737632514,126.56714243853224),
        	new kakao.maps.LatLng(33.33487920636853,126.58640478100924),
        	new kakao.maps.LatLng(33.314763899476816,126.59988363184371),
        	new kakao.maps.LatLng(33.31046737102801,126.59917033613056),
        	new kakao.maps.LatLng(33.306109366471986,126.60099391808346),
        	new kakao.maps.LatLng(33.297898409833344,126.60356410028443),
        	new kakao.maps.LatLng(33.29567061603791,126.60501338568034),
        	new kakao.maps.LatLng(33.29288391884996,126.60475322617683),
        	new kakao.maps.LatLng(33.2893541515565,126.60360287035188),
        	new kakao.maps.LatLng(33.285808591141944,126.61385071351843),
        	new kakao.maps.LatLng(33.285410420936806,126.6143558524151),
        	new kakao.maps.LatLng(33.26820086193624,126.62306864123471),
        	new kakao.maps.LatLng(33.265033123434705,126.62204475403367),
        	new kakao.maps.LatLng(33.26359479269883,126.62433614118643),
        	new kakao.maps.LatLng(33.25380720118425,126.62300105945197),
        	new kakao.maps.LatLng(33.25775312384181,126.63930571156118),
        	new kakao.maps.LatLng(33.26498539027354,126.6411065601322),
        	new kakao.maps.LatLng(33.27017594458559,126.65307277376422),
        	new kakao.maps.LatLng(33.26832101951833,126.67687358595134),
        	new kakao.maps.LatLng(33.27108878711527,126.69949145550483),
        	new kakao.maps.LatLng(33.27794903928396,126.71859461623788),
        	new kakao.maps.LatLng(33.2788517948536,126.74335319544275),
        	new kakao.maps.LatLng(33.29250004621182,126.76349500719182),
        	new kakao.maps.LatLng(33.30705600380676,126.77599925868009),
        	new kakao.maps.LatLng(33.31801319017542,126.76163219405912),
        	new kakao.maps.LatLng(33.333634589389554,126.75895588123491),
        	new kakao.maps.LatLng(33.36483953835756,126.73516786611357),
        	new kakao.maps.LatLng(33.376363868681565,126.70187014826554),
        	new kakao.maps.LatLng(33.3740248610397,126.69563902199808),
        	new kakao.maps.LatLng(33.3790065613453,126.67420391513238),
        	new kakao.maps.LatLng(33.384780040771986,126.67323677835512),
        	new kakao.maps.LatLng(33.395054923937245,126.65341899579978)
        ]
    }, {
        name : 'Daejeong',
        path : [
        	new kakao.maps.LatLng(33.285005289129145,126.22894429810759),
        	new kakao.maps.LatLng(33.29550444205661,126.20270330234871),
        	new kakao.maps.LatLng(33.28850879815032,126.17107656624036),
        	new kakao.maps.LatLng(33.27755676691645,126.1697400488225),
        	new kakao.maps.LatLng(33.25938801115479,126.18352078771706),
        	new kakao.maps.LatLng(33.24623926839554,126.20304852513671),
        	new kakao.maps.LatLng(33.24355543182208,126.21930008802096),
        	new kakao.maps.LatLng(33.23589622557428,126.23541484106858),
        	new kakao.maps.LatLng(33.2238439946844,126.24129676527379),
        	new kakao.maps.LatLng(33.19605392425791,126.26979089238387),
        	new kakao.maps.LatLng(33.20541438855104,126.28946079557065),
        	new kakao.maps.LatLng(33.2180012523362,126.29370045629935),
        	new kakao.maps.LatLng(33.23117306927033,126.28483061335437),
        	new kakao.maps.LatLng(33.258798655440096,126.29641269923287),
        	new kakao.maps.LatLng(33.26599286477776,126.29505942460793),
        	new kakao.maps.LatLng(33.27494449655122,126.30460282974109),
        	new kakao.maps.LatLng(33.284041446560835,126.29533460098754),
        	new kakao.maps.LatLng(33.29614908419651,126.29364678345605),
        	new kakao.maps.LatLng(33.30312231821929,126.28211829944708),
        	new kakao.maps.LatLng(33.29948429304174,126.27921978844793),
        	new kakao.maps.LatLng(33.29280529641745,126.2530289260405),
        	new kakao.maps.LatLng(33.27692251494871,126.2381651705901),
        	new kakao.maps.LatLng(33.285005289129145,126.22894429810759)
        ]
    }, {
        name : 'Aewol',
        path : [
        	new kakao.maps.LatLng(33.490732304450404,126.42090917694645),
        	new kakao.maps.LatLng(33.484106288706315,126.39454195163984),
        	new kakao.maps.LatLng(33.488984137887535,126.38550757279579),
        	new kakao.maps.LatLng(33.47816753777779,126.36854009544957),
        	new kakao.maps.LatLng(33.4774965345541,126.35361347647483),
        	new kakao.maps.LatLng(33.46702675458101,126.33807996206534),
        	new kakao.maps.LatLng(33.46921567102326,126.31394976836013),
        	new kakao.maps.LatLng(33.45217704378228,126.30634944589282),
        	new kakao.maps.LatLng(33.446501847354966,126.29777463176504),
        	new kakao.maps.LatLng(33.4410735204958,126.29905137500486),
        	new kakao.maps.LatLng(33.44061004757682,126.29901854572452),
        	new kakao.maps.LatLng(33.438934552256626,126.2994653883439),
        	new kakao.maps.LatLng(33.43887364353433,126.2996936212791),
        	new kakao.maps.LatLng(33.417607865257835,126.3020075118054),
        	new kakao.maps.LatLng(33.398020178700115,126.31013188017702),
        	new kakao.maps.LatLng(33.387064399518295,126.3234296373326),
        	new kakao.maps.LatLng(33.37860841125013,126.32299091662749),
        	new kakao.maps.LatLng(33.366747845214995,126.33372398697286),
        	new kakao.maps.LatLng(33.353927100175326,126.35473695541),
        	new kakao.maps.LatLng(33.34681883422567,126.37531040891074),
        	new kakao.maps.LatLng(33.34103894058503,126.42642377879123),
        	new kakao.maps.LatLng(33.34664624007904,126.43642036177552),
        	new kakao.maps.LatLng(33.3562682580113,126.4385495560767),
        	new kakao.maps.LatLng(33.36007752691013,126.46481741149094),
        	new kakao.maps.LatLng(33.35495440159398,126.4904484921354),
        	new kakao.maps.LatLng(33.35984676349021,126.49909140831043),
        	new kakao.maps.LatLng(33.3625392243329,126.52996803027317),
        	new kakao.maps.LatLng(33.38177378069858,126.51257687570876),
        	new kakao.maps.LatLng(33.390366027468914,126.49172248030267),
        	new kakao.maps.LatLng(33.388125836943246,126.47623016734723),
        	new kakao.maps.LatLng(33.397536300434886,126.45868152037022),
        	new kakao.maps.LatLng(33.39849808896104,126.45796004302944),
        	new kakao.maps.LatLng(33.41465508061485,126.44961002353881),
        	new kakao.maps.LatLng(33.41476461081694,126.4496555919949),
        	new kakao.maps.LatLng(33.43812336561095,126.4492097529662),
        	new kakao.maps.LatLng(33.438744064763,126.44928617438744),
        	new kakao.maps.LatLng(33.46227428556742,126.44768733607378),
        	new kakao.maps.LatLng(33.47782047781702,126.44306632904701),
        	new kakao.maps.LatLng(33.47772433998106,126.44271777376025),
        	new kakao.maps.LatLng(33.4746177835136,126.43476930265527),
        	new kakao.maps.LatLng(33.47457311108453,126.43441462489236),
        	new kakao.maps.LatLng(33.47461720440262,126.43434294595467),
        	new kakao.maps.LatLng(33.47454008457236,126.4341857000678),
        	new kakao.maps.LatLng(33.4729674718308,126.425079714069087),
        	new kakao.maps.LatLng(33.47297201668472,126.42464176696039),
        	new kakao.maps.LatLng(33.47442491855795,126.42178957208414),
        	new kakao.maps.LatLng(33.474682691652305,126.4218282855372),
        	new kakao.maps.LatLng(33.48547816862768,126.42059680900721),
        	new kakao.maps.LatLng(33.48566043514911,126.42061845677304),
        	new kakao.maps.LatLng(33.490732304450404,126.42090917694645)
        ]
    }, {
        name : 'Jocheon',
        path : [
        	new kakao.maps.LatLng(33.55315203359222 ,126.70572132465578),
        	new kakao.maps.LatLng(33.54847357631735 ,126.68808093217658),
        	new kakao.maps.LatLng(33.552442248215755 ,126.67777764348583),
        	new kakao.maps.LatLng(33.543359330721664 ,126.66405077843159),
        	new kakao.maps.LatLng(33.55461532855907 ,126.64452727390231),
        	new kakao.maps.LatLng(33.536374524201456 ,126.63534008202495),
        	new kakao.maps.LatLng(33.538115883120575 ,126.6131046502374),
        	new kakao.maps.LatLng(33.53477365093731 ,126.60309165799269),
        	new kakao.maps.LatLng(33.520198234725704 ,126.6002983407514),
        	new kakao.maps.LatLng(33.51363821028636 ,126.62109059352466),
        	new kakao.maps.LatLng(33.51362144718692 ,126.62107802009818),
        	new kakao.maps.LatLng(33.49604072367712 ,126.62212911180193),
        	new kakao.maps.LatLng(33.49584587730358 ,126.62222239820981),
        	new kakao.maps.LatLng(33.48825348607766 ,126.62843062753416),
        	new kakao.maps.LatLng(33.4879775129737 ,126.62868106633216),
        	new kakao.maps.LatLng(33.48779795426416 ,126.62881997230939),
        	new kakao.maps.LatLng(33.48760935159344 ,126.62877862216524),
        	new kakao.maps.LatLng(33.486397059593834 ,126.62892006449765),
        	new kakao.maps.LatLng(33.48628965020843 ,126.62903629984757),
        	new kakao.maps.LatLng(33.4862261124468 ,126.62920361775839),
        	new kakao.maps.LatLng(33.48616503740638  ,126.62934743624788),
        	new kakao.maps.LatLng(33.475363768158125 ,126.63703687871168),
        	new kakao.maps.LatLng(33.474952904396616 ,126.63715140015944),
        	new kakao.maps.LatLng(33.47465396523955 ,126.63729064855842),
        	new kakao.maps.LatLng(33.47425312040946 ,126.63740908502663),
        	new kakao.maps.LatLng(33.46904932721159 ,126.6371394320317),
        	new kakao.maps.LatLng(33.4685582450053 ,126.63725302117744),
        	new kakao.maps.LatLng(33.46450133359457 ,126.63919556282796),
        	new kakao.maps.LatLng(33.46418914160286 ,126.63962329367676),
        	new kakao.maps.LatLng(33.46327364891663 ,126.64074350912331),
        	new kakao.maps.LatLng(33.46307125695724 ,126.64086405049672),
        	new kakao.maps.LatLng(33.432417011522666 ,126.63960964055958),
        	new kakao.maps.LatLng(33.417148392492756 ,126.62131969939217),
        	new kakao.maps.LatLng(33.39498115259648 ,126.60653368901419),
        	new kakao.maps.LatLng(33.390433557859744 ,126.58627722174091),
        	new kakao.maps.LatLng(33.373159336828145 ,126.55968500376463),
        	new kakao.maps.LatLng(33.37434442178885 ,126.58932187074005),
        	new kakao.maps.LatLng(33.38223750780341 ,126.60693394627319),
        	new kakao.maps.LatLng(33.38503613729624 ,126.62491542496807),
        	new kakao.maps.LatLng(33.39019007349997 ,126.62633467550627),
        	new kakao.maps.LatLng(33.395054923937245 ,126.65341899579983),
        	new kakao.maps.LatLng(33.400237305745634 ,126.66834399959438),
        	new kakao.maps.LatLng(33.41919378470282 ,126.69961881263625),
        	new kakao.maps.LatLng(33.426721941876266 ,126.73182531732465),
        	new kakao.maps.LatLng(33.43967922321342 ,126.72226616016658),
        	new kakao.maps.LatLng(33.452000529257894 ,126.72026326248756),
        	new kakao.maps.LatLng(33.506296501743236 ,126.73449724453404),
        	new kakao.maps.LatLng(33.51167345348249 ,126.72650905866489),
        	new kakao.maps.LatLng(33.535048879620184 ,126.70627356911324),
        	new kakao.maps.LatLng(33.55315203359222 ,126.70572132465578)
            
        ]
    }, {
        name : 'Hanlim',
        path : [
        	new kakao.maps.LatLng(33.446501847354966,126.29777463176504),
        	new kakao.maps.LatLng(33.44262504604774,126.27792939978087),
        	new kakao.maps.LatLng(33.435817508551956,126.26334752627764),
        	new kakao.maps.LatLng(33.4172839168334,126.26290374317058),
        	new kakao.maps.LatLng(33.401130608761406,126.25038658770588),
        	new kakao.maps.LatLng(33.38920850795089,126.23418093175215),
        	new kakao.maps.LatLng(33.390036259506026,126.22291577129954),
        	new kakao.maps.LatLng(33.37502527837367,126.21336751846175),
        	new kakao.maps.LatLng(33.37301229874418,126.2155177232405),
        	new kakao.maps.LatLng(33.37288122183079,126.21551274469508),
        	new kakao.maps.LatLng(33.36775729735669,126.21594339431833),
        	new kakao.maps.LatLng(33.36771609950861,126.2159427007498),
        	new kakao.maps.LatLng(33.3667795553041,126.21710449174567),
        	new kakao.maps.LatLng(33.36671794705304,126.21716969572614),
        	new kakao.maps.LatLng(33.364301505063615,126.22465371940024),
        	new kakao.maps.LatLng(33.35279297437387,126.22945512554885),
        	new kakao.maps.LatLng(33.343189256517505,126.2393172525493),
        	new kakao.maps.LatLng(33.34494034540494,126.25968791538429),
        	new kakao.maps.LatLng(33.33833549860063,126.27004736456396),
        	new kakao.maps.LatLng(33.34503496643088,126.28278583878557),
        	new kakao.maps.LatLng(33.321992058086934,126.29632270694876),
        	new kakao.maps.LatLng(33.326653553820776,126.30594661437941),
        	new kakao.maps.LatLng(33.32744510180653,126.32410317744464),
        	new kakao.maps.LatLng(33.34363110048652,126.34163848016031),
        	new kakao.maps.LatLng(33.34138288498783,126.36870130392066),
        	new kakao.maps.LatLng(33.34681883422567,126.37531040891074),
        	new kakao.maps.LatLng(33.353927100175326,126.35473695541),
        	new kakao.maps.LatLng(33.366747845214995,126.33372398697286),
        	new kakao.maps.LatLng(33.37860841125013,126.32299091662749),
        	new kakao.maps.LatLng(33.387064399518295,126.3234296373326),
        	new kakao.maps.LatLng(33.398020178700115,126.31013188017702),
        	new kakao.maps.LatLng(33.417607865257835,126.3020075118054),
        	new kakao.maps.LatLng(33.43887364353433,126.2996936212791),
        	new kakao.maps.LatLng(33.438934552256626,126.2994653883439),
        	new kakao.maps.LatLng(33.44061004757682,126.29901854572452),
        	new kakao.maps.LatLng(33.4410735204958,126.29905137500486),
        	new kakao.maps.LatLng(33.446501847354966,126.29777463176504)
        ]
    }, {
        name : 'Gujwa',
        path : [
        	new kakao.maps.LatLng(33.44658971771423,126.81649479752389),
        	new kakao.maps.LatLng(33.46705804475581,126.85773664430977),
        	new kakao.maps.LatLng(33.46895941113395,126.86675177692216),
        	new kakao.maps.LatLng(33.48068605265147,126.88450376354218),
        	new kakao.maps.LatLng(33.48253681096426,126.90178272117842),
        	new kakao.maps.LatLng(33.48865280188414,126.9106128125579),
        	new kakao.maps.LatLng(33.50333497660287,126.91310370824395),
        	new kakao.maps.LatLng(33.52643714256011,126.89281325620973),
        	new kakao.maps.LatLng(33.52938898384165,126.87193955701683),
        	new kakao.maps.LatLng(33.52469704872841,126.86073654032295),
        	new kakao.maps.LatLng(33.54059495242573,126.83089414168707),
        	new kakao.maps.LatLng(33.558744421012875,126.82412463028153),
        	new kakao.maps.LatLng(33.556278957166384,126.80811250530473),
        	new kakao.maps.LatLng(33.565070135388076,126.77187037386211),
        	new kakao.maps.LatLng(33.55714499120252,126.76019246633835),
        	new kakao.maps.LatLng(33.554848367697645,126.73773549175458),
        	new kakao.maps.LatLng(33.56036123858263,126.73025492919017),
        	new kakao.maps.LatLng(33.553529334572524,126.71659384643883),
        	new kakao.maps.LatLng(33.55315203359222,126.70572132465578),
        	new kakao.maps.LatLng(33.535048879620184,126.70627356911324),
        	new kakao.maps.LatLng(33.51167345348249,126.72650905866489),
        	new kakao.maps.LatLng(33.506296501743236,126.73449724453404),
        	new kakao.maps.LatLng(33.452000529257894,126.72026326248756),
        	new kakao.maps.LatLng(33.43967922321342,126.72226616016658),
        	new kakao.maps.LatLng(33.426721941876266,126.73182531732465),
        	new kakao.maps.LatLng(33.42026921973225,126.7414047646964),
        	new kakao.maps.LatLng(33.421460517438604,126.76128319799727),
        	new kakao.maps.LatLng(33.441355288287276,126.78856279671594),
        	new kakao.maps.LatLng(33.44008502819852,126.79703129299703),
        	new kakao.maps.LatLng(33.44658971771423,126.81649479752389)
        ]
    }, {
        name : 'Hankyung',
        path : [
        	new kakao.maps.LatLng(33.37301229874418,126.2155177232405),
        	new kakao.maps.LatLng(33.37502527837367,126.21336751846175),
        	new kakao.maps.LatLng(33.364986221338626,126.2001334358423),
        	new kakao.maps.LatLng(33.35841576026688,126.18282506167087),
        	new kakao.maps.LatLng(33.34911117724717,126.18054519952413),
        	new kakao.maps.LatLng(33.33691435864846,126.16411862526408),
        	new kakao.maps.LatLng(33.32459739406928,126.16287904524461),
        	new kakao.maps.LatLng(33.31643525022995,126.1686805240211),
        	new kakao.maps.LatLng(33.30796576619945,126.16370300280589),
        	new kakao.maps.LatLng(33.298838911831034,126.16795687435749),
        	new kakao.maps.LatLng(33.29226506052675,126.16164603242174),
        	new kakao.maps.LatLng(33.28253816121521,126.16874128494116),
        	new kakao.maps.LatLng(33.290091890131606,126.1804196582899),
        	new kakao.maps.LatLng(33.2955044420566,126.20270330234875),
        	new kakao.maps.LatLng(33.285005289129145,126.22894429810759),
        	new kakao.maps.LatLng(33.27692251494871,126.2381651705901),
        	new kakao.maps.LatLng(33.29280529641745,126.25302892604059),
        	new kakao.maps.LatLng(33.29948429304174,126.27921978844797),
        	new kakao.maps.LatLng(33.310493660109046,126.29240919388324),
        	new kakao.maps.LatLng(33.321992058086934,126.29632270694876),
        	new kakao.maps.LatLng(33.34503496643088,126.28278583878557),
        	new kakao.maps.LatLng(33.33833549860063,126.27004736456396),
        	new kakao.maps.LatLng(33.34494034540494,126.25968791538429),
        	new kakao.maps.LatLng(33.343189256517505,126.2393172525493),
        	new kakao.maps.LatLng(33.35279297437387,126.22945512554885),
        	new kakao.maps.LatLng(33.364301505063615,126.22465371940024),
        	new kakao.maps.LatLng(33.36671794705304,126.21716969572614),
        	new kakao.maps.LatLng(33.3667795553041,126.21710449174567),
        	new kakao.maps.LatLng(33.36771609950861,126.2159427007498),
        	new kakao.maps.LatLng(33.36775729735669,126.21594339431833),
        	new kakao.maps.LatLng(33.37288122183079,126.21551274469508),
        	new kakao.maps.LatLng(33.37301229874418,126.2155177232405)
        ]
    } , {
        name : 'Seongsan',
        path : [
        	new kakao.maps.LatLng(33.336780603150466,126.84955394091513),
        	new kakao.maps.LatLng(33.35472313206925,126.86817869146431),
        	new kakao.maps.LatLng(33.364217918130166,126.86719523751593),
        	new kakao.maps.LatLng(33.38231096707445,126.88014972201522),
        	new kakao.maps.LatLng(33.39164571528634,126.90554917633807),
        	new kakao.maps.LatLng(33.40724593585416,126.90764500785284),
        	new kakao.maps.LatLng(33.4530216291345,126.92437630387705),
        	new kakao.maps.LatLng(33.46866001924299,126.9216787722037),
        	new kakao.maps.LatLng(33.48304767303762,126.89804381239477),
        	new kakao.maps.LatLng(33.4749315452497,126.87256649263819),
        	new kakao.maps.LatLng(33.44658971771423,126.81649479752389),
        	new kakao.maps.LatLng(33.44454789339382,126.80810782578328),
        	new kakao.maps.LatLng(33.43061610296015,126.8217076944275),
        	new kakao.maps.LatLng(33.412006055892284,126.81685985648164),
        	new kakao.maps.LatLng(33.38504140029988,126.8056953934607),
        	new kakao.maps.LatLng(33.37315310740269,126.80791750423866),
        	new kakao.maps.LatLng(33.357822950748044,126.83706933490497),
        	new kakao.maps.LatLng(33.336780603150466,126.84955394091513)
           
        ]
    }, {
        name : 'Pyoseon',
        path : [
        	new kakao.maps.LatLng(33.30705600380676,126.77599925868009),
        	new kakao.maps.LatLng(33.30362580297348,126.79180304518907),
        	new kakao.maps.LatLng(33.30799653595498,126.81634323835902),
        	new kakao.maps.LatLng(33.30651427753494,126.82909341899216),
        	new kakao.maps.LatLng(33.32177232763796,126.84670188121419),
        	new kakao.maps.LatLng(33.33023945705086,126.84152295925225),
        	new kakao.maps.LatLng(33.336780603150466,126.84955394091513),
        	new kakao.maps.LatLng(33.357822950748044,126.83706933490497),
        	new kakao.maps.LatLng(33.37315310740269,126.80791750423866),
        	new kakao.maps.LatLng(33.38504140029988,126.8056953934607),
        	new kakao.maps.LatLng(33.412006055892284,126.81685985648164),
        	new kakao.maps.LatLng(33.43061610296015,126.8217076944275),
        	new kakao.maps.LatLng(33.44454789339382,126.80810782578328),
        	new kakao.maps.LatLng(33.441355288287276,126.78856279671588),
        	new kakao.maps.LatLng(33.42146051743861,126.76128319799723),
        	new kakao.maps.LatLng(33.420269219732255,126.74140476469634),
        	new kakao.maps.LatLng(33.42433050467088,126.73342550771493),
        	new kakao.maps.LatLng(33.42189717830381,126.70905827650287),
        	new kakao.maps.LatLng(33.4132847244286,126.68772828751482),
        	new kakao.maps.LatLng(33.400237305745634,126.66834399959437),
        	new kakao.maps.LatLng(33.395054923937245,126.65341899579978),
        	new kakao.maps.LatLng(33.384780040771986,126.67323677835512),
        	new kakao.maps.LatLng(33.3790065613453,126.67420391513238),
        	new kakao.maps.LatLng(33.3740248610397,126.69563902199808),
        	new kakao.maps.LatLng(33.376363868681565,126.70187014826554),
        	new kakao.maps.LatLng(33.36483953835756,126.73516786611357),
        	new kakao.maps.LatLng(33.333634589389554,126.75895588123491),
        	new kakao.maps.LatLng(33.31801319017542,126.76163219405912),
        	new kakao.maps.LatLng(33.30705600380676,126.77599925868009)  
        ]
    }, {
        name : 'Jeju',
        path : [
        	new kakao.maps.LatLng(33.373159336828145 ,126.55968500376463),
        	new kakao.maps.LatLng(33.390433557859744 ,126.58627722174091),
        	new kakao.maps.LatLng(33.39498115259648 ,126.60653368901419),
        	new kakao.maps.LatLng(33.417148392492756 ,126.62131969939217),
        	new kakao.maps.LatLng(33.432417011522666 ,126.63960964055958),
        	new kakao.maps.LatLng(33.46307125695724 ,126.64086405049672),
        	new kakao.maps.LatLng(33.46327364891663 ,126.64074350912331),
        	new kakao.maps.LatLng(33.46418914160286 ,126.63962329367676),
        	new kakao.maps.LatLng(33.46450133359457 ,126.63919556282796),
        	new kakao.maps.LatLng(33.4685582450053 ,126.63725302117744),
        	new kakao.maps.LatLng(33.46904932721159 ,126.6371394320317),
        	new kakao.maps.LatLng(33.47425312040946 ,126.63740908502663),
        	new kakao.maps.LatLng(33.47465396523955 ,126.63729064855842),
        	new kakao.maps.LatLng(33.474952904396616 ,126.63715140015944),
        	new kakao.maps.LatLng(33.475363768158125 ,126.63703687871168),
        	new kakao.maps.LatLng(33.48616503740638 ,126.62934743624788),
        	new kakao.maps.LatLng(33.4862261124468 ,126.62920361775839),
        	new kakao.maps.LatLng(33.48628965020843 ,126.62903629984757),
        	new kakao.maps.LatLng(33.486397059593834 ,126.62892006449765),
        	new kakao.maps.LatLng(33.48760935159344 ,126.62877862216524),
        	new kakao.maps.LatLng(33.48779795426416 ,126.62881997230939),
        	new kakao.maps.LatLng(33.4879775129737 ,126.62868106633216),
        	new kakao.maps.LatLng(33.48825348607766 ,126.62843062753416),
        	new kakao.maps.LatLng(33.49584587730358 ,126.62222239820981),
        	new kakao.maps.LatLng(33.49604072367712 ,126.62212911180193),
        	new kakao.maps.LatLng(33.51362144718692 ,126.62107802009818),
        	new kakao.maps.LatLng(33.51363821028636 ,126.62109059352466),
        	new kakao.maps.LatLng(33.520198234725704 ,126.6002983407514),
        	new kakao.maps.LatLng(33.53477365093731 ,126.60309165799269),
        	new kakao.maps.LatLng(33.53760122988315 ,126.59743937916765),
        	new kakao.maps.LatLng(33.52553257891612 ,126.58622640245177),
        	new kakao.maps.LatLng(33.52034142090547 ,126.550917172842),
        	new kakao.maps.LatLng(33.52380365506794 ,126.5431735939761),
        	new kakao.maps.LatLng(33.51759241572161 ,126.53088052729555),
        	new kakao.maps.LatLng(33.51555085263505 ,126.5113596498164),
        	new kakao.maps.LatLng(33.52054046421952 ,126.49490785069162),
        	new kakao.maps.LatLng(33.51135543928829 ,126.48376653726372),
        	new kakao.maps.LatLng(33.5041656238737 ,126.460405521573029),
        	new kakao.maps.LatLng(33.49777855153988 ,126.45400069294826),
        	new kakao.maps.LatLng(33.490732304450404 ,126.42090917694645),
        	new kakao.maps.LatLng(33.48566043514911 ,126.42061845677304),
        	new kakao.maps.LatLng(33.48547816862768 ,126.42059680900721),
        	new kakao.maps.LatLng(33.474682691652305 ,126.4218282855372),
        	new kakao.maps.LatLng(33.47442491855795 ,126.42178957208414),
        	new kakao.maps.LatLng(33.47297201668472 ,126.42464176696039),
        	new kakao.maps.LatLng(33.47296747183087 ,126.42507971406908),
        	new kakao.maps.LatLng(33.47454008457236 ,126.4341857000678),
        	new kakao.maps.LatLng(33.47461720440262 ,126.43434294595467),
        	new kakao.maps.LatLng(33.47457311108453 ,126.43441462489236),
        	new kakao.maps.LatLng(33.4746177835136 ,126.43476930265527),
        	new kakao.maps.LatLng(33.47772433998106 ,126.44271777376025),
        	new kakao.maps.LatLng(33.47782047781702 ,126.44306632904701),
        	new kakao.maps.LatLng(33.46227428556742 ,126.44768733607378),
        	new kakao.maps.LatLng(33.438744064763 ,126.44928617438744),
        	new kakao.maps.LatLng(33.43812336561095 ,126.4492097529662),
        	new kakao.maps.LatLng(33.41476461081694 ,126.4496555919949),
        	new kakao.maps.LatLng(33.41465508061485 ,126.44961002353881),
        	new kakao.maps.LatLng(33.39849808896104 ,126.45796004302944),
        	new kakao.maps.LatLng(33.397536300434886 ,126.45868152037022),
        	new kakao.maps.LatLng(33.388125836943246 ,126.47623016734723),
        	new kakao.maps.LatLng(33.390366027468914 ,126.49172248030267),
        	new kakao.maps.LatLng(33.38177378069858 ,126.51257687570876),
        	new kakao.maps.LatLng(33.3625392243329 ,126.52996803027317),
        	new kakao.maps.LatLng(33.373676380093 ,126.55371604488305),
        	new kakao.maps.LatLng(33.373159336828145 ,126.55968500376463)
        ]
    }, {
        name : 'Seogwipo',
        path : [
        	new kakao.maps.LatLng(33.23514803821773,126.3681945183294),
        	new kakao.maps.LatLng(33.235466186630674,126.38615966815381),
        	new kakao.maps.LatLng(33.246027713176034,126.4099359336336),
        	new kakao.maps.LatLng(33.23407085135511,126.43283754605763),
        	new kakao.maps.LatLng(33.23898550377383,126.43809914057229),
        	new kakao.maps.LatLng(33.23934980576342,126.46084489421015),
        	new kakao.maps.LatLng(33.22657848691234,126.47090148793932),
        	new kakao.maps.LatLng(33.233264505071325,126.49160461886979),
        	new kakao.maps.LatLng(33.23087461738189,126.50817703176487),
        	new kakao.maps.LatLng(33.24082043433458,126.51977134812911),
        	new kakao.maps.LatLng(33.239039267128504,126.54361994565458),
        	new kakao.maps.LatLng(33.240793226973274,126.56620451352701),
        	new kakao.maps.LatLng(33.24510750951252,126.57203056144999),
        	new kakao.maps.LatLng(33.24371564858757,126.58901738388529),
        	new kakao.maps.LatLng(33.23621090523042,126.59928143623942),
        	new kakao.maps.LatLng(33.24226168158715,126.61721092328948),
        	new kakao.maps.LatLng(33.25380720118425,126.62300105945197),
        	new kakao.maps.LatLng(33.26359479269883,126.62433614118643),
        	new kakao.maps.LatLng(33.265033123434705,126.62204475403367),
        	new kakao.maps.LatLng(33.26820086193624,126.62306864123471),
        	new kakao.maps.LatLng(33.285410420936806,126.6143558524151),
        	new kakao.maps.LatLng(33.285808591141944,126.61385071351843),
        	new kakao.maps.LatLng(33.2893541515565,126.60360287035188),
        	new kakao.maps.LatLng(33.29288391884996,126.60475322617683),
        	new kakao.maps.LatLng(33.29567061603791,126.60501338568034),
        	new kakao.maps.LatLng(33.297898409833344,126.60356410028443),
        	new kakao.maps.LatLng(33.306109366471986,126.60099391808346),
        	new kakao.maps.LatLng(33.31046737102801,126.59917033613056),
        	new kakao.maps.LatLng(33.314763899650316,126.59988368553633),
        	new kakao.maps.LatLng(33.33487920636853,126.58640478100924),
        	new kakao.maps.LatLng(33.347858737632514,126.56714243853224),
        	new kakao.maps.LatLng(33.352483464211694,126.56240754738099),
        	new kakao.maps.LatLng(33.35287617254808,126.56230367594429),
        	new kakao.maps.LatLng(33.35610164939701,126.56067693276881),
        	new kakao.maps.LatLng(33.35673718042064,126.56042142252166),
        	new kakao.maps.LatLng(33.36481752962276,126.54621011514958),
        	new kakao.maps.LatLng(33.3608527911869,126.52153598225058),
        	new kakao.maps.LatLng(33.35984676349021,126.49909140831039),
        	new kakao.maps.LatLng(33.35495440141718,126.49044844916217),
        	new kakao.maps.LatLng(33.36007752658515,126.46481733628374),
        	new kakao.maps.LatLng(33.356268258059984,126.43854956682002),
        	new kakao.maps.LatLng(33.3383985899825,126.43495082375107),
        	new kakao.maps.LatLng(33.333469256041454,126.42750237367318),
        	new kakao.maps.LatLng(33.313296043583264,126.42275245514243),
        	new kakao.maps.LatLng(33.30475518974645,126.4069397516078),
        	new kakao.maps.LatLng(33.291566003451784,126.40000904785725),
        	new kakao.maps.LatLng(33.291713036991695,126.39961198757109),
        	new kakao.maps.LatLng(33.304203592928175,126.38342034968608),
        	new kakao.maps.LatLng(33.2987410378202,126.37809058012756),
        	new kakao.maps.LatLng(33.28980408225023,126.37243261720478),
        	new kakao.maps.LatLng(33.27529885446741,126.37008733263443),
        	new kakao.maps.LatLng(33.26805890694075,126.37250802596114),
        	new kakao.maps.LatLng(33.259498087936734,126.37214210189094),
        	new kakao.maps.LatLng(33.25304769241627,126.37089676492452),
        	new kakao.maps.LatLng(33.24924397973532,126.37153956772579),
        	new kakao.maps.LatLng(33.24237733648532,126.37141814458013),
        	new kakao.maps.LatLng(33.23972034254121,126.37022227285512),
        	new kakao.maps.LatLng(33.23948934623749,126.37012233665143),
        	new kakao.maps.LatLng(33.23514803821773,126.3681945183294)
        ]
    }, {
        name : 'Andeok',
        path : [
        	new kakao.maps.LatLng(33.2180012523362,126.29370045629935),
        	new kakao.maps.LatLng(33.226842759588585,126.3011567314909),
        	new kakao.maps.LatLng(33.2414102104448,126.32680296263841),
        	new kakao.maps.LatLng(33.23620295601402,126.33813081517343),
        	new kakao.maps.LatLng(33.23514803821773,126.3681945183294),
        	new kakao.maps.LatLng(33.23948934623749,126.37012233665143),
        	new kakao.maps.LatLng(33.23972034254121,126.37022227285512),
        	new kakao.maps.LatLng(33.24237733648532,126.37141814458013),
        	new kakao.maps.LatLng(33.24924397973532,126.37153956772579),
        	new kakao.maps.LatLng(33.25304769241627,126.37089676492452),
        	new kakao.maps.LatLng(33.259498087936734,126.37214210189094),
        	new kakao.maps.LatLng(33.26805890694075,126.37250802596114),
        	new kakao.maps.LatLng(33.27529885446741,126.37008733263443),
        	new kakao.maps.LatLng(33.28980408225023,126.37243261720478),
        	new kakao.maps.LatLng(33.2987410378202,126.37809058012756),
        	new kakao.maps.LatLng(33.304203592928175,126.38342034968608),
        	new kakao.maps.LatLng(33.291713036991695,126.39961198757109),
        	new kakao.maps.LatLng(33.291566003451784,126.40000904785725),
        	new kakao.maps.LatLng(33.304778015574094,126.40700134716894),
        	new kakao.maps.LatLng(33.31329603491746,126.42275253036843),
        	new kakao.maps.LatLng(33.32230936396086,126.42260962009418),
        	new kakao.maps.LatLng(33.34112138920072,126.43258970139088),
        	new kakao.maps.LatLng(33.34676141016978,126.37531019678792),
        	new kakao.maps.LatLng(33.341382884987816,126.3687013039206),
        	new kakao.maps.LatLng(33.343631100486526,126.34163848016027),
        	new kakao.maps.LatLng(33.32744510180653,126.32410317744464),
        	new kakao.maps.LatLng(33.326653553820776,126.30594661437935),
        	new kakao.maps.LatLng(33.321992058086934,126.29632270694873),
        	new kakao.maps.LatLng(33.31049366010903,126.29240919388319),
        	new kakao.maps.LatLng(33.30312231821929,126.28211829944708),
        	new kakao.maps.LatLng(33.29614908419651,126.29364678345605),
        	new kakao.maps.LatLng(33.284041446560835,126.29533460098754),
        	new kakao.maps.LatLng(33.27494449655122,126.30460282974109),
        	new kakao.maps.LatLng(33.26599286477776,126.29505942460793),
        	new kakao.maps.LatLng(33.258798655440096,126.29641269923287),
        	new kakao.maps.LatLng(33.23117306927033,126.28483061335437),
        	new kakao.maps.LatLng(33.2180012523362,126.29370045629935)
        ]
    }
];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.36209328052907,126.53147109994914), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption),
    customOverlay = new kakao.maps.CustomOverlay({}),
    infowindow = new kakao.maps.InfoWindow({removable: true});

	map.setDraggable(false);

// 지도에 영역데이터를 폴리곤으로 표시합니다 
for (var i = 0, len = areas.length; i < len; i++) {
    displayArea(areas[i]);
}

// 다각형을 생상하고 이벤트를 등록하는 함수입니다
function displayArea(area) {

    // 다각형을 생성합니다 
    var polygon = new kakao.maps.Polygon({
        map: map, // 다각형을 표시할 지도 객체
        path: area.path,
        strokeWeight: 2,
        strokeColor: '#004c80',
        strokeOpacity: 0.8,
        fillColor: '#fff',
        fillOpacity: 0.7 
    });

    // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
    // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
    kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
        polygon.setOptions({fillColor: '#09f'});

        /* customOverlay.setContent('<div class="area">' + area.name + '</div>'); */
        
         var content = '<div class="info">' + 
                    '   <div class="title">' + area.name + '</div>' +     
                    '</div>';

        infowindow.setContent(content); 
        infowindow.setPosition( new kakao.maps.LatLng(33.51691402927591,126.1013924812912)); 
        infowindow.setMap(map);
        
        customOverlay.setPosition(mouseEvent.latLng); 
        customOverlay.setMap(map);
    });

    // 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경합니다 
    kakao.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
        
        customOverlay.setPosition(mouseEvent.latLng); 
    });

    // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
    // 커스텀 오버레이를 지도에서 제거합니다 
    kakao.maps.event.addListener(polygon, 'mouseout', function() {
        polygon.setOptions({fillColor: '#fff'});
        customOverlay.setMap(null);
    }); 
    
	// 값을 넣는 방법은 각 태그들의 ID를 받아와 INNERHTML로 값을 전달해주는 방식으로 진행.
	const text_title = document.getElementById('polygon-title');
	const text_location = document.getElementById('polygon-location');
	const text_desc = document.getElementById('polygon-text-desc');
	const image_box = document.getElementById('polygon-image-box');
	let title = area.name;
	
	const addToList = (Area) => {	
		
			text_title.innerHTML = Area.title;
			text_location.innerHTML = Area.location;
			text_desc.innerHTML = Area.text;
        	image_box.innerHTML = "<img src="+Area.image+" style='width:100%;height:450px;'/>";
	

//"<c:url value='/' />/images/btn/add.png" />
	};
	
    // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다 
    kakao.maps.event.addListener(polygon, 'click', function() {
       
    	const xhttp = new XMLHttpRequest();	
    	var param = title;
		xhttp.addEventListener('readystatechange', (e) => {
			const readyState = e.target.readyState;
			const httpStatus = e.target.status;
			
			if(readyState == 4 && httpStatus == 200) {
				addToList(JSON.parse(e.target.responseText));
			}
		});
		xhttp.open('GET', '/jeju/getArea/'+param, true)
		xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8')

		xhttp.send();
		
		$('.polygon-modal, .polygon-overlay').addClass('polygon-active')
		
    });
}

	$('.polygon-btn-close, .polygon-overlay').click(function(){
		$('.polygon-modal, .polygon-overlay').removeClass('polygon-active')
	});
	