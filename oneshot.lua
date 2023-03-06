--if gg.getTargetPackage() ~= "com.miHoYo.GenshinImpact" then
	--gg.alert("Запустите Genshin Impact","Выход")
	--os.exit()
--end 

local textPass = "Пароль : "
local failPass = "Пароль не верен"
local sucPass = "Пароль верен"

local Password = {"03.03.23","15085","iSeriYT","GZNYT","Kor","kor","Allan","allan","Аллан","аллан"}
local men = gg.prompt({textPass},nil,{"text"})
if not men then return end
for l , I in ipairs(Password) do
if men[1] == I then A = true end
end
if A ~= true then gg.alert(failPass) return else gg.alert(sucPass)
end

function HOME()

hm = gg.choice({
	[1] = "5000% гг",
	[2] = "10000% гг",
	[3] = "20000% гг",
	[4] = "5000× Эмбер",
	[5] = "10000× Эмбер",
	[6] = "20000× Эмбер",
	[7] = "Сбросить всё",
	[8] = "Выход"
},nil,"Ну типа выбирай")

if hm == 1 then go() end
if hm == 2 then sto() end
if hm == 3 then two() end
if hm == 4 then goam() end
if hm == 5 then stoam() end
if hm == 6 then twoam() end
if hm == 7 then reset() end
if hm == 8 then exit() end

end

function go()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("0.04;-10;0.6::129", gg.TYPE_FLOAT)
gg.refineNumber("0.6", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults()
for i, v in ipairs(m) do
	m[i].value = "50"
	m[i].freeze = true
	end
	if gg.getResultCount() == 0 then
	gg.toast("Перезайди или поставь гг в отряд и перезайди")
	else
	gg.toast("гг 5000%")
	end
	gg.addListItems(m)
end

function sto()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("0.04;-10;0.6::129", gg.TYPE_FLOAT)
gg.refineNumber("0.6", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "100"
	m[i].freeze = true
	end
	if gg.getResultCount() == 0 then
	gg.toast("Перезайди или поставь гг в отряд и перезайди")
	else
	gg.toast("гг 10000%")
	end
	gg.addListItems(m)
end

function two()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("0.04;-10;0.6::129", gg.TYPE_FLOAT)
gg.refineNumber("0.6", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "200"
	m[i].freeze = true
	end
	if gg.getResultCount() == 0 then
	gg.toast("Перезайди или поставь гг в отряд и перезайди")
	else
	gg.toast("гг 20000%")
	end
	gg.addListItems(m)
end

function goam()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("11D;1;2;2;1::129", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
m = gg.getResults(1)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "5"
	m[i].freeze = true
	end
	gg.addListItems(m)
gg.searchNumber("11D;5;2;2;1::129", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
m = gg.getResults(1)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "50"
	m[i].freeze = true
	end
	gg.toast("Эмбер 50×")
	gg.addListItems(m)
end

function stoam()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("11D;1;2;2;1::129", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
m = gg.getResults(1)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "5"
	m[i].freeze = true
	end
	gg.addListItems(m)
gg.searchNumber("11D;5;2;2;1::129", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
m = gg.getResults(1)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "100"
	m[i].freeze = true
	end
	gg.toast("Эмбер 100×")
	gg.addListItems(m)
end

function twoam()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("11D;1;2;2;1::129", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
m = gg.getResults(1)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "5"
	m[i].freeze = true
	end
	gg.addListItems(m)
gg.searchNumber("11D;5;2;2;1::129", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT)
m = gg.getResults(1)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "200"
	m[i].freeze = true
	end
	gg.toast("Эмбер 200×")
	gg.addListItems(m)
end

function reset()
	
rs = gg.choice({
	[1] = "mc",
	[2] = "am"
},nil,"Ну типа выбирай")

if rs == 1 then mcrs() end
if rs == 2 then amrs() end
if rs == nil then return end

end

function mcrs()
mcrsch = gg.choice({
	[1] = "Сброс 5000% гг",
	[2] = "Сброс 10000% гг",
	[3] = "Сброс 20000% гг"
})

if mcrsch == 1 then mcrsch50() end
if mcrsch == 2 then mcrsch100() end
if mcrsch == 3 then mcrsch200() end

end

function mcrsch50()
gg.searchNumber("0.04;-10;50::129", gg.TYPE_FLOAT)
gg.refineNumber("50", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "0.6"
	m[i].freeze = true
	end
	gg.addListItems(m)
end

function mcrsch100()
gg.searchNumber("0.04;-10;100::129", gg.TYPE_FLOAT)
gg.refineNumber("100", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "0.6"
	m[i].freeze = true
	end
	gg.addListItems(m)
end

function mcrsch200()
gg.searchNumber("0.04;-10;200::129", gg.TYPE_FLOAT)
gg.refineNumber("200", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "0.6"
	m[i].freeze = true
	end
	gg.addListItems(m)
end

function amrs()
amrsch = gg.choice({
	[1] = "Сброс 50× Эмбер",
	[2] = "Сброс 100× Эмбер",
	[3] = "Сброс 200× Эмбер"
})

if amrsch == 1 then amrsch50() end
if amrsch == 2 then amrsch100() end
if amrsch == 3 then amrsch200() end

end

function amrsch50()
gg.searchNumber("11D;5;2;2;50::129", gg.TYPE_FLOAT)
gg.refineNumber("5", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "1"
	m[i].freeze = true
	end
	gg.addListItems(m)
	
gg.searchNumber("11D;1;2;2;50::129", gg.TYPE_FLOAT)
gg.refineNumber("50", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "1"
	m[i].freeze = true
	end
	gg.addListItems(m)
end

function amrsch100()
gg.searchNumber("11D;5;2;2;100::129", gg.TYPE_FLOAT)
gg.refineNumber("5", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "1"
	m[i].freeze = true
	end
	gg.addListItems(m)
	
gg.searchNumber("11D;1;2;2;100::129", gg.TYPE_FLOAT)
gg.refineNumber("100", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "1"
	m[i].freeze = true
	end
	gg.addListItems(m)
end

function amrsch200()
gg.searchNumber("11D;5;2;2;200::129", gg.TYPE_FLOAT)
gg.refineNumber("5", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "1"
	m[i].freeze = true
	end
	gg.addListItems(m)
	
gg.searchNumber("11D;1;2;2;200::129", gg.TYPE_FLOAT)
gg.refineNumber("200", gg.TYPE_FLOAT)
m = gg.getResults(1000)
gg.clearResults() for i, v in ipairs(m) do
	m[i].value = "1"
	m[i].freeze = true
	end
	gg.addListItems(m)
end

function exit() --End Script
gg.toast("Написал joykind")
gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
gg.clearResults()
end

while (true) do
	if gg.isVisible() then
		gg.setVisible(false)
		HOME()
	end
	gg.sleep(100)
end

function secret()
gg.toast("Created By Allan")
end