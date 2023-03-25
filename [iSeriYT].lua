local old = gg.getRanges();

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

gg.setVisible(true)
LuaLibraryTool = -1
function HOME()
MENU = gg.choice({
        "Multi Damage", --choice
        "Ultimated Skill", --choice
        "Bow Charged", --choice
        "Reset All (&T)", --choice
        "Exit" --EndScript
}, nil, "Don't Use Ultimate Skill With Bow Chaged (Aim Jumping)")
if MENU == nil then
  else
   if MENU == 1 then --choice
      MENU1()
     end
   if MENU == 2 then --choice
      MENU2()
     end
   if MENU == 3 then --choice
      MENU3()
     end
   if MENU == 4 then --choice
      MENU4()
     end
    if MENU == 5 then --EndScript
      LOBBY()
     end
   end
  LuaLibraryTool = -1
end

function MENU1() --choice
gg.clearResults()
gg.searchNumber("1.0;1.42813187e-37;1.40129846e-45;7.14668687e10;-7.40689959e16;-1.00922977e31::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 1) 
M = gg.getResults(100) 
gg.clearResults() for i = 1, #M do
            M[i].address = M[i].address + 0xfffffffffffffff4
            M[i].value = '0.9'
            M[i].freeze = true
          end
          gg.addListItems(M)
       end
       
function MENU2() --choice
gg.searchNumber("1;0;-1;1065353216;-1082130432;-1082130432;-1082130432::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
G = gg.getResults(100) 
gg.clearResults() for i = 1, #G do
            G[i].address = G[i].address + 0xffffffffffffffd4
            G[i].value = '1080215125'
            G[i].freeze = true
          end
          gg.addListItems(G)
       end

function MENU3() --choice
 gg.clearResults() gg.searchNumber("0;0;2,081,823,275;2,106,124,480;57,803,182::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)  gg.refineNumber("0;2081823275", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1) gg.refineNumber("2081823275", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
K  = gg.getResults(100) 
gg.clearResults() for i = 1, #K do
            K[i].value = '1576414223'
            K[i].freeze = true
          end
          gg.addListItems(K)
       end 
       
function MENU4() --choice


M = gg.getListItems()
for i = 1, #M do
            M[i].value = '1576414223'
            M[i].freeze = false
          end
         gg.clearList()
          end
    
function LOBBY() --End Script
print("Created By iSeriYT")
gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end

while true do
  if gg.isVisible(true) then
    LuaLibraryTool = 1
    gg.setVisible(false)
  end
  if LuaLibraryTool == 1 then
    HOME()
  end
end
