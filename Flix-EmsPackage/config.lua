local FlixEms = {}
--[[

					███████╗██╗░░░░░██╗██╗░░██╗
					██╔════╝██║░░░░░██║╚██╗██╔╝
					█████╗░░██║░░░░░██║░╚███╔╝░
					██╔══╝░░██║░░░░░██║░██╔██╗░
					██║░░░░░███████╗██║██╔╝╚██╗
					╚═╝░░░░░╚══════╝╚═╝╚═╝░░╚═╝ 

    Made By : MoSattout#2632
    ♥ شكرا لك على الثقة ♥
    https://discord.gg/5vE6Drh

    في الاسفل سوف تجد بعض التعليمات للتحكم في السكربت الخاص بك

    [ ملاحظة : [ يرجى التمعن في القرائة وفهم كل خيار بشكل جيد
]]
-- =================================================================================================================
FlixEms.license = "4JSTJK9PBSHIXTJ" -- [رخصة الاستخدام]
FlixEms.img = "https://github.com/BARAABDALAL/bara/blob/main/512.gif?raw=true" -- [لوغو السيرفر]
-- =================================================================================================================
-- [كول داون لطلب المسعف عشان مايعمل سبام]
FlixEms.cooldowntimer = 1 -- [حاليا دقيقة]
-- =================================================================================================================
FlixEms.permission = {
    -- [بيرمشن الي يقدر يوظف مسعفين]
    AddGroup = "flixems.AddGroup",
    -- [بيرمشن الي يقدر يفصل مسعفين]
    RemoveGroup = "flixems.RemoveGroup",
    -- [بيرمشن الي يقدر يجيب كل الطلبات او يحذفها]
    HeadPermisson = "flixems.HeadPermisson",
    -- [بيرمشن الي يقدر يرسل رسالة لكل المسعفين]
    MsgPermisson = "flixems.MsgPermisson",
    -- [بيرمشن الي يقدر يسحب المسعفين]
    PullPermisson = "flixems.PullPermisson",
    -- [بيرمشن المسعف عشان يوصله الطلب او اذا مافي حد معاه البيرمشن ذا راح يجي البوت اذا كنت مفعل ميزة البوت]
    emspermission = "flixems.emspermission",
    -- [بدل مايطلب مسعف E بيرمشن للي يقدر ينعش نفسه اذا ضغط]
    reviveherself = "flixems.reviveherself",
}
-- =================================================================================================================
FlixEms.WebHook = {
    -- [لوق للي بينعش نفسه من البيرمشن الي فوق]
    revivewebhook = "",
    -- [لوق لقبول الطلب]
    ticketwebhook = "",
    -- [لوق طلب مسعف]
    callEms = "",
    -- [لوق اذا البوت انعش اللاعب]
    npcwebhook = "",
    -- [لوق اللاعب اي مدينه اختار عشان يرسبن فيها]
    citywebhook = "",
    -- [لوق حذف جميع الطلبات]
    orderdel = "",
    -- [لوق جلب عدد جميع الطلبات]
    allorders = "",
    -- [لوق أرسال رسالة لجميع المسعفين]
    allemsmsg = "",
    -- [لوق أرسال سحب جميع المسعفين]
    callemsout = "",
    -- [لوق توظيف مسعف]
    AddGroup = "",
    -- [لوق فصل مسعف]
    RemoveGroup = "",
}
-- =================================================================================================================
-- =================================================
-- ===========[جروبات التوظيف والفصل]=============
-- =================================================
FlixEms.removeGR = "عاطل" -- [i الرتبه الي ياخذها وقت ينفصل]
FlixEms.Groups = {
-- "اسم الرتبه الي في الفي ار بي جروبز",
    "مدير المستشفى",
    "نائب مدير المستشفى",
    "بروفيسور",
    "استشاري",
    "اخصائي",
    "طبيب عام",
    "طبيب",
    "دكتور",
    "ممرض",
    "مسعف",
    "مسعف تحت التدريب",
    "مسعف متطوع",

}
-- =================================================
-- ===========[اختيار مكان الرسبون]===============
-- =================================================
FlixEms.SpawnSelectE = true -- [تفعيل ميزة أختيار مكان الرسبون بعد التحلل]
FlixEms.citySpawn = {
    {
        name = "المدينة .1",
        position = {339.21166992188, -1395.2637939453, 32.509269714355} -- [احداثيات المدينة الاولى]
    },
    {
        name = "المدينة .2",
        position = {1841.7922363281, 3668.6525878906, 33.679962158203} -- [احداثيات المدينة الثانية]
    },
    {
        name = "المدينة .3",
        position = {-381.75900268555, 6120.9365234375, 31.479545593262} -- [احداثيات المدينة الثالثة]
    },
}
-- =================================================================================================================
FlixEms.callEmsMenu = {
    {name = "المدينة .1"},
    {name = "المدينة .2"},
    {name = "المدينة .3"},
}
-- =================================================
-- ============[أعدادات عامة للسكربت]=============
-- =================================================
FlixEms.Client = {
    -- [تفعيل ميزة الريفايف بحال مافي مسعفين يجي بوت يسعف المواطن]
    NPCActive = false ,
    -- [دفع مبلغ مقابل ميزة البوت اذا جا البوت واسعفه ياخذ منه المبلغ الي تحت]
    NpcMoney = 1000 ,-- [اذا تبيه مجاني حطه 0]
    -- [سكن البوت يمديك تغيره وتختار من الموقع ذا]
    -- https://docs.fivem.net/docs/game-references/ped-models/
    NpcSkin = "mp_f_execpa_02",
    -- [الوقت الي بينتظره قبل لايرسبن البوت وينعشه]
    NpcTime = 20 , -- [20 ثانية]
-- =================================================================================================================
-- https://docs.fivem.net/game-references/controls/  موقغ الازرار
    -- [تفعيل ميزة اللعبة]
    game = true , -- true يعني مفعله
    -- [رقم الزر لفتح اللعبة]
    gamekey = 74,
    -- [حرف الزر لفتح اللعبة]
    gameTextkey = 'H',
    -- [ميزة التحلل الان بدون الانظار]
    DieNow = false , -- true يعني مفعله
    -- [رقم الزر للتحلل الان]
    Diekey = 47,
    -- [حرف الزر للتحلل الان]
    DieTextkey = 'G',
    -- [صوت دقات القلب]
    sound = "https://raw.githubusercontent.com/moloflix/images/main/ems.mp3",
    -- [قوة صوت دقات القلب]
    volume = 0.1, -- [اذا تبي تطفيها خليها 0]
    -- [الوقت الي بيظهر للتحل]
    time = 5, -- [حاليا 5 دقائق يمديك تعدله اذا تبي بس لازم تعدل وقت التحلل من الفي ار بي اذا حطيته مثلا 3 دقائق]
    -- [الوقت الي بيظهر للتحل السريع]
    Fasttime = 10 , -- [حاليا 10 ثواني]
    -- [رقم الزر لطلب مسعف]
    key = 38,
    -- [حرف الزر لطلب مسعف]
    Textkey = 'E',
    -- [تفعيل اظهار الدائرة لمعرفة حجم المنظقة المحظورة وقفها بعد ماتخلص عشان الاستهلاك]
    dev = false,
    -- [رسالة المناطق المحظور طلب مسعف فيها]
    BZonemsg = 'لايمكنك طلب مسعف هنا',
    -- [رسالة الوقت الباقي للتحلل]
    EMSMsg = 'الوقت الباقي للتحلل',
    -- [رسالة المناطق المحظور طلب مسعف فيها]
    fastMsg = 'منطقة تحلل سريع',
    -- =================================================================================================================
    -- [المناطق المحظور بها طلب مسعف واذا مفعل ميزة البوت ماراح ينعشه]
    zones = {
        {
            x = 1320.8403320313,    -- [الاحداثيات]
            y = 3120.1794433594,    -- [الاحداثيات]
            z = 40.907726287842,    -- [الاحداثيات]
            rad = 200               -- [حجم الدائرة المحظور طلب مسعف فيها] -- [اذا تبي توقفها خلها 0 بس]
        }, {
            x = 1739.0422363281,    -- [الاحداثيات]
            y = 2577.8564453125,    -- [الاحداثيات]
            z = 59.282760620117,    -- [الاحداثيات]
            rad = 200               -- [حجم الدائرة المحظور طلب مسعف فيها] -- [اذا تبي توقفها خلها 0 بس]
        }
    },
-- =================================================================================================================
    -- مناطق التحلل السريع
    FastSpawnZone = {
        {
            x = -78.865058898926,   -- [الاحداثيات]
            y = 6229.5356445312,    -- [الاحداثيات]
            z = 31.984445571899,    -- [الاحداثيات]
            rad = 40,               -- [حجم الدائرة للتحلل السريع] -- [اذا تبي توقفها خلها 0 بس]
            Teleport = {-57.825912475586,6281.7607421875,31.346218109131} -- [احداثيات الرسبنه بعد التحلل السريع]
        },
    },
-- =================================================================================================================
    -- [الازرار الي تبيها توقف لما يختار مكان الرسبون مثل دحز منيو والجوال عشان الكليتشات]
    -- https://docs.fivem.net/game-references/controls/  موقغ الازرار
    keys = {38, 311}
}
-- =================================================
-- ===========[ اعدادات الاشعارات ]================
-- =================================================
FlixEms.Notify = function (source,notimsg)
    --  الاشعارات العادية
    TriggerClientEvent("pNotify:SendNotification", source, {
        text = "<h4 style='text-align:center;background:rgba(0, 0, 0, 0.400);padding:1px;border-radius: 100px;border: 2px solid transparent;'><p style='text-align:center;'><font color='white'> ".. notimsg,
        queue = "lmao",
        type = "success",
        progressBar = false,
        timeout = 2500,
        layout = "bottomCenter",
        animation = {open = "gta_effects_open_left",close = "gta_effects_close"}
    })
    ---------------
end

FlixEms.MsgNotify = function (source,name,notimsg)
    --  اشعارات الرسائل
    TriggerClientEvent("pNotify:SendNotification",source,{
        text = "<h4 style='border-radius: 20px;text-align:center;background:rgba(0, 0, 0, 0.479);padding:15px;'><img src='"..FlixEms.img.."'width='100' height='100'/><p style='text-align:center;'><font color='white'><p style='color:white; text-align:center;'>رسالة للمسعفين<p style='color:white;' >الرسالة من : <font color='red'>" .. name .. " <br/> <p style='text-align:center;'><font color='white'><font size='6px'>" .. notimsg .. "</p>",
        queue = "lmao",
        type = "success",
        timeout = 25000,
        layout = "centerLeft",
        progressBar = false,
        animation = {open = "gta_effects_open_left",close = "gta_effects_close"}
    })
    ---------------
end
-- =================================================================================================================
return FlixEms
