MapPanel={}
local this= MapPanel

local gameObject
local transform
function MapPanel:Awake(_gameObject)
    gameObject=_gameObject
    transform=gameObject.transform
    this:InitPanel()
end
function MapPanel:InitPanel()

end