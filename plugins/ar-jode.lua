--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD HUSSIEN                 ▀▄ ▄▀ 
▀▄ ▄▀   BY SAJJADHUSSIEN   (@TH3_Evil)     ▀▄ ▄▀    
▀▄ ▄  JUST WRITED BY SAJJAD HUSSIEN        ▀▄ ▄▀  
▀▄ ▄▀      decoration      :  زخرفه        ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

local function sajjadhussien(msg, matches)
local reply_id = msg['id']
	if not is_momod(msg) then
	local sajjadhussien= '🚫 لتلعب بكيفك ❌ للمشرفين فقط 🔴👍'
	return
	reply_msg(reply_id, sajjadhussien, ok_cb, false)
	end
	if #matches < 2 then
		return "بعد هذا الأمر، من خلال تحديد كلمة المسافة أو العبارة التي تريد إدخال الكتابة الجميلة"
	end
	if string.len(matches[2]) > 44 then
		return "الحد الأقصى المسموح به 40 حرفاالأحرف الإنجليزية والأرقام"
	end
	local reply_id = msg['id']
	local font_base = "ء,ئ,ا,ب,ت,ث,ج,ح,خ,د,ذ,ر,ز,س,ش,ص,ض,ط,ظ,ع,غ,ق,ف,ك,ل,م,ن,ه,و,ي,0,9,8,7,6,5,4,3,2,1,.,_"
	local font_hash = "ي,و,ه,ن,م,ل,ك,ف,ق,غ,ع,ظ,ط,ض,ص,ش,س,ز,ر,ذ,د,خ,ح,ج,ث,ت,ب,ا,ئ,ء,0,1,2,3,4,5,6,7,8,9,.,_"
	local fonts = {
		"ء,ئ,ٳ,ٻً,تہ,ثہ,جہ,حہ,خہ,دٍ,ذً,ر,ڒٍ,سہ,شہ,صً,ض,طہ,ظً,عـ,غہ,قـً,فُہ,كُہ,لہ,مـْ,نٍ,ه,ﯝ,يہ,0ً,1,2ً,3ً,4ً,5ً,6ً,7َ,8ً,9ً,.,_",
		"ء,ئ,آ̲,ب̲,ت̲,ث̲,ج̲,ح̲,خ̲,د̲,ذ̲,ر̲,ز̲,س̲,ش̲,ص̲,ض,ط̲,ظً̲,ع̲,غ̲,ق̲,ف̲,ك̲,ل̲,م̲,ن̲,ہ̲,ۆ̲,ي̲,0̲,1̲,2̲,3̲,4̲,5̲,6̲,7̲,8̲,9̲,.,_",
		"ء,ئ,آ̯͡,ب̯͡,ت̯͡,ث̯͡,ج̯͡,ح̯͡,خ̯͡,د̯͡,ذ̯͡,ر̯͡,ز̯͡,س̯͡,ش̯͡,ص̯͡,ض,ط̯͡,ظ̯͡,ع̯͡,غ̯͡,ق̯͡,ف̯͡,ك̯͡,ل̯͡,م̯͡,ن̯͡,ہ̯͡,ۆ̯͡,ي̯͡,0̯͡,1̯͡,2̯͡,3̯͡,4̯͡,5̯͡,6̯͡,7̯͡,8̯͡,9̯͡,.,_",
		"ء,ئ,آ͠,ب͠,ت͠,ث͠,ج͠,ح͠,خ͠,د͠,ذ͠,ر,ز͠,س͠,ش͠,ص͠,ض,ط͠,ظ͠,ع͠,غ͠,ق͠,ف͠,گ͠,ل͠,م͠,ن͠,ه͠,و͠,ي͠,0͠,1͠,2͠,3͠,4͠,5͠,6͠,7͠,8͠,9͠,.,_",
		"ء,ئ,آ,ب,ت,ث,جٍ,حٍ,خـ,دِ,ڌ,رٍ,ز,س,شُ,ص,ض,طُ,ظً,عٍ,غ,ق,فَ,گ,لُ,م,ن,ہ,ۆ,يَ,₀,₁,₂,₃,₄,₅,₆,₇,₈,₉,.,_",		"ء,ئ,إآ,̜̌ب,تـ,,ثـ,جٍ,و,خ,ﮃ,ذ,رٍ,زً,سًٌُُ,شُ,ص,ض,طُ,ظً,۶,غ,ق,فَ,گ,لُ,مـ,ن,ه̷̸̐,ۈ,يَ,0,⇂,Շ,Ɛ,h,ʢ,9,L,8,6,.,_",
		"ء,ئ,آ,ب,ت,ث,جٍ,حٍ,خـ,دِ,ڌ,رٍ,ز,س,شُ,ص,ض,طُ,ظً,عٍ,غ,ق,فَ,گ,لُ,م,ن,ہ,ۆ,يَ,₀,₁,₂,₃,₄,₅,₆,₇,₈,₉,.,_",
		"ء,ئ,ٵ̷ ,ب̷,ت̷,ث̷,ج̷,ح̷,خ̷,د̷ِ,ذ̷,ر̷,ز̷,س̷,ش̷ُ,ص̷,ض,ط̷ُ,ظ̷ً,ع̷ٍ,غ̷,ق̷,ف̷َ,گ̷,ل̷,م̷,ن̷,ہ̷,ۆ̷,ي̷,0̷,1̷,2̷,3̷,4̷,5̷,6̷,7̷,8̷,9̷,.,_",
		"ء,ئ,آإ,بـ♥̨̥̬̩,تـ♥̨̥̬̩,ثـ♥̨̥̬̩,جـ♥̨̥̬̩,حـ♥̨̥̬̩,خ,د,ذ,ر,ز,س,ش,ص,ض,ط♥̨̥̬̩,ظ♥̨̥̬̩,ع,غ♥̨̥̬̩,قـ♥̨̥̬̩,ف,گ♥̨̥̬̩,ل,مـ♥̨̥̬̩,ن,هـ♥̨̥̬̩,و,ي,⁰,¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹,.,_",
		"ء,ئ,آ,بُ,تْ,ثُ,ج,ح,ځ,ڊ,ڏ,ر,ڒٍ,ڛ,شُ,صً,ض,طُ,ظً,عٌ,غٍ,قٌ,فُ,ڪ,لُ,مْ,نْ,ﮩ,وُ,يُ,0,1,2,3,4,5,6,7,8,9,.,_",
		"ء,ئ,آ,بَ,ت,ث,جٍ,حٍ,خـ,دِ,ذَ,رٍ,زْ,س,شُ,ص,ض,طُ,ظً,عٍ,غ,قٌ,فُ,ڪ,لُِ,م,ن,هـ,وُ,ي,0̲̣̣̥,1̣̣̝̇̇,2̲̣̣̣̥,3̍̍̍̊,4̩̥,5̲̣̥,6̥̥̲̣̥,7̣̣̣̝̇̇̇,8̣̝̇,9̲̣̣̥,.,_",
		"ء,ئ,آ,ب,ت,ث,جٍ,حٍ,خـ,دِ,ڌ,رٍ,ز,س,شُ,ص,ض,طُ,ظً,عٍ,غ,ق,فَ,گ,لُ,م,ن,ہ,ۆ,يَ,₀,₁,₂,₃,₄,₅,₆,₇,₈,₉,.,_",
		"ء,ئ,ٵ̷ ,ب̷,ت̷,ث̷,ج̷,ح̷,خ̷,د̷ِ,ذ̷,ر̷,ز̷,س̷,ش̷ُ,ص̷,ض,ط̷ُ,ظ̷ً,ع̷ٍ,غ̷,ق̷,ف̷َ,گ̷,ل̷,م̷,ن̷,ہ̷,ۆ̷,ي̷,0̷,1̷,2̷,3̷,4̷,5̷,6̷,7̷,8̷,9̷,.,_",
		"ء,ئ,آ͠,ب͠,ت͠,ث͠,ج͠,ح͠,خ͠,د͠,ذ͠,ر,ز͠,س͠,ش͠,ص͠,ض,ط͠,ظ͠,ع͠,غ͠,ق͠,ف͠,گ͠,ل͠,م͠,ن͠,ه͠,و͠,ي͠,0͠,1͠,2͠,3͠,4͠,5͠,6͠,7͠,8͠,9͠,.,_",
		"ء,ئ,آ̯͡,ب̯͡,ت̯͡,ث̯͡,ج̯͡,ح̯͡,خ̯͡,د̯͡,ذ̯͡,ر̯͡,ز̯͡,س̯͡,ش̯͡,ص̯͡,ض,ط̯͡,ظ̯͡,ع̯͡,غ̯͡,ق̯͡,ف̯͡,ك̯͡,ل̯͡,م̯͡,ن̯͡,ہ̯͡,ۆ̯͡,ي̯͡,0̯͡,1̯͡,2̯͡,3̯͡,4̯͡,5̯͡,6̯͡,7̯͡,8̯͡,9̯͡,.,_",
		"ء,ئ,آإ,بـ♥̨̥̬̩,تـ♥̨̥̬̩,ثـ♥̨̥̬̩,جـ♥̨̥̬̩,حـ♥̨̥̬̩,خ,د,ذ,ر,ز,س,ش,ص,ض,ط♥̨̥̬̩,ظ♥̨̥̬̩,ع,غ♥̨̥̬̩,قـ♥̨̥̬̩,ف,گ♥̨̥̬̩,ل,مـ♥̨̥̬̩,ن,هـ♥̨̥̬̩,و,ي,⁰,¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹,̴.̴,̴_̴",
	}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	local result = {}
	i=0
	for k=1,#fonts do
		i=i+1
		local tar_font = fonts[i]:split(",")
		local text = matches[2]
		local text = text:gsub("ء",tar_font[1])
		local text = text:gsub("ئ",tar_font[2])
		local text = text:gsub("ا",tar_font[3])
		local text = text:gsub("ب",tar_font[4])
		local text = text:gsub("ت",tar_font[5])
		local text = text:gsub("ث",tar_font[6])
		local text = text:gsub("ج",tar_font[7])
		local text = text:gsub("ح",tar_font[8])
		local text = text:gsub("خ",tar_font[9])
		local text = text:gsub("د",tar_font[10])
		local text = text:gsub("ذ",tar_font[11])
		local text = text:gsub("ر",tar_font[12])
		local text = text:gsub("ز",tar_font[13])
		local text = text:gsub("س",tar_font[14])
		local text = text:gsub("ش",tar_font[15])
		local text = text:gsub("ص",tar_font[16])
		local text = text:gsub("ض",tar_font[17])
		local text = text:gsub("ط",tar_font[18])
		local text = text:gsub("ظ",tar_font[19])
		local text = text:gsub("ع",tar_font[20])
		local text = text:gsub("غ",tar_font[21])
		local text = text:gsub("ق",tar_font[22])
		local text = text:gsub("ف",tar_font[23])
		local text = text:gsub("ك",tar_font[24])
		local text = text:gsub("ل",tar_font[25])
		local text = text:gsub("م",tar_font[26])
		local text = text:gsub("ن",tar_font[27])
		local text = text:gsub("ه",tar_font[28])
		local text = text:gsub("و",tar_font[29])
		local text = text:gsub("ي",tar_font[30])
		local text = text:gsub("0",tar_font[31])
		local text = text:gsub("9",tar_font[32])
		local text = text:gsub("8",tar_font[33])
		local text = text:gsub("7",tar_font[34])
		local text = text:gsub("6",tar_font[35])
		local text = text:gsub("5",tar_font[36])
		local text = text:gsub("4",tar_font[37])
		local text = text:gsub("3",tar_font[38])
		local text = text:gsub("2",tar_font[39])
		local text = text:gsub("1",tar_font[40])

		table.insert(result, text)
	end
	local result_text = "🆕 زخرفة : "..matches[2].."\n💢😻 تصميم "..tostring(#fonts).." خط :\n🌐▶️〰〰〰〰〰◀️🌐\n"
	a=0
	for v=1,#result do
		a=a+1
		result_text = result_text..a.."- "..result[a].."\n\n"
	end
	return result_text.."🌐▶️〰️〰️〰️〰️〰️◀️🌐\n-🔧 DEV 👹: @TH3_Evil\n-🔧 channel 👹: @TH3Evil_iq\n-🔧 DEV BOT 👹: @sajjad_aliraqi_bot"
end

return {
	description = "Fantasy Writer",
	usagehtm = '<tr><td align="center">decoration متن</td><td align="right">مع هذا البرنامج المساعد يمكن النصوص الخاصة بك مع مجموعة متنوعة من الخطوط والتصميم الجميل. أحرف الحد الأقصى المسموح به هو 20 ويمكن فقط استخدام الأحرف الإنجليزية والأرقام</td></tr>',
	usage = {"decoration [text] : زخرفه النص",},
	patterns = {
		"^(زخرفه) (.*)",
		"^(زخرفه)$",
		},
	run = sajjadhussien
}
