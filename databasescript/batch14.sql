CREATE TABLE USERS (
	USERID NUMERIC(5) PRIMARY KEY,
    USERNAME CHARACTER VARYING (50) NOT NULL,
    USERNICKNAME CHARACTER VARYING (50) DEFAULT '',
    USEREMAIL CHARACTER VARYING (50) DEFAULT '',
    USERPIC CHARACTER VARYING (100) NOT NULL,
    USERIP CHARACTER VARYING (20) NOT NULL,
    USERPC CHARACTER VARYING (50) DEFAULT '',
    DELETEFLAG NUMERIC (5) DEFAULT 0
);

/*DROP TABLE MESSAGES; DROP TABLE USERS;
*/
CREATE TABLE MESSAGES (
  MESSAGEID SERIAL PRIMARY KEY,
  USERIDFROM NUMERIC REFERENCES USERS(USERID),
  USERIDTO NUMERIC REFERENCES USERS(USERID),
  MESSAGE TEXT DEFAULT '',
  DELETEFLAG NUMERIC (5) DEFAULT 0
);

SELECT * FROM USERS;
SELECT * FROM MESSAGES;

INSERT INTO USERS (USERID, USERNAME, USERNICKNAME, USEREMAIL, USERPIC, USERIP, USERPC) VALUES
('1','Johnrey Angolluan','John','johnangolluan@aeoncredit.com.ph','john.jpg','192.168.1.2','CPU279'),
('2','Kristina Gumarao','Kris','kgumarao@aeoncredit.com.ph','kris.jpg','172.16.130.41','CPU305'),
('3','Rassel Estrella','Rass','restrella@aeoncredit.com.ph','rassel.jpg','172.16.97.38','CPU130'),
('4','Menisa Bella Mendoza','Menisa','mbmendoza@aeoncredit.com.ph','menisa.jpg','172.16.97.168','CPU349'),
('5','Nick Terence Tolentino','Nick','ntolentino@aeoncredit.com.ph','nick.jpg','172.16.97.254','CPU160'),

('6','Jonathan Perilla','Jo','jperilla@aeoncredit.com.ph','jo.jpg','172.16.130.97',''),
('7','Ronalene Maggay','Rona','rmaggay@aeoncredit.com.ph','rona.jpg','172.16.137.69','CPU393'),
('8','Chiarra Jane Abante','Cha','cabante@aeoncredit.com.ph','chiarra.jpg','172.16.129.70','CPU358'),
('9','Blenda Rose Serat','Ble','bserat@aeoncredit.com.ph','blenda.jpg','172.16.130.61','CPU386'),
('10','Jonathan Emir Anastacio','Onat','janastacio@aeoncredit.com.ph','onat.jpg','172.16.130.129',''),

('11','Dorothy Ilaine Ecalne','Doro','decalne@aeoncredit.com.ph','doro.jpg','172.16.130.106',''),
('12','Alexis John Cantiga','Alex','acantiga@aeoncredit.com.ph','alex.jpg','172.16.137.20','CPU389');


INSERT INTO MESSAGES (USERIDFROM, USERIDTO, MESSAGE) VALUES
(1,1,'Taba mo! Unting Green Tea pa!'),
(2,1,'Bro j, stay chubby, pde mag improve dagdagan ang tmbang pero wag na msydo konti lang ok? paluin ko yang tyan mo e.'),
(3,1,'Kuya J! hahahaha I know na medyo hindi tayo close kasi wala naman tayong same interest sa buhay. All I can say is siguro you’re my opposite pagdating sa ugali. Minsan iniisip ko your too good to be true siguro kasi hindi ka madaling naaasar sa mga bagay na nakakaasar na I’m not that kind kasi. I don’t know how you handle those situation pero sana hindi ka maabuso ng mga taong nasa paligid mo sa ganyan character mo. Wish you sa career kayang kaya mo yan konting kapal lang ng mukha alam ko magiging successful ka sa field. Aja fighting! Happy 2nd year anniversary Kuya J.'),
(4,1,'Stay humble and chubby!! Thanks to everything, sa pangugulo ko and favors. Hohoho'),
(5,1,'Pa John alam mo na hahah, thank you as always, stay humble as you are  Java man certified haha!'),
(6,1,'Yow salamat sa mga ipinuslit mong mga training materials kahit naas download folder ko pa din siya until now ahhah!'),
(7,1,'Good luck sa paghahanap ng work. :D'),
(8,1,'Bro thank you sa libreng milk tea last month.. hahahaha'),
(9,1,'Hi Bui!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Kung gusto mo n talaga mag diet.. pls know n lagi lng akong andito para damayan ka. :D You know what to do na sa foods ah!  THANK YOU IN ADVANCE!!! I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! '),
(10,1,'God Bless. Always be yourself. Wish you a happy life.'),
(11,1,'Natouch naman ako sa mga nabasa ko >.< thank you! sa pagtuturo skin kapag nahihirapan ako and sa pakikinig sa mga sinasabi ko lalo na sa pagtatago ng mga dark secrets natin hahaha. Sa pagiging matyaga kakaturo khit engot engot ako hahaha. lahat ng projects na napuntahan ko magkasama tau yiiiieeee sa huli lang hindi haha. . wish ko sana mahanap mo na ang BUI ng buhay mo hahaha. Advance Happy Birthday :D at GodBless. See you :*'),
(12,1,'(NO MESSAGE!)'),
(1,2,'Hi Kris, kelan kasal? hahaha  invite mo kami lahat ah.. kahit reception lang haha XD .. !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,2,'Hi myself. Stay pretty and sexy. '),
(3,2,'Tita Tina. Wala akong mamemessage sayo kasi you’re so lucky sa love life sa family at sa career siguro dagdagan mo pa ang pagaalaga sa mga blessing sayo ni Lord. Love love madam stay pretty (lol) young (lalong lol) and carefree personality. Enjoy at pakasal ka na wag mo kami kalimutan ng mga madam can’t wait sa magiging babies mo (yes babies talaga. hahahahaha) Happy happy 2nd year anniversary!. '),
(4,2,'Krissy pizzee… thanks much! And more Jollibee to come. Looking forward sa bago mong recording.. basta share mo lang agad sa batch! '),
(5,2,'Kristinapay haha!! naku kristina, wag kana humadlang samen ni meng haha! ingat sa pag uwi uwi lage sa san Pablo pag gabi, stay strong with Carlito  , thanks sa mga help mo sakin sa FEP hehehhe.'),
(6,2,'Hi krissy! Salamat sa concern, wag mong isipin ang pagtanda, ang isipin mo nalang nag level up ka. haha! '),
(7,2,'Kumpletuhin mo isang bwuan na walang absent madam haha :p'),
(8,2,'Good Luck  sa KASAL mo hahaha… alam kung malapit na.. invite mu kme ha… hahaha '),
(9,2,'Hi Kris!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  I know that we’re all looking forward to leave this company this year. Pero bago un… Banatan mo naman kmi ng madming jokes bgo tayo maghiwa hiwalay. HAHAHA! Stay inlab! I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! '),
(10,2,'God Bless. Always be yourself. Wish you a happy life.'),
(11,2,'Krissy, ang pinakamatanda sa lahat pero para ding bata hahaha. . Sana invited ako sa kasal nyo ni carlito para marami pagkain hahaha. .tsaka sana magkababy kna rin tapos ako nlng paglihian mo hahaha. . .  Advance Happy Birthday :D at GodBless. See you :*'),
(12,2,'(NO MESSAGE!)'),
(1,3,'Hi Rass, sorry sa lahat, sa pangaaway ko sayo.. di aq galit sayo, sana ganun ka din sa kin hehehe.. !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,3,'Rassybellsbells. Ang aking favorite. Char. Ipagptloy mo lang ang pagmmhal mo kay bessy, u have ur chance. <3 ikaw p ba? waehehe mgfocus ka sa career habng ngiintay. Pra pag nkuha mo na sya mayaman ka na '),
(4,3,'Thanks v-much sa pangaaway, pakikinig and kahit ano pa!! Hahaha marami kang ng ginawa, hindi ko lahat maalala '),
(5,3,'Rass keep being lively and sa pagiging open mo sa nararamadman mo, sorry minsan pag nagagalit ako sayo hehe..'),
(6,3,'Hi rass! Salamat sa mga honest opinion at pagdinig sa mga drama ko sa buhay hahaha!'),
(7,3,'Iwasan mo maging patola. :p'),
(8,3,'Sana bawasan ang pagkapabebe mu.. hahaha charot.. wag magalet.. ngbibiro lng aq.. hahahaha'),
(9,3,'Hi Rass!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Pati n din sa pag coconsider mong mkitingin ako sa foods mo pag may chance.  I really appreciate ung concern mo sa amin ng mga alaga ko. Hihihi! Salamat sa pagkain Rass!  I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future. Set lng kayo ng ganap. Yung feasible ah… Hahaha!  good luck to all of us! '),
(10,3,'God Bless. Always be yourself. Wish you a happy life.'),
(11,3,'Rassie ! thank you dahil khit alam mo na medyo nagkaroon ng misunderstanding dati eh hndi kpa rin nagbabago ng pakikitungo sa iba hahaha. Pasensya na sa naging ugali ko before(alam mo na un hahaha) Sana mahanap mo na ung magiging icing sa ibabaw ng cupcake mo hahahaha . . .Advance Happy Birthday :D at GodBless. See you :*'),
(12,3,'(NO MESSAGE!)'),
(1,4,'Oi menisa, dami mo ng natulong sa kin.. dahil dyan irereto kita nick.. sagutin mo n kasi  XD jk , tandaan mo relasyon ang pinapatagal hindi ang panliligaw, pwede mo ring iapply yan sa mga next suitor mo :)		!<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha '),
(2,4,'Men mahigit 1 yr nang nanllgaw si nick, bastedin mo na para namn matpos na ng paghhrap nya. Gnun rin namn ang aabutin nyo,. LOL'),
(3,4,'Whaaa! Baby girl ko hindi ka na manhid so proud of you. Wala naman akong masasabi sayo kundi your so cold sa maraming bagay. Siguro magkaroon ka naman ng thoughtfulness kasi parang you’re more of a person na hindi ako mageeffort sayo ikaw ang mageffort for me. lol minsan need mo rin mageffort para sa friend mo kahit papaano were kindda expecting rin yun kasi we became good friend sayo share share lang but not too much ah .  Alam kong magiging successful ka sa career kaya hindi ko na iwiwish. Sana lang habang inaachieve mo yun goals mo kulayan mo naman yun lovelife mo napakacold mo kasi minsan eh. Happy 2nd year anniversary baby girl.'),
(4,4,':)'),
(5,4,'Alam mo nato meng, I love you as always  hmm. Mahirap man and conflicts but I promise to be better. Love you :*   '),
(6,4,'Salamat sa pagdinig sa kradramahan ko sa buhay '),
(7,4,'Be careful who you trust.  '),
(8,4,'Sana di mu na laging sundutin ung tagiliran q.. hahaha'),
(9,4,'Hi Mens!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  lalo n ung ganap natin sa despedida ni Gelo. More!!! HAHAHA! I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us!  #teamNickIsa'),
(10,4,'God Bless. Always be yourself. Wish you a happy life.'),
(11,4,'Hi Mens! Ingat ka palagi sa taong nagngangalang NICK TERENCE TOLENTINO :) alam ko nman na kaya mo protektahan ang sarili mo sa kanya hahaha mas lalaki kpa kc umasta dun haha. Mamimiss kita TT. bawas bawasan ang pagiging manhid baka ikatandang dalaga mo na yan :) . Kumain ka ng tama at hindi yung puro dahon at junk foods lng. gayahin mku :) papabatok kita kay nick kapag nakita kitang payat sa susunod n mga araw. Advance Happy Birthday :D at GodBless. See you :*'),
(12,4,'(NO MESSAGE!)'),
(1,5,'Nick, di ka rw mahal ni menisa, sabi nya.. hahahaha ... thanks for being a great leader sa batch natin.. kaw n lang last umalis.. para matatag pa rin batch 14 hanggang huli hahaha XD		!<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha '),
(2,5,'Negre. Ano di ka pa ba give up? Ilang years na? ano petsa na? lol Realtalk, kung mahal mo ipaglaban mo, kahit di ka mahal,AHAHHA Unahin mo muna kasi yang kaitiman mo bgo ang lovelife kaya di ngbbunga e. -.- lols anyway, goodluck and sana mging positive lahat ng outcome. '),
(3,5,'Nick Terence!! Naku malaking sakit ng ulo ang binigay mo sa akin gusto na kitang bangasan lol. pero pwera biro iwas-iwasan mong itrigger sa akin ang inis mo sa akin wala akong naaalalang may ginawa ako sayo masama hahahaha. Alalahanin mo muna yung mga magaganda kong nagawa for you; how I supported you and all those stuff. Learn to handle your anger dahil hindi siya maganda kung maging kayo man ni baby girl sure ako masasaktan mo siya sa ganyan mong ugali (Don’t take it the wrong way ah). Siguro nga maingay ako mahilig mangumprota sa mga problem ko pero ganun ako eh mas gusto kong masettle agad yun problema kaysa magact as if walang nangyari. Hindi rin naman naaapektuhan yung trabaho ko so I think okay lang yun. yun sayo kasi obvious na obvious na may problema ka ngingiti ngiti ka lang tapos magagalit ka.  I appreciate kung ayaw mong pagusapan o ayaw mong makasakit ka tapos ngumiti ka na lang pero dapat somehow may pinagrereleasan ka ng sama ng loob yun totoo release. Well apart from that you’re a good friend no doubt. Maybe all I wanted to say is that you have a friend kung may problema ka sabihin mo sa kanila don’t hesitate. Wish you a successful career and love life. Happy 2nd year anniversary Terence (para pang fuck boi talaga yun name mo joke lol)'),
(4,5,'Tumigil ka na sa kadramahan mo. Grow up na din!! Iwasan ang sabaw And Hindi ako magtthank you.  '),
(5,5,'Pogi ako'),
(6,5,'(NO MESSAGE!)'),
(7,5,'Be clear with your motives. '),
(8,5,'Pakibawasan ang pagiging sinungaling.. at mayabang di nakakatulong yan eh.. hahaha'),
(9,5,'Hi Nick!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Thank you sa papizza mo bro!  Thank you din sa pagging matyaga mong mag drawing for the batch.  - ung literal at ganap. HAHAHA! Don’t worry dude, If ever you need suggestions dito lng kami.  You can also ask me anytime.  I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us!  #teamNickIsa'),
(10,5,'God Bless. Always be yourself. Wish you a happy life.'),
(11,5,'Nigga, Negro, Uling, Shadow, One-sided, at kung ano ano pa :D. . . MAGTINO kna ha since bnigyan kna ng pagkakataon ni Menisa, wag mo ng sayangin! rare pa man din ang taong yan hahaha. . . Goodluck sa pagpapaputi. Dalhan mo nlng ako ng mga pasalubong nila or food ng batch sa bahay hahaha. . . Advance Happy Birthday :D at GodBless. See you :*'),
(12,5,'(NO MESSAGE!)'),
(1,6,'Yoww, galingan mo dyan sa PH, baka iabsorb kana dyan..hahaha..!<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,6,'Jojo. Isa lang ang gstong kong iimprove sayo. MOVEON. Char. Kng ayaw mo e ok lang kasi nsasayo nmn yan. kng san k msaya suporthan taka. Malay mo nman mkuha mo yan sa tyaga. v wag ka mkikinig sa mga negative says ko. wala ka mpapala hahha. Kmkontra lang ako kasi maiba lang  Maging msaya ka at ptibayin ang career. Kaya mo yan! '),
(3,6,'Kuya Jonath. Sana makahanap ka na ng iba. lol. joke lang pero parang may nagiba sayo last time na nagbundok tayo medyo parang may mali sayo I don’t know what it is. pero kung anuman yun you can get through with it. Love love love. Kahit na ilang beses kang nabigo sa pagibig basta hindi mawawala ang sarili mong kahulugan to that magiging masaya ka pa rin sa huli. Happy aniiv kuya.  '),
(4,6,'Hoy Jo! Umiwas ka na sa drama.. hohoho charot lang!! Wag niyo kong kalimutang iinvite magbadminton a. Thank you very much sa lahat!!!'),
(5,6,'Jo!!! Naku tiwala lang pre, ezhan mo lang lagi.. darating din yan <3'),
(7,6,'Hinay hinay sa issues. :p'),
(8,6,'Good Luck and God bless!! '),
(9,6,'Hi Jo!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  I know that we’re all looking forward to leave this company this year. Request ka diyan na patayuan k man lng ng rebulto bilang isang bayani ng ACSPH. HAHAHA! I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! '),
(10,6,'God Bless. Always be yourself. Wish you a happy life.'),
(11,6,'Status nyo? hahaha . . . mag iingat ka dyan . . . Advance Happy Birthday :D at GodBless. See you :*'),
(12,6,'(NO MESSAGE!)'),
(1,7,'Hi Ronz, congratz and goodluck sa deployment nyo, ingat kayo ni cha dun... tikim tikim kayo ng indian food dun, basta wg nyo lang dalhin yung amoy dito hahaha joke :D !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,7,'Ronabells. Ronda. ron. Snbi ko na nga knna namimiss ko na ang “moment” natin nila madam. srap tumwa ng labas nag gilagid lol kakamiss :D Mgpkattag kyo ni Char-les, alalahanin mo may ng aabang. May ngbbantay salakay.. sge ka. Waehehehe Ingat kyo ni madam dun. '),
(3,7,'Bessy. Wish ko sayo a healthy love life and a promising career yerns. Bilib ako sa inyo ni cha dahil nakayanan niyong mabuild yun sarili niyo kahit nasialisan na yung seniors niyo. Kayo na nga ang tinatawag minsan at hindi yun isa eh. keep up the good work alam ko isa yang sa pinakaimportante sayo. Happy 2nd year'),
(4,7,'Ronski!! Salamat din lahat and same with cha, keep ur belly open  '),
(5,7,'Rons, alam ko kahit bully kayo ni Cha sakin, youre still a good friend of mine  always take care sa india ha, alagaan nyo ang isat isa ni cha ha, stay strong with Charles %lt;3 '),
(6,7,'Hi rona! Isa kang inspirasyon sa mga in a relationship invite mo kami sa wedding mo haha!'),
(7,7,'Magresign ka pag di ka napromote. Wag kang magpadeploy sa india pag di ka napromote.'),
(8,7,'Good luck sa pagpaunta sa INDIA.. hehe Don’t forget my PASALUBONG!!! ahaha'),
(9,7,'Hi Rons!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Sayang lng at hindi n tayo mgkksama sama sa 18 para mag gala kasi paalis n kayo ni Cha.  Goodluck sa India tour niyo ni Cha.  I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! Stay inlab! '),
(10,7,'God Bless. Always be yourself. Wish you a happy life.'),
(11,7,'Hi Miss India din :D, ingat kau ni cha dun. lam mo kung san ako kokontakin kapag magpapakain na kau ha hahahah. . . Advance Happy Birthday :D at GodBless. See you :*'),
(12,7,'(NO MESSAGE!)'),
(1,8,'Cha goodluck sa deployment ninyo ni Ronz, ingat kayo dun, baka bigla kayong alukin ng kumot, unan.. hahah joke lang! pasalubong!!  :D  !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,8,'Chachibells. Isa ka sa huwarang anak at kaptid. LOLOLOLOL Namimiss ko na kyo ni madam ronda. wala na tyong “moment” na tmambay omgeee. Focus lang sa career mads at sa india nrramadman ko paguwi mo may partner ka na waehehehe '),
(3,8,'Cha cha cha kuriko cha cha cha (repeat 2x). Thank you sa pakikinig ng mga kwento ko your one of my friends na madaling kausap. Prangka like me pero it’s all part of who we are eh. Napaka-lakas mambully intense magmessage sa outlook. Well, all I can say is thank you sa lahat. enjoyin lang natin ang mga struggle sa kanya kanya nating buhay. You know na kasundong kasundo kita lalo na kapag may family issues tayo we share same fate sa mga nagpapagulo ng life natin pasaway na ate. Keep helping your family hope na maging successful tayo. whaa! Happy 2nd year anniversary chachi.'),
(4,8,'More panggugulo sana sa bahay niyo. Thank you din and keep ur belly open. '),
(5,8,'Naku Cha, kelan nyo bako titigilan I bully? Hahaha, Cha always take care of yourself, look after each other with Rona  ha, pag may prob kau dun PM nyo lang ako ha.'),
(6,8,'Hi cha! Salamat sa concern at pagtulong sa mga office issue. '),
(7,8,'Sana magkalovelife kana <3'),
(8,8,'ALAM KUNG MAGANDA KA NA.. at SOBRANG BAIT PA.. PAGPATULOI MU YAN.. hahahahaha'),
(9,8,'Hi Cha!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years! Thank you din sa pagpapasalubong mo sa amin ng pagkain.  inaabangan ko talaga ung pagbabalik mo lagi mula Quezon dahil dun. Bwahahahaha! Malpit n alis niyo ni Rons, good luck sa India tour beb.  paki uwian n lng kami ng elepante. :P Bwahahaha! I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! '),
(10,8,'God Bless. Always be yourself. Wish you a happy life.'),
(11,8,'Hi Miss India :D, ingat kau ni rona dun . lam mo kung san ako kokontakin kapag magpapakain na kau ha hahahah. . . Advance Happy Birthday :D at GodBless. See you :*'),
(12,8,'(NO MESSAGE!)'),
(1,9,'Yow, Wazzup.. Huwag mo n kong hampasin ng susi.. May paltos na ko sa bilbil. !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,9,'Ble, mainlove kalang lalo sa pagkain. Wag mo ng bgyan ng chance ang taong nagpapramdam syo, sa pagkain kalng mgfocus ha at sa career. Go foodie girl!'),
(3,9,'Blenda ang sarap mong mangurot I kindda like it. It shows lang na kung gaano ka naging close sa akin. Keep it up proud ako sayo bilang kapwa Christian. Ang masasabi ko lang is mag-entertain ka naman ng manliligaw mo wala na akong nababalitaan sa love life mo. Game lang ng game sa love don’t be afraid to fail we are always here for you kahit nasaan man kami tawag ka lang. sa career naman sana maging successful ka alam ko you can do it with confidence. hehehehe. Happy 2nd year anniversary blendina'),
(4,9,'Keep it up sa pagkain! And thanks sa foodie kahit labag sa loob mo minsan mamigay.. hehehe Char!'),
(5,9,'Ble, Stay Hungry as always ahha. Kaen lang pre! Hmm, balitaan mo ako sa next love life ha, pag may prob consult ka lang sakin  '),
(6,9,'(NO MESSAGE!)'),
(7,9,'Uy pagkain!'),
(8,9,'Sana makaranas ulit kme ng libreng ice cream sau.. nakakamiss eh ..hahaha'),
(9,9,'Stay Gardo! XD J3j3j3'),
(10,9,'God Bless. Always be yourself. Wish you a happy life.'),
(11,9,'Ble. Thanks dahil nagsheshare ka ng foodie skin khit alam kong kulang pa sau un hahaha. . Be active sa FB ah para dun nlng usap usap hahaha. . .Advance Happy Birthday :D at GodBless. See you :*'),
(12,9,'(NO MESSAGE!)'),
(1,10,'Yow, i know na di ka satisfied sa work mo ngayon.. pero tiis lang... baka mas ok sa next na lilipatan mo.		!<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.ano abot pa ba tayo ng 3 years? G? hahahaha'),
(2,10,'Onat, bwas bwasan mo ang pgging mukang aso mo. Lol baka carerin na ni durot pag aalaga syo. Char! Bsta pag knasal kyo ni Durot, imbitahibn nyo kami ha? wag ang hndi issumpa ko ang relasyon nyo LOLOL Goodluck sa career at alagaan mo pa lalo ni durot. Stay inloooooove <3 '),
(3,10,'Onath hmm. wala naman akong masyadong sasabihin masyado kasing private yun relationship niyo eh. Pakiingatan na lang si Ilaine may you love each other at the very end. Oh English yun. I want to wish you good luck sa career mo alam kong kaya mo yan. Do your best mapakita ka naman ng kagalingan kahit though alam na namin yun kakayahan mo pero sana sa next company mo pakita mo rin sa mga superior mo na kaya mo rin. Hindi masamang magpakabibo ganun daw talaga kapag work eh. Happy anniv    '),
(4,10,'Hey, traitor!! Maraming salamat kahit traydor ka! Hahaha Take care of Laine and wag pasaway!!'),
(5,10,'Onath! Always look after ilane, lalo na magkakahiwalay na kayo ha, goodluck sa next career pre, '),
(6,10,'Katukayo haha think positive di man naging maganda ung project mo sa una sigurado naman taying maganda si doro '),
(7,10,'Susundan mo ba si Ilaine? haha'),
(8,10,'Good Luck and God bless!! '),
(9,10,'Hi Nat!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Stay mapang asar khit palautot. Hahaha! Mahal k p din nmn daw ni Doro. HAHAHA! I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! '),
(10,10,'Pogi'),
(11,10,'Ang pangit mo talaga ! Alam mo na sasabhin ko sau sana intindihin mo nlng yun. . May sasabhin ako saung sikreto. . Ang totoo nyan. . . Marami akong chocs sa bahay nyahahahahaha. . . Advance Happy Birthday :D at GodBless. See you :*'),
(12,10,'(NO MESSAGE!)'),
(1,11,'Hoy Dorot, sa lahat ng batchmate ikaw ung isa sa mga pinaka-kaclose ko.. Simula pa lang nung lumabas tayo ng Prod hanggang napunta tayo sa HR pool lagi tayong magkasama sa team. hahaha.. good luck sa paglipat.. galingan mo! !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.Ayaw mo talaga ng 3 years? pwede pa atang bawiin.. hahaha'),
(2,11,'Durty. O my durty. Isa kang mkulet na bata, pakurot? Naway maging msaya ka sa new work mo. Kaya mo yan. wag mo lang bgyan ng pera si onat. Ang bata mo pa para mging sugar momy char! Pasampal si onat, wala lang gsto ko lang. :D'),
(3,11,'Doro, Doro Doro the explorer. Hey! Swiper no swiping swipper no swipping oh men. Doro the explorer. Lol Thank you madam sa pakikitungo ng maayos though I know when we are just starting medyo naging off yung ugali ko sa inyo (hahaha nakita ko kasi yun ng minsan inopen ko yun pc ni sir karl). Hoping sa tuloy tuloy na good relationship mo with onath sana maging masaya kayo o sana kayo na talaga. Sana maging proactive ka na sa susunod mong company I know na magiging mahusay ka rin just grab the opportunity. Kahit hindi man na appreciate ng company yun talent/efforts mo alam ko na kapag nagustuhan mo yung isang bagay I know that you will work hard for it. Go lang ng go. Salamat din sa mga korean related na mga palabas you reminded me so much ng pagkaadik ko noon sa koreanovela. Kung alam mo lang kung gaano ko ginawang parte ng buhay ko ang mga palabas dati. Keep up the good work. Happy 2nd year anniversary doroth. '),
(4,11,'Laine!!!! Thanks please and bantayan mo ung creepy-ing si onat.. feel ko parating may masamang balak. Whehehe'),
(5,11,'Doro, oy di nakita nakakasabay umuwi haha, may menisa na kasi ako eh :P goodluck sa next career mo ha, balitaan mo ko at ilibre ha,  stay strong with onath <3'),
(6,11,'Hi doro! salamat sa suporta, wag mo na pakawalan yang si onath, rare na jonathan yan hahah!'),
(7,11,'God bless sa next company! '),
(8,11,'Good luck sa next company mu.. haha Pafirst blood kau ha.. hahahaha '),
(9,11,'Hi Doro!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Nuks!!! Paalis n din siya.  Congrats bebe!  Wahehehe! I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future. See you around!  Stay mapang asar kay Nick! Hahaha!  good luck to all of us! '),
(10,11,'Love you <3 <3 <3'),
(11,11,'Sexy.'),
(12,11,'(NO MESSAGE!)'),
(1,12,'Good luck sa paglipat mo. Hanggang ngayon pinagiisapan ko pa rin kung dyan aq lipat sa inyo hahaha.. !<br>Thanks for great times and good memories. I''m so thankful for our friendship, you are awesome! Happy 2nd Anniversary.Sayang kala ko magpapa 3 years pa tayo hhaha  :D'),
(2,12,'Bro A.'),
(3,12,'Kuya alex the super busy batchmate ever. Hahahaha.  I want to wish you good luck sa career at sa lovelife mo ang tagal mo na yatang walang lovelife (whoo nagsalita ang meron) pero biro lang. wish kong makatagpo ka ng girl na mamahalin ka kahit napaka-serious mong tao lighten up party party a little bit. Happy 2nd year anniversary kuya.'),
(4,12,'Hi Alex! Thank you very much!! Good luck sa career and more power. Hahaha '),
(5,12,'Alex sama senpai haha! idol , goodluck sa next career ha '),
(6,12,'Yow long time no see haha badminton minsan pre din a tayo nakakapag usap.'),
(7,12,'God bless sa next company! '),
(8,12,'Good Luck and God bless!! '),
(9,12,'Hi Lex!!!  Happy Happy 2nd Anniversary! Thank you for the friendship, bonding and memories that we’ve had for the past years!  Onti n lng aalis k din. Uyyy walang kalimutan ah!  Congrats!!! :D I know that we’re all looking forward to leave this company this year. I hope that this won’t be the end and we’ll still keep in touch no matter what path we will take in the future.  good luck to all of us! '),
(10,12,'God Bless. Always be yourself. Wish you a happy life.'),
(11,12,'Hi Alex-sama-senpai. . isang napakagaling na nilalang hahha. . goodluck sa new career. wag mo kmi kalimutan hahaha. . .Advance Happy Birthday :D at GodBless. See you :*');
