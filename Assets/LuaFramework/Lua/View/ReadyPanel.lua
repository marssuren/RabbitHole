ReadyPanel={}
local this=ReadyPanel

local gameObject
local transform

function ReadyPanel:Awake(_gameObject)
    gameObject=_gameObject
    transform=gameObject.transform
    this.InitPanel()
end
function ReadyPanel:InitPanel()
    this.ReadyBtn=transform:Find("ReadyBtn").gameObject      --获取"开始战斗"按钮
    this.ExitBtn=transform:Find("ExitBtn").gameObject      --获取"退出"按钮

end

function ReadyPanel:Start()

end

