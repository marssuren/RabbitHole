ReadyCtrl={}
local this=ReadyCtrl

local gameObject
local transform
local message

function ReadyCtrl:New()
    return this
end
function ReadyCtrl.Awake()
    panelMgr:CreatePanel(PanelNames.ReadyPanel,this.OnCreate)
end
function ReadyCtrl.Show()            --显示面板
    if gameObject==nil then
        this.Awake();
    else
        panelMgr:SetPanelActive(PanelNames.ReadyPanel,true,this.OnEnable)
    end
end
function ReadyCtrl.Hide()
    if nil~=gameObject then
        panelMgr:SetPanelActive(PanelNames.ReadyPanel,false)
    end
end
function ReadyCtrl.OnCreate(_gameObject)
    gameObject=_gameObject
    transform=gameObject.transform
    local panel=gameObject:GetComponent('UIPanel')

    message=gameObject:GetComponent("LuaBehaviour")

    --绑定按钮点击事件
    message:AddClick(ReadyPanel.ReadyBtn,this.OnMaskBtnClick)
    message:AddClick(RulePanel.CloseBtn,this.OnCloseBtnClick)
    message:AddToggleValueListener(RulePanel.ChangShuMahjongToggle,this.OnChangShuMahjongToggleValueChanged)
    message:AddToggleValueListener(RulePanel.HongZhongMahjongToggle,this.OnHongZhongMahjongToggleValueChanged)
end
function ReadyCtrl:OnReadyBtnClick()        --

end