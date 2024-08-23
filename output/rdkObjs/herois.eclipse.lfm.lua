require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Herois_Eclipse()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("Herois_Eclipse");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Herois.Eclipse");
    obj:setTitle("Hero_Eclipse");
    obj:setAlign("client");
    obj:setTheme("default");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Frente");
    obj.tab1:setName("tab1");

    obj.frmHEROIS1_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmHEROIS1_svg:setParent(obj.tab1);
    obj.frmHEROIS1_svg:setName("frmHEROIS1_svg");
    obj.frmHEROIS1_svg:setAlign("client");
    obj.frmHEROIS1_svg:setTheme("default");
    obj.frmHEROIS1_svg:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmHEROIS1_svg);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1211);
    obj.rectangle1:setHeight(1723);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1207);
    obj.image1:setHeight(1723);
    obj.image1:setSRC("images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(13);
    obj.layout1:setTop(198);
    obj.layout1:setWidth(421);
    obj.layout1:setHeight(64);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(36.4);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(421);
    obj.edit1:setHeight(65);
    obj.edit1:setField("nome_personagem");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(12);
    obj.layout2:setTop(324);
    obj.layout2:setWidth(421);
    obj.layout2:setHeight(64);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(36.4);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(421);
    obj.edit2:setHeight(65);
    obj.edit2:setField("CODINOME");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(776);
    obj.layout3:setTop(61);
    obj.layout3:setWidth(427);
    obj.layout3:setHeight(23);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(15);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(427);
    obj.edit3:setHeight(24);
    obj.edit3:setField("origem_personagem");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(776);
    obj.layout4:setTop(137);
    obj.layout4:setWidth(427);
    obj.layout4:setHeight(23);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(15);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(427);
    obj.edit4:setHeight(24);
    obj.edit4:setField("genero_personagem");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(775);
    obj.layout5:setTop(212);
    obj.layout5:setWidth(427);
    obj.layout5:setHeight(23);
    obj.layout5:setName("layout5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(15);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(427);
    obj.edit5:setHeight(24);
    obj.edit5:setField("altura_personagem");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(775);
    obj.layout6:setTop(289);
    obj.layout6:setWidth(427);
    obj.layout6:setHeight(23);
    obj.layout6:setName("layout6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(15);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(427);
    obj.edit6:setHeight(24);
    obj.edit6:setField("peso_personagem");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(775);
    obj.layout7:setTop(365);
    obj.layout7:setWidth(427);
    obj.layout7:setHeight(23);
    obj.layout7:setName("layout7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(15);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(427);
    obj.edit7:setHeight(24);
    obj.edit7:setField("idade_personagem");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(65);
    obj.layout8:setTop(447);
    obj.layout8:setWidth(80);
    obj.layout8:setHeight(62);
    obj.layout8:setName("layout8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(26);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(80);
    obj.edit8:setHeight(63);
    obj.edit8:setField("status_forca");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(135);
    obj.layout9:setTop(422);
    obj.layout9:setWidth(23);
    obj.layout9:setHeight(23);
    obj.layout9:setName("layout9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(15);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(23);
    obj.edit9:setHeight(24);
    obj.edit9:setField("graduacao_forca");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(207);
    obj.layout10:setTop(447);
    obj.layout10:setWidth(80);
    obj.layout10:setHeight(61);
    obj.layout10:setName("layout10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(26);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(80);
    obj.edit10:setHeight(62);
    obj.edit10:setField("status_agilidade");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(276);
    obj.layout11:setTop(422);
    obj.layout11:setWidth(23);
    obj.layout11:setHeight(23);
    obj.layout11:setName("layout11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(15);
    obj.edit11:setFontColor("#000000");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(23);
    obj.edit11:setHeight(24);
    obj.edit11:setField("graduacao_agilidade");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(350);
    obj.layout12:setTop(447);
    obj.layout12:setWidth(80);
    obj.layout12:setHeight(62);
    obj.layout12:setName("layout12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(26);
    obj.edit12:setFontColor("#000000");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(80);
    obj.edit12:setHeight(63);
    obj.edit12:setField("status_luta");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(417);
    obj.layout13:setTop(419);
    obj.layout13:setWidth(24);
    obj.layout13:setHeight(23);
    obj.layout13:setName("layout13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(15);
    obj.edit13:setFontColor("#000000");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(24);
    obj.edit13:setHeight(24);
    obj.edit13:setField("graduacao_luta");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(492);
    obj.layout14:setTop(448);
    obj.layout14:setWidth(80);
    obj.layout14:setHeight(59);
    obj.layout14:setName("layout14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout14);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(26);
    obj.edit14:setFontColor("#000000");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(80);
    obj.edit14:setHeight(60);
    obj.edit14:setField("status_vigor");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(559);
    obj.layout15:setTop(419);
    obj.layout15:setWidth(23);
    obj.layout15:setHeight(23);
    obj.layout15:setName("layout15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(15);
    obj.edit15:setFontColor("#000000");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(23);
    obj.edit15:setHeight(24);
    obj.edit15:setField("graduacao_vigor");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(635);
    obj.layout16:setTop(448);
    obj.layout16:setWidth(80);
    obj.layout16:setHeight(60);
    obj.layout16:setName("layout16");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout16);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(26);
    obj.edit16:setFontColor("#000000");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(80);
    obj.edit16:setHeight(61);
    obj.edit16:setField("status_prontidao");
    obj.edit16:setName("edit16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(701);
    obj.layout17:setTop(419);
    obj.layout17:setWidth(23);
    obj.layout17:setHeight(23);
    obj.layout17:setName("layout17");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout17);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(15);
    obj.edit17:setFontColor("#000000");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(23);
    obj.edit17:setHeight(24);
    obj.edit17:setField("graduacao_prontidao");
    obj.edit17:setName("edit17");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(778);
    obj.layout18:setTop(446);
    obj.layout18:setWidth(80);
    obj.layout18:setHeight(62);
    obj.layout18:setName("layout18");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout18);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(26);
    obj.edit18:setFontColor("#000000");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(80);
    obj.edit18:setHeight(63);
    obj.edit18:setField("status_destreza");
    obj.edit18:setName("edit18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle1);
    obj.layout19:setLeft(842);
    obj.layout19:setTop(419);
    obj.layout19:setWidth(23);
    obj.layout19:setHeight(23);
    obj.layout19:setName("layout19");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout19);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(15);
    obj.edit19:setFontColor("#000000");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(23);
    obj.edit19:setHeight(24);
    obj.edit19:setField("graduacao_destreza");
    obj.edit19:setName("edit19");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle1);
    obj.layout20:setLeft(920);
    obj.layout20:setTop(447);
    obj.layout20:setWidth(80);
    obj.layout20:setHeight(63);
    obj.layout20:setName("layout20");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout20);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(26);
    obj.edit20:setFontColor("#000000");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(80);
    obj.edit20:setHeight(64);
    obj.edit20:setField("status_intelecto");
    obj.edit20:setName("edit20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle1);
    obj.layout21:setLeft(984);
    obj.layout21:setTop(419);
    obj.layout21:setWidth(23);
    obj.layout21:setHeight(23);
    obj.layout21:setName("layout21");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout21);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(15);
    obj.edit21:setFontColor("#000000");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(23);
    obj.edit21:setHeight(24);
    obj.edit21:setField("graduacao_intelecto");
    obj.edit21:setName("edit21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(1066);
    obj.layout22:setTop(445);
    obj.layout22:setWidth(79);
    obj.layout22:setHeight(67);
    obj.layout22:setName("layout22");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout22);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(26);
    obj.edit22:setFontColor("#000000");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(79);
    obj.edit22:setHeight(68);
    obj.edit22:setField("status_presenca");
    obj.edit22:setName("edit22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(1126);
    obj.layout23:setTop(419);
    obj.layout23:setWidth(23);
    obj.layout23:setHeight(23);
    obj.layout23:setName("layout23");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout23);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(15);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(23);
    obj.edit23:setHeight(24);
    obj.edit23:setField("graduacao_presenca");
    obj.edit23:setName("edit23");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(108);
    obj.layout24:setTop(680);
    obj.layout24:setWidth(36);
    obj.layout24:setHeight(35);
    obj.layout24:setName("layout24");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout24);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(18.2);
    obj.edit24:setFontColor("#000000");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(36);
    obj.edit24:setHeight(36);
    obj.edit24:setField("pericia_acrobacia");
    obj.edit24:setName("edit24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(107);
    obj.layout25:setTop(792);
    obj.layout25:setWidth(36);
    obj.layout25:setHeight(35);
    obj.layout25:setName("layout25");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout25);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(18.2);
    obj.edit25:setFontColor("#000000");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(36);
    obj.edit25:setHeight(36);
    obj.edit25:setField("pericia_atletismo");
    obj.edit25:setName("edit25");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(848);
    obj.layout26:setTop(681);
    obj.layout26:setWidth(34);
    obj.layout26:setHeight(33);
    obj.layout26:setName("layout26");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout26);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(18.2);
    obj.edit26:setFontColor("#000000");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(36);
    obj.edit26:setHeight(36);
    obj.edit26:setField("pericia_investigacao");
    obj.edit26:setName("edit26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(107);
    obj.layout27:setTop(903);
    obj.layout27:setWidth(36);
    obj.layout27:setHeight(35);
    obj.layout27:setName("layout27");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout27);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(18.2);
    obj.edit27:setFontColor("#000000");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(36);
    obj.edit27:setHeight(36);
    obj.edit27:setField("pericia_veiculos");
    obj.edit27:setName("edit27");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setLeft(108);
    obj.layout28:setTop(1014);
    obj.layout28:setWidth(36);
    obj.layout28:setHeight(35);
    obj.layout28:setName("layout28");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout28);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(18.2);
    obj.edit28:setFontColor("#000000");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(36);
    obj.edit28:setHeight(36);
    obj.edit28:setField("pericia_intuicao");
    obj.edit28:setName("edit28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle1);
    obj.layout29:setLeft(107);
    obj.layout29:setTop(1122);
    obj.layout29:setWidth(36);
    obj.layout29:setHeight(35);
    obj.layout29:setName("layout29");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout29);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(18.2);
    obj.edit29:setFontColor("#000000");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(36);
    obj.edit29:setHeight(36);
    obj.edit29:setField("pericia_enganacao");
    obj.edit29:setName("edit29");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(108);
    obj.layout30:setTop(1235);
    obj.layout30:setWidth(36);
    obj.layout30:setHeight(35);
    obj.layout30:setName("layout30");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout30);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(18.2);
    obj.edit30:setFontColor("#000000");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(36);
    obj.edit30:setHeight(36);
    obj.edit30:setField("pericia_especialidade");
    obj.edit30:setName("edit30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(108);
    obj.layout31:setTop(1346);
    obj.layout31:setWidth(36);
    obj.layout31:setHeight(35);
    obj.layout31:setName("layout31");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout31);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(18.2);
    obj.edit31:setFontColor("#000000");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(36);
    obj.edit31:setHeight(36);
    obj.edit31:setField("pericia_furtividade");
    obj.edit31:setName("edit31");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(107);
    obj.layout32:setTop(1452);
    obj.layout32:setWidth(36);
    obj.layout32:setHeight(35);
    obj.layout32:setName("layout32");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout32);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(18.2);
    obj.edit32:setFontColor("#000000");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(36);
    obj.edit32:setHeight(36);
    obj.edit32:setField("pericia_intimidacao");
    obj.edit32:setName("edit32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(107);
    obj.layout33:setTop(1563);
    obj.layout33:setWidth(36);
    obj.layout33:setHeight(35);
    obj.layout33:setName("layout33");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout33);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(18.2);
    obj.edit33:setFontColor("#000000");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(36);
    obj.edit33:setHeight(36);
    obj.edit33:setField("pericia_performance");
    obj.edit33:setName("edit33");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(849);
    obj.layout34:setTop(793);
    obj.layout34:setWidth(36);
    obj.layout34:setHeight(35);
    obj.layout34:setName("layout34");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout34);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(18.2);
    obj.edit34:setFontColor("#000000");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(36);
    obj.edit34:setHeight(36);
    obj.edit34:setField("pericia_magia");
    obj.edit34:setName("edit34");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(848);
    obj.layout35:setTop(902);
    obj.layout35:setWidth(36);
    obj.layout35:setHeight(35);
    obj.layout35:setName("layout35");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout35);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(18.2);
    obj.edit35:setFontColor("#000000");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(36);
    obj.edit35:setHeight(36);
    obj.edit35:setField("pericia_percepcao");
    obj.edit35:setName("edit35");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(848);
    obj.layout36:setTop(1014);
    obj.layout36:setWidth(36);
    obj.layout36:setHeight(35);
    obj.layout36:setName("layout36");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout36);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(18.2);
    obj.edit36:setFontColor("#000000");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(36);
    obj.edit36:setHeight(36);
    obj.edit36:setField("pericia_persuasao");
    obj.edit36:setName("edit36");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(848);
    obj.layout37:setTop(1122);
    obj.layout37:setWidth(36);
    obj.layout37:setHeight(35);
    obj.layout37:setName("layout37");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout37);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(18.2);
    obj.edit37:setFontColor("#000000");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(36);
    obj.edit37:setHeight(36);
    obj.edit37:setField("pericia_prestigitacao");
    obj.edit37:setName("edit37");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(848);
    obj.layout38:setTop(1234);
    obj.layout38:setWidth(36);
    obj.layout38:setHeight(35);
    obj.layout38:setName("layout38");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout38);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(18.2);
    obj.edit38:setFontColor("#000000");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(36);
    obj.edit38:setHeight(36);
    obj.edit38:setField("pericia_religiao");
    obj.edit38:setName("edit38");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(848);
    obj.layout39:setTop(1345);
    obj.layout39:setWidth(36);
    obj.layout39:setHeight(35);
    obj.layout39:setName("layout39");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout39);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(18.2);
    obj.edit39:setFontColor("#000000");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(36);
    obj.edit39:setHeight(36);
    obj.edit39:setField("pericia_tecnologia");
    obj.edit39:setName("edit39");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle1);
    obj.layout40:setLeft(848);
    obj.layout40:setTop(1451);
    obj.layout40:setWidth(36);
    obj.layout40:setHeight(35);
    obj.layout40:setName("layout40");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout40);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(18.2);
    obj.edit40:setFontColor("#000000");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(36);
    obj.edit40:setHeight(36);
    obj.edit40:setField("pericia_medicina");
    obj.edit40:setName("edit40");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle1);
    obj.layout41:setLeft(848);
    obj.layout41:setTop(1563);
    obj.layout41:setWidth(36);
    obj.layout41:setHeight(35);
    obj.layout41:setName("layout41");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout41);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(18.2);
    obj.edit41:setFontColor("#000000");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(36);
    obj.edit41:setHeight(36);
    obj.edit41:setField("pericia_animais");
    obj.edit41:setName("edit41");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle1);
    obj.image2:setField("imagemDoPersonagem");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(438);
    obj.image2:setTop(4);
    obj.image2:setWidth(333);
    obj.image2:setHeight(384);
    obj.image2.animate = true;
    obj.image2:setName("image2");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setFields({'status_forca'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.rectangle1);
    obj.dataLink2:setFields({'graduacao_forca'});
    obj.dataLink2:setName("dataLink2");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(72);
    obj.button1:setTop(536);
    obj.button1:setWidth(73);
    obj.button1:setHeight(31);
    obj.button1:setText("");
    obj.button1:setVisible(true);
    obj.button1:setCursor("handPoint");
    obj.button1:setHint("Clique para rolar força.");
    obj.button1:setOpacity(0.0);
    obj.button1:setName("button1");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.button1);
    obj.image3:setAlign("client");
    obj.image3:setMargins({top=-1});
    obj.image3:setWidth(73);
    obj.image3:setHeight(31);
    obj.image3:setSRC("");
    obj.image3:setName("image3");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.rectangle1);
    obj.dataLink3:setFields({'status_agilidade'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.rectangle1);
    obj.dataLink4:setFields({'graduacao_agilidade'});
    obj.dataLink4:setName("dataLink4");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setLeft(205);
    obj.button2:setTop(534);
    obj.button2:setWidth(94);
    obj.button2:setHeight(31);
    obj.button2:setText("");
    obj.button2:setVisible(true);
    obj.button2:setCursor("handPoint");
    obj.button2:setHitTest(true);
    obj.button2:setHint("Clique para rolar agilidade.");
    obj.button2:setOpacity(0.0);
    obj.button2:setName("button2");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.button2);
    obj.image4:setAlign("client");
    obj.image4:setMargins({top=-1});
    obj.image4:setWidth(73);
    obj.image4:setHeight(31);
    obj.image4:setSRC("");
    obj.image4:setName("image4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.rectangle1);
    obj.dataLink5:setFields({'status_luta'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.rectangle1);
    obj.dataLink6:setFields({'graduacao_luta'});
    obj.dataLink6:setName("dataLink6");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle1);
    obj.button3:setLeft(358);
    obj.button3:setTop(534);
    obj.button3:setWidth(70);
    obj.button3:setHeight(31);
    obj.button3:setText("");
    obj.button3:setVisible(true);
    obj.button3:setOpacity(0.0);
    obj.button3:setCursor("handPoint");
    obj.button3:setHitTest(true);
    obj.button3:setHint("Clique para rolar luta.");
    obj.button3:setName("button3");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.button3);
    obj.image5:setAlign("client");
    obj.image5:setMargins({top=-1});
    obj.image5:setWidth(73);
    obj.image5:setHeight(31);
    obj.image5:setSRC("");
    obj.image5:setName("image5");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.rectangle1);
    obj.dataLink7:setFields({'graduacao_vigor'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.rectangle1);
    obj.dataLink8:setFields({'status_vigor'});
    obj.dataLink8:setName("dataLink8");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle1);
    obj.button4:setLeft(502);
    obj.button4:setTop(534);
    obj.button4:setWidth(70);
    obj.button4:setHeight(31);
    obj.button4:setText("");
    obj.button4:setVisible(true);
    obj.button4:setOpacity(0.0);
    obj.button4:setCursor("handPoint");
    obj.button4:setHitTest(true);
    obj.button4:setHint("Clique para rolar vigor.");
    obj.button4:setName("button4");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.button4);
    obj.image6:setAlign("client");
    obj.image6:setMargins({top=-1});
    obj.image6:setWidth(73);
    obj.image6:setHeight(31);
    obj.image6:setSRC("");
    obj.image6:setName("image6");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.rectangle1);
    obj.dataLink9:setFields({'graduacao_prontidao'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.rectangle1);
    obj.dataLink10:setFields({'status_prontidao'});
    obj.dataLink10:setName("dataLink10");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setLeft(625);
    obj.button5:setTop(534);
    obj.button5:setWidth(110);
    obj.button5:setVisible(true);
    obj.button5:setOpacity(0.0);
    obj.button5:setHeight(31);
    obj.button5:setText("");
    obj.button5:setCursor("handPoint");
    obj.button5:setHitTest(true);
    obj.button5:setHint("Clique para rolar prontidão.");
    obj.button5:setName("button5");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.button5);
    obj.image7:setAlign("client");
    obj.image7:setMargins({top=-1});
    obj.image7:setWidth(73);
    obj.image7:setHeight(31);
    obj.image7:setSRC("");
    obj.image7:setName("image7");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.rectangle1);
    obj.dataLink11:setFields({'status_destreza'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.rectangle1);
    obj.dataLink12:setFields({'graduacao_destreza'});
    obj.dataLink12:setName("dataLink12");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setLeft(776);
    obj.button6:setTop(534);
    obj.button6:setWidth(92);
    obj.button6:setHeight(31);
    obj.button6:setText("");
    obj.button6:setVisible(true);
    obj.button6:setOpacity(0.0);
    obj.button6:setCursor("handPoint");
    obj.button6:setHitTest(true);
    obj.button6:setHint("Clique para rolar destreza.");
    obj.button6:setName("button6");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.button6);
    obj.image8:setAlign("client");
    obj.image8:setMargins({top=-1});
    obj.image8:setWidth(73);
    obj.image8:setHeight(31);
    obj.image8:setSRC("");
    obj.image8:setName("image8");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.rectangle1);
    obj.dataLink13:setFields({'status_intelecto'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.rectangle1);
    obj.dataLink14:setFields({'graduacao_intelecto'});
    obj.dataLink14:setName("dataLink14");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setLeft(916);
    obj.button7:setTop(534);
    obj.button7:setWidth(98);
    obj.button7:setHeight(31);
    obj.button7:setVisible(true);
    obj.button7:setOpacity(0.0);
    obj.button7:setText("");
    obj.button7:setCursor("handPoint");
    obj.button7:setHitTest(true);
    obj.button7:setHint("Clique para rolar intelecto.");
    obj.button7:setName("button7");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.button7);
    obj.image9:setAlign("client");
    obj.image9:setMargins({top=-1});
    obj.image9:setWidth(73);
    obj.image9:setHeight(31);
    obj.image9:setSRC("");
    obj.image9:setName("image9");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.rectangle1);
    obj.dataLink15:setFields({'status_presenca'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.rectangle1);
    obj.dataLink16:setFields({'graduacao_presenca'});
    obj.dataLink16:setName("dataLink16");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle1);
    obj.button8:setLeft(1056);
    obj.button8:setTop(534);
    obj.button8:setWidth(100);
    obj.button8:setHeight(31);
    obj.button8:setText("");
    obj.button8:setCursor("handPoint");
    obj.button8:setHitTest(true);
    obj.button8:setHint("Clique para rolar presença.");
    obj.button8:setVisible(true);
    obj.button8:setOpacity(0.0);
    obj.button8:setName("button8");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.button8);
    obj.image10:setAlign("client");
    obj.image10:setMargins({top=-1});
    obj.image10:setWidth(73);
    obj.image10:setHeight(31);
    obj.image10:setSRC("");
    obj.image10:setName("image10");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.rectangle1);
    obj.dataLink17:setFields({'pericia_acrobacia'});
    obj.dataLink17:setName("dataLink17");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle1);
    obj.button9:setLeft(190);
    obj.button9:setTop(681);
    obj.button9:setWidth(208);
    obj.button9:setHeight(36);
    obj.button9:setOpacity(0.0);
    obj.button9:setText("");
    obj.button9:setCursor("handPoint");
    obj.button9:setHitTest(true);
    obj.button9:setHint("Clique para rolar acrobacia.");
    obj.button9:setName("button9");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.button9);
    obj.image11:setAlign("top");
    obj.image11:setMargins({top=-1});
    obj.image11:setWidth(100);
    obj.image11:setHeight(40);
    obj.image11:setSRC("");
    obj.image11:setName("image11");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.rectangle1);
    obj.dataLink18:setFields({'pericia_atletismo'});
    obj.dataLink18:setName("dataLink18");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle1);
    obj.button10:setLeft(192);
    obj.button10:setTop(792);
    obj.button10:setWidth(208);
    obj.button10:setHeight(36);
    obj.button10:setText("");
    obj.button10:setOpacity(0.0);
    obj.button10:setHint("Clique para rolar atletismo.");
    obj.button10:setCursor("handPoint");
    obj.button10:setName("button10");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.button10);
    obj.image12:setAlign("top");
    obj.image12:setMargins({top=-1});
    obj.image12:setWidth(100);
    obj.image12:setHeight(40);
    obj.image12:setSRC("");
    obj.image12:setName("image12");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.rectangle1);
    obj.dataLink19:setFields({'pericia_veiculos'});
    obj.dataLink19:setName("dataLink19");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle1);
    obj.button11:setLeft(192);
    obj.button11:setTop(900);
    obj.button11:setWidth(208);
    obj.button11:setHeight(36);
    obj.button11:setText("");
    obj.button11:setOpacity(0.0);
    obj.button11:setHint("Clique para rolar veículos.");
    obj.button11:setCursor("handPoint");
    obj.button11:setName("button11");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.button11);
    obj.image13:setAlign("top");
    obj.image13:setMargins({top=-1});
    obj.image13:setWidth(100);
    obj.image13:setHeight(40);
    obj.image13:setSRC("");
    obj.image13:setName("image13");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.rectangle1);
    obj.dataLink20:setFields({'pericia_intuicao'});
    obj.dataLink20:setName("dataLink20");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle1);
    obj.button12:setLeft(192);
    obj.button12:setTop(1013);
    obj.button12:setWidth(208);
    obj.button12:setHeight(36);
    obj.button12:setText("");
    obj.button12:setOpacity(0.0);
    obj.button12:setHint("Clique para rolar intuição.");
    obj.button12:setCursor("handPoint");
    obj.button12:setName("button12");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.button12);
    obj.image14:setAlign("top");
    obj.image14:setMargins({top=-1});
    obj.image14:setWidth(100);
    obj.image14:setHeight(40);
    obj.image14:setSRC("");
    obj.image14:setName("image14");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.rectangle1);
    obj.dataLink21:setFields({'pericia_enganacao'});
    obj.dataLink21:setName("dataLink21");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle1);
    obj.button13:setLeft(192);
    obj.button13:setTop(1120);
    obj.button13:setWidth(208);
    obj.button13:setHeight(36);
    obj.button13:setText("");
    obj.button13:setOpacity(0.0);
    obj.button13:setHint("Clique para rolar enganação.");
    obj.button13:setCursor("handPoint");
    obj.button13:setName("button13");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.button13);
    obj.image15:setAlign("top");
    obj.image15:setMargins({top=-1});
    obj.image15:setWidth(100);
    obj.image15:setHeight(40);
    obj.image15:setSRC("");
    obj.image15:setName("image15");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.rectangle1);
    obj.dataLink22:setFields({'pericia_especialidade'});
    obj.dataLink22:setName("dataLink22");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle1);
    obj.button14:setLeft(192);
    obj.button14:setTop(1235);
    obj.button14:setWidth(208);
    obj.button14:setHeight(36);
    obj.button14:setText("");
    obj.button14:setOpacity(0.0);
    obj.button14:setHint("Clique para rolar especialidade.");
    obj.button14:setCursor("handPoint");
    obj.button14:setName("button14");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.button14);
    obj.image16:setAlign("top");
    obj.image16:setMargins({top=-1});
    obj.image16:setWidth(100);
    obj.image16:setHeight(40);
    obj.image16:setSRC("");
    obj.image16:setName("image16");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.rectangle1);
    obj.dataLink23:setFields({'pericia_furtividade'});
    obj.dataLink23:setName("dataLink23");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle1);
    obj.button15:setLeft(192);
    obj.button15:setTop(1345);
    obj.button15:setWidth(208);
    obj.button15:setHeight(36);
    obj.button15:setText("");
    obj.button15:setOpacity(0.0);
    obj.button15:setHint("Clique para rolar furtividade.");
    obj.button15:setCursor("handPoint");
    obj.button15:setName("button15");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.button15);
    obj.image17:setAlign("top");
    obj.image17:setMargins({top=-1});
    obj.image17:setWidth(100);
    obj.image17:setHeight(40);
    obj.image17:setSRC("");
    obj.image17:setName("image17");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.rectangle1);
    obj.dataLink24:setFields({'pericia_intimidacao'});
    obj.dataLink24:setName("dataLink24");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle1);
    obj.button16:setLeft(192);
    obj.button16:setTop(1450);
    obj.button16:setWidth(208);
    obj.button16:setHeight(36);
    obj.button16:setText("");
    obj.button16:setOpacity(0.0);
    obj.button16:setHint("Clique para rolar intimidação.");
    obj.button16:setCursor("handPoint");
    obj.button16:setName("button16");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.button16);
    obj.image18:setAlign("top");
    obj.image18:setMargins({top=-1});
    obj.image18:setWidth(100);
    obj.image18:setHeight(40);
    obj.image18:setSRC("");
    obj.image18:setName("image18");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.rectangle1);
    obj.dataLink25:setFields({'pericia_performance'});
    obj.dataLink25:setName("dataLink25");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle1);
    obj.button17:setLeft(192);
    obj.button17:setTop(1562);
    obj.button17:setWidth(208);
    obj.button17:setHeight(36);
    obj.button17:setText("");
    obj.button17:setOpacity(0.0);
    obj.button17:setHint("Clique para rolar performance.");
    obj.button17:setCursor("handPoint");
    obj.button17:setName("button17");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.button17);
    obj.image19:setAlign("top");
    obj.image19:setMargins({top=-1});
    obj.image19:setWidth(100);
    obj.image19:setHeight(40);
    obj.image19:setSRC("");
    obj.image19:setName("image19");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.rectangle1);
    obj.dataLink26:setFields({'pericia_investigacao'});
    obj.dataLink26:setName("dataLink26");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle1);
    obj.button18:setLeft(930);
    obj.button18:setTop(681);
    obj.button18:setWidth(208);
    obj.button18:setHeight(36);
    obj.button18:setOpacity(0.0);
    obj.button18:setText("");
    obj.button18:setCursor("handPoint");
    obj.button18:setHitTest(true);
    obj.button18:setHint("Clique para rolar investigação.");
    obj.button18:setName("button18");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.button18);
    obj.image20:setAlign("top");
    obj.image20:setMargins({top=-1});
    obj.image20:setWidth(100);
    obj.image20:setHeight(40);
    obj.image20:setSRC("");
    obj.image20:setName("image20");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.rectangle1);
    obj.dataLink27:setFields({'pericia_magia'});
    obj.dataLink27:setName("dataLink27");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle1);
    obj.button19:setLeft(930);
    obj.button19:setTop(792);
    obj.button19:setWidth(208);
    obj.button19:setHeight(36);
    obj.button19:setText("");
    obj.button19:setOpacity(0.0);
    obj.button19:setHint("Clique para rolar magia.");
    obj.button19:setCursor("handPoint");
    obj.button19:setName("button19");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.button19);
    obj.image21:setAlign("top");
    obj.image21:setMargins({top=-1});
    obj.image21:setWidth(100);
    obj.image21:setHeight(40);
    obj.image21:setSRC("");
    obj.image21:setName("image21");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.rectangle1);
    obj.dataLink28:setFields({'pericia_percepcao'});
    obj.dataLink28:setName("dataLink28");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle1);
    obj.button20:setLeft(930);
    obj.button20:setTop(900);
    obj.button20:setWidth(208);
    obj.button20:setHeight(36);
    obj.button20:setText("");
    obj.button20:setOpacity(0.0);
    obj.button20:setHint("Clique para percepção.");
    obj.button20:setCursor("handPoint");
    obj.button20:setName("button20");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.button20);
    obj.image22:setAlign("top");
    obj.image22:setMargins({top=-1});
    obj.image22:setWidth(100);
    obj.image22:setHeight(40);
    obj.image22:setSRC("");
    obj.image22:setName("image22");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.rectangle1);
    obj.dataLink29:setFields({'pericia_persuasao'});
    obj.dataLink29:setName("dataLink29");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.rectangle1);
    obj.button21:setLeft(930);
    obj.button21:setTop(1013);
    obj.button21:setWidth(208);
    obj.button21:setHeight(36);
    obj.button21:setText("");
    obj.button21:setOpacity(0.0);
    obj.button21:setHint("Clique para rolar persuasão.");
    obj.button21:setCursor("handPoint");
    obj.button21:setName("button21");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.button21);
    obj.image23:setAlign("top");
    obj.image23:setMargins({top=-1});
    obj.image23:setWidth(100);
    obj.image23:setHeight(40);
    obj.image23:setSRC("");
    obj.image23:setName("image23");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.rectangle1);
    obj.dataLink30:setFields({'pericia_prestigitacao'});
    obj.dataLink30:setName("dataLink30");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.rectangle1);
    obj.button22:setLeft(930);
    obj.button22:setTop(1120);
    obj.button22:setWidth(208);
    obj.button22:setHeight(36);
    obj.button22:setText("");
    obj.button22:setOpacity(0.0);
    obj.button22:setHint("Clique para rolar prestigitação.");
    obj.button22:setCursor("handPoint");
    obj.button22:setName("button22");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.button22);
    obj.image24:setAlign("top");
    obj.image24:setMargins({top=-1});
    obj.image24:setWidth(100);
    obj.image24:setHeight(40);
    obj.image24:setSRC("");
    obj.image24:setName("image24");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.rectangle1);
    obj.dataLink31:setFields({'pericia_religiao'});
    obj.dataLink31:setName("dataLink31");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.rectangle1);
    obj.button23:setLeft(930);
    obj.button23:setTop(1235);
    obj.button23:setWidth(208);
    obj.button23:setHeight(36);
    obj.button23:setText("");
    obj.button23:setOpacity(0.0);
    obj.button23:setHint("Clique para rolar religião.");
    obj.button23:setCursor("handPoint");
    obj.button23:setName("button23");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.button23);
    obj.image25:setAlign("top");
    obj.image25:setMargins({top=-1});
    obj.image25:setWidth(100);
    obj.image25:setHeight(40);
    obj.image25:setSRC("");
    obj.image25:setName("image25");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.rectangle1);
    obj.dataLink32:setFields({'pericia_tecnologia'});
    obj.dataLink32:setName("dataLink32");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.rectangle1);
    obj.button24:setLeft(930);
    obj.button24:setTop(1345);
    obj.button24:setWidth(208);
    obj.button24:setHeight(36);
    obj.button24:setText("");
    obj.button24:setOpacity(0.0);
    obj.button24:setHint("Clique para rolar tecnologia.");
    obj.button24:setCursor("handPoint");
    obj.button24:setName("button24");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.button24);
    obj.image26:setAlign("top");
    obj.image26:setMargins({top=-1});
    obj.image26:setWidth(100);
    obj.image26:setHeight(40);
    obj.image26:setSRC("");
    obj.image26:setName("image26");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.rectangle1);
    obj.dataLink33:setFields({'pericia_medicina'});
    obj.dataLink33:setName("dataLink33");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.rectangle1);
    obj.button25:setLeft(930);
    obj.button25:setTop(1450);
    obj.button25:setWidth(208);
    obj.button25:setHeight(36);
    obj.button25:setText("");
    obj.button25:setOpacity(0.0);
    obj.button25:setHint("Clique para rolar medicina.");
    obj.button25:setCursor("handPoint");
    obj.button25:setName("button25");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.button25);
    obj.image27:setAlign("top");
    obj.image27:setMargins({top=-1});
    obj.image27:setWidth(100);
    obj.image27:setHeight(40);
    obj.image27:setSRC("");
    obj.image27:setName("image27");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.rectangle1);
    obj.dataLink34:setFields({'pericia_animais'});
    obj.dataLink34:setName("dataLink34");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.rectangle1);
    obj.button26:setLeft(930);
    obj.button26:setTop(1561);
    obj.button26:setWidth(208);
    obj.button26:setHeight(36);
    obj.button26:setText("");
    obj.button26:setOpacity(0.0);
    obj.button26:setHint("Clique para rolar lidar com animais.");
    obj.button26:setCursor("handPoint");
    obj.button26:setName("button26");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.button26);
    obj.image28:setAlign("top");
    obj.image28:setMargins({top=-1});
    obj.image28:setWidth(100);
    obj.image28:setHeight(40);
    obj.image28:setSRC("");
    obj.image28:setName("image28");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmHEROIS1_svg);
    obj.dataLink35:setFields({'origem_personagem__0'});
    obj.dataLink35:setDefaultValues({'0'});
    obj.dataLink35:setName("dataLink35");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Multi-Abas");
    obj.tab2:setName("tab2");

    obj.frm_FM = GUI.fromHandle(_obj_newObject("form"));
    obj.frm_FM:setParent(obj.tab2);
    obj.frm_FM:setName("frm_FM");
    obj.frm_FM:setFormType("sheetTemplate");
    obj.frm_FM:setDataType("Ficha_MM3e_MultiAba");
    obj.frm_FM:setTitle("Ficha Multiaba");
    obj.frm_FM:setAlign("client");
    obj.frm_FM:setTheme("dark");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frm_FM);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox2);
    obj.label1:setLeft(150);
    obj.label1:setTop(0);
    obj.label1:setWidth(550);
    obj.label1:setHeight(50);
    obj.label1:setRotationAngle(0);
    obj.label1:setHorzTextAlign("leading");
    obj.label1:setText("Os códigos desta aba foram adaptados de Ambesek/RPGMeister no GitHub.\n Obrigado por compartilhar! ^^");
    obj.label1:setName("label1");

    obj.popCredit = GUI.fromHandle(_obj_newObject("popup"));
    obj.popCredit:setParent(obj.scrollBox2);
    obj.popCredit:setName("popCredit");
    obj.popCredit:setWidth(210);
    obj.popCredit:setHeight(120);
    obj.popCredit:setBackOpacity(0.4);

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.popCredit);
    obj.layout42:setLeft(5);
    obj.layout42:setTop(5);
    obj.layout42:setWidth(200);
    obj.layout42:setHeight(120);
    obj.layout42:setName("layout42");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout42);
    obj.rectangle2:setLeft(0);
    obj.rectangle2:setTop(0);
    obj.rectangle2:setWidth(200);
    obj.rectangle2:setHeight(110);
    obj.rectangle2:setColor("#3f8270");
    obj.rectangle2:setXradius(15);
    obj.rectangle2:setYradius(15);
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setName("rectangle2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout42);
    obj.label2:setLeft(0);
    obj.label2:setTop(1);
    obj.label2:setWidth(200);
    obj.label2:setHeight(50);
    obj.label2:setText("● Antes de criar, estabeleça um Padrão Global no botão ao lado.");
    obj.label2:setFontColor("white");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout42);
    obj.label3:setLeft(0);
    obj.label3:setTop(40);
    obj.label3:setWidth(200);
    obj.label3:setHeight(70);
    obj.label3:setText("● Acumular muitas abas pode gerar algum lag para carregar \n a ficha. ");
    obj.label3:setFontColor("white");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setMargins({top=2});
    obj.label3:setName("label3");

    obj.popupSettings = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupSettings:setParent(obj.scrollBox2);
    obj.popupSettings:setName("popupSettings");
    obj.popupSettings:setWidth(210);
    obj.popupSettings:setHeight(160);
    obj.popupSettings:setBackOpacity(0.4);

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.popupSettings);
    obj.layout43:setLeft(5);
    obj.layout43:setTop(5);
    obj.layout43:setWidth(200);
    obj.layout43:setHeight(160);
    obj.layout43:setName("layout43");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout43);
    obj.rectangle3:setLeft(0);
    obj.rectangle3:setTop(0);
    obj.rectangle3:setWidth(200);
    obj.rectangle3:setHeight(150);
    obj.rectangle3:setColor("#3f8270");
    obj.rectangle3:setXradius(15);
    obj.rectangle3:setYradius(15);
    obj.rectangle3:setCornerType("round");
    obj.rectangle3:setName("rectangle3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout43);
    obj.label4:setTop(0);
    obj.label4:setWidth(150);
    obj.label4:setHeight(25);
    obj.label4:setText("Cor padrão de Fundo");
    obj.label4:setFontColor("white");
    lfm_setPropAsString(obj.label4, "fontStyle", "bold");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");

    obj.colorComboBox1 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox1:setParent(obj.layout43);
    obj.colorComboBox1:setLeft(150);
    obj.colorComboBox1:setTop(0);
    obj.colorComboBox1:setWidth(50);
    obj.colorComboBox1:setHeight(25);
    obj.colorComboBox1:setField("backgroundColor");
    obj.colorComboBox1:setColor("black");
    obj.colorComboBox1:setUseAlpha(false);
    obj.colorComboBox1:setHint("Muda a cor padrão da cor de fundo do editor de texto. ");
    obj.colorComboBox1:setName("colorComboBox1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout43);
    obj.label5:setTop(25);
    obj.label5:setWidth(150);
    obj.label5:setHeight(25);
    obj.label5:setText("Cor padrão de Fonte");
    obj.label5:setFontColor("white");
    lfm_setPropAsString(obj.label5, "fontStyle", "bold");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.colorComboBox2 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox2:setParent(obj.layout43);
    obj.colorComboBox2:setLeft(150);
    obj.colorComboBox2:setTop(25);
    obj.colorComboBox2:setWidth(50);
    obj.colorComboBox2:setHeight(25);
    obj.colorComboBox2:setField("fontColor");
    obj.colorComboBox2:setColor("black");
    obj.colorComboBox2:setUseAlpha(false);
    obj.colorComboBox2:setHint("Muda a cor padrão da fonte do editor de texto.");
    obj.colorComboBox2:setName("colorComboBox2");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.layout43);
    obj.dataLink36:setField("fontColor");
    obj.dataLink36:setDefaultValue("#FFFFFF");
    obj.dataLink36:setName("dataLink36");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout43);
    obj.label6:setTop(50);
    obj.label6:setWidth(150);
    obj.label6:setHeight(25);
    obj.label6:setText("Tamanho padrão de Fonte");
    obj.label6:setFontColor("white");
    lfm_setPropAsString(obj.label6, "fontStyle", "bold");
    obj.label6:setFontSize(11);
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout43);
    obj.edit42:setLeft(150);
    obj.edit42:setTop(50);
    obj.edit42:setWidth(50);
    obj.edit42:setHeight(25);
    obj.edit42:setType("number");
    obj.edit42:setField("fontSize");
    obj.edit42:setMin(8);
    obj.edit42:setMax(72);
    obj.edit42:setName("edit42");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.layout43);
    obj.dataLink37:setField("fontSize");
    obj.dataLink37:setDefaultValue("15");
    obj.dataLink37:setName("dataLink37");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout43);
    obj.checkBox1:setTop(75);
    obj.checkBox1:setWidth(200);
    obj.checkBox1:setHeight(25);
    obj.checkBox1:setText("Ocultar barra de edição");
    obj.checkBox1:setFontColor("white");
    obj.checkBox1:setVertTextAlign("center");
    obj.checkBox1:setField("showToolbar");
    obj.checkBox1:setName("checkBox1");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout43);
    obj.checkBox2:setTop(100);
    obj.checkBox2:setWidth(200);
    obj.checkBox2:setHeight(25);
    obj.checkBox2:setText("Padrão Global.");
    obj.checkBox2:setFontColor("white");
    obj.checkBox2:setVertTextAlign("center");
    obj.checkBox2:setField("global");
    obj.checkBox2:setHint("Vai usar essas configurações em todas as abas.");
    obj.checkBox2:setName("checkBox2");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.layout43);
    obj.button27:setTop(125);
    obj.button27:setWidth(200);
    obj.button27:setHeight(25);
    obj.button27:setText("Padrão Global.");
    obj.button27:setHint("Vai usar as últimas configurações usadas em outras abas nessa.");
    obj.button27:setName("button27");


			local default = NDB.load("defaults.xml");
			
			--colocar algo para quando sheet terminar de carregar puxar os valores de default. 

			local function dump(o)
			   if type(o) == 'table' then
				  local s = '{ '
				  for k,v in pairs(o) do
					 if type(k) ~= 'number' then k = '"'..k..'"' end
					 s = s .. '['..k..'] = ' .. dump(v) .. ','
				  end
				  return s .. '} '
			   else
				  return tostring(o)
			   end
			end
			
			local function loadDefault()
				if sheet==nil then return end;

				if default.global then
					sheet.showToolbar = default.showToolbar;
					sheet.fontSize = default.fontSize;
					sheet.fontColor = default.fontColor;
					sheet.backgroundColor = default.backgroundColor;
					sheet.global = true;
				end;

				self.txt.showToolbar = not sheet.showToolbar;
				self.txt.defaultFontSize = sheet.fontSize;
				self.txt.defaultFontColor = sheet.fontColor;
				self.txt.backgroundColor = sheet.backgroundColor;

			end;
			


 
		


    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.scrollBox2);
    obj.layout44:setAlign("top");
    obj.layout44:setName("layout44");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout44);
    obj.layout45:setAlign("left");
    obj.layout45:setWidth(150);
    obj.layout45:setName("layout45");

    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.layout45);
    obj.button28:setLeft(0);
    obj.button28:setTop(0);
    obj.button28:setWidth(45);
    obj.button28:setHeight(45);
    obj.button28:setText("");
    obj.button28:setHint("Adiciona nova aba. ");
    obj.button28:setName("button28");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.button28);
    obj.image29:setLeft(5);
    obj.image29:setTop(5);
    obj.image29:setWidth(35);
    obj.image29:setHeight(35);
    obj.image29:setSRC("images/addIcon.png");
    obj.image29:setName("image29");

    obj.settingsBT = GUI.fromHandle(_obj_newObject("button"));
    obj.settingsBT:setParent(obj.layout45);
    obj.settingsBT:setLeft(50);
    obj.settingsBT:setTop(0);
    obj.settingsBT:setWidth(45);
    obj.settingsBT:setHeight(45);
    obj.settingsBT:setText("");
    obj.settingsBT:setName("settingsBT");
    obj.settingsBT:setHint("Opções da ficha.");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.settingsBT);
    obj.image30:setLeft(5);
    obj.image30:setTop(5);
    obj.image30:setWidth(35);
    obj.image30:setHeight(35);
    obj.image30:setSRC("images/config.png");
    obj.image30:setName("image30");

    obj.creditBt = GUI.fromHandle(_obj_newObject("button"));
    obj.creditBt:setParent(obj.layout45);
    obj.creditBt:setLeft(100);
    obj.creditBt:setTop(0);
    obj.creditBt:setWidth(45);
    obj.creditBt:setHeight(45);
    obj.creditBt:setText("");
    obj.creditBt:setName("creditBt");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.creditBt);
    obj.image31:setLeft(5);
    obj.image31:setTop(5);
    obj.image31:setWidth(35);
    obj.image31:setHeight(35);
    obj.image31:setSRC("images/helpIcon.png");
    obj.image31:setName("image31");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout44);
    obj.layout46:setAlign("client");
    obj.layout46:setName("layout46");

    obj.rclAbas = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclAbas:setParent(obj.layout46);
    obj.rclAbas:setName("rclAbas");
    obj.rclAbas:setField("abas");
    obj.rclAbas:setTemplateForm("frm_FM_Aba");
    obj.rclAbas:setAlign("top");
    obj.rclAbas:setHeight(46);
    obj.rclAbas:setSelectable(true);
    obj.rclAbas:setLayout("horizontal");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.scrollBox2);
    obj.layout47:setAlign("client");
    obj.layout47:setName("layout47");

    obj.boxTexto = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxTexto:setParent(obj.layout47);
    obj.boxTexto:setName("boxTexto");
    obj.boxTexto:setAlign("client");
    obj.boxTexto:setVisible(false);

    obj.txt = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.txt:setParent(obj.boxTexto);
    obj.txt:setName("txt");
    obj.txt:setAlign("client");
    obj.txt.backgroundColor = "black";
    obj.txt.defaultFontColor = "white";
    obj.txt:setField("txt");
    obj.txt.hideSelection = false;
    obj.txt.animateImages = true;

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_forca or 0);								
            				sheet.status_forca = bonus;	
            				
            				if bonus >= 0 then
            				    sheet.status_forca = bonus;
            				else	
            				    sheet.status_forca = bonus;
            				end;
        end);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_forca or 0);								
            				sheet.graduacao_forca = bonus;	
            				
            				if bonus >= 0 then
            					sheet.graduacao_forca = bonus;
            				else	
            					sheet.graduacao_forca = bonus;
            				end;
        end);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_forca) or 0
                                local converter = false
                    
                                if bonus < 0 then
                                    bonus = -bonus
                                    converter = true
                                end
                    
                                local personagem = Firecast.getPersonagemDe(sheet)
                                local auxiliar = (bonus + 1)
                                local auxiliar2 = (auxiliar .. "d20")
                                local soma_atq
                                local aux_atq = {}
                    
                                if personagem then
                                local mesa = personagem.mesa
                                if (personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre) then
                                local rolagem = Firecast.interpretarRolagem(sheet.status_forca)
                                if not rolagem.possuiAlgumDado then
                                       rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem) end
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet)
                                if mesaDoPersonagem then
                                local promise
                                if bonus == 0 then
                                    mensagem = "[§K1]Força de " .. (sheet.CODINOME or "Indivíduo(a)")
                                elseif bonus >= 0 and not converter then
                                    mensagem = "[§K3]Vantagem em Força de " .. (sheet.CODINOME or "Indivíduo(a)")
                                else
                                    mensagem = "[§K5]Desvantagem em Força de " .. (sheet.CODINOME or "Indivíduo(a)")
                                end
                    
                                promise = mesaDoPersonagem.chat:asyncRoll(rolagem, mensagem)
                    
                                local _, rollObject = await(promise)
                    
                                for i = 1, #rollObject.ops do
                                    local op = rollObject.ops[i]
                                    if op.tipo == "dado" then
                                        for j = 1, #op.resultados do
                                            aux_atq[#aux_atq + 1] = op.resultados[j]
                                        end
                                    elseif op.tipo == "imediato" then
                                        soma_atq = op.valor or 0
                                    end
                                end
                    
                                local function bubbleSortAscending(t)
                                    local len = #t
                                    for i = 1, len do
                                        for j = 1, len - i do
                                            if t[j] > t[j + 1] then
                                                t[j], t[j + 1] = t[j + 1], t[j]
                                            end
                                        end
                                    end
                                end
                    
                                local function bubbleSortDescending(t)
                                local len = #t
                                for i = 1, len do
                                for j = 1, len - i do
                                    if t[j] < t[j + 1] then
                                    t[j], t[j + 1] = t[j + 1], t[j] end
                                end
                                end
                                end
                    
                                    if converter then
                                    bubbleSortAscending(aux_atq)
                                    else
                                    bubbleSortDescending(aux_atq) end
                    
                                local resultado_final = math.floor((tonumber(aux_atq[1]) or 0) + (tonumber(soma_atq) or 0))
                                    mesaDoPersonagem.chat:enviarMensagem("[§K10]Resultado: [§K1]" .. resultado_final .. " (" .. math.floor(tonumber(aux_atq[1]) or 0) .. " + " .. math.floor(tonumber(soma_atq) or 0) .. ")")
                                end
                                end
                                end
        end);

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_agilidade or 0);								
            				sheet.status_agilidade = bonus;	
            				
            				if bonus >= 0 then
            					sheet.status_agilidade = bonus;
            				else	
            					sheet.status_agilidade = bonus;
            				end;
        end);

    obj._e_event4 = obj.dataLink4:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_agilidade or 0);								
            				sheet.graduacao_agilidade = bonus;	
            				
            				if bonus >= 0 then
            				    sheet.graduacao_agilidade = bonus;
            				else	
            				    sheet.graduacao_agilidade = bonus;
            				end;
        end);

    obj._e_event5 = obj.button2:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_agilidade) or 0
                                local converter = false
                    
                                if bonus < 0 then
                                    bonus = -bonus
                                    converter = true
                                end
                    
                                local personagem = Firecast.getPersonagemDe(sheet)
                                local auxiliar = (bonus + 1)
                                local auxiliar2 = (auxiliar .. "d20")
                                local soma_atq
                                local aux_atq = {}
                    
                                if personagem then
                                local mesa = personagem.mesa
                                if (personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre) then
                                local rolagem = Firecast.interpretarRolagem(sheet.status_agilidade)
                                if not rolagem.possuiAlgumDado then
                                       rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem) end
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet)
                                if mesaDoPersonagem then
                                local promise
                                if bonus == 0 then
                                    mensagem = "[§K1]Agilidade de " .. (sheet.CODINOME or "Indivíduo(a)")
                                elseif bonus >= 0 and not converter then
                                    mensagem = "[§K3]Vantagem em Agilidade de " .. (sheet.CODINOME or "Indivíduo(a)")
                                else
                                    mensagem = "[§K5]Desvantagem em Agilidade de " .. (sheet.CODINOME or "Indivíduo(a)")
                                end
                    
                                promise = mesaDoPersonagem.chat:asyncRoll(rolagem, mensagem)
                    
                                local _, rollObject = await(promise)
                    
                                for i = 1, #rollObject.ops do
                                    local op = rollObject.ops[i]
                                    if op.tipo == "dado" then
                                        for j = 1, #op.resultados do
                                            aux_atq[#aux_atq + 1] = op.resultados[j]
                                        end
                                    elseif op.tipo == "imediato" then
                                        soma_atq = op.valor or 0
                                    end
                                end
                    
                                local function bubbleSortAscending(t)
                                    local len = #t
                                    for i = 1, len do
                                        for j = 1, len - i do
                                            if t[j] > t[j + 1] then
                                                t[j], t[j + 1] = t[j + 1], t[j]
                                            end
                                        end
                                    end
                                end
                    
                                local function bubbleSortDescending(t)
                                local len = #t
                                for i = 1, len do
                                for j = 1, len - i do
                                    if t[j] < t[j + 1] then
                                    t[j], t[j + 1] = t[j + 1], t[j] end
                                end
                                end
                                end
                    
                                    if converter then
                                    bubbleSortAscending(aux_atq)
                                    else
                                    bubbleSortDescending(aux_atq) end
                    
                                local resultado_final = math.floor((tonumber(aux_atq[1]) or 0) + (tonumber(soma_atq) or 0))
                                    mesaDoPersonagem.chat:enviarMensagem("[§K10]Resultado: [§K1]" .. resultado_final .. " (" .. math.floor(tonumber(aux_atq[1]) or 0) .. " + " .. math.floor(tonumber(soma_atq) or 0) .. ")")
                                end
                                end
                                end
        end);

    obj._e_event6 = obj.dataLink5:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_luta or 0);								
            			    sheet.status_luta = bonus;	
            				
            			    if bonus >= 0 then
            				    sheet.status_luta = bonus;
            			    else	
            			        sheet.status_luta = bonus;
            			    end;
        end);

    obj._e_event7 = obj.dataLink6:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_luta or 0);								
            				sheet.graduacao_luta = bonus;	
            				
            				if bonus >= 0 then
            					sheet.graduacao_luta = bonus;
            				else	
            					sheet.graduacao_luta = bonus;
            				end;
        end);

    obj._e_event8 = obj.button3:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_luta) or 0
                                local converter = false
                    
                                if bonus < 0 then
                                    bonus = -bonus
                                    converter = true
                                end
                    
                                local personagem = Firecast.getPersonagemDe(sheet)
                                local auxiliar = (bonus + 1)
                                local auxiliar2 = (auxiliar .. "d20")
                                local soma_atq
                                local aux_atq = {}
                    
                                if personagem then
                                local mesa = personagem.mesa
                                if (personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre) then
                                local rolagem = Firecast.interpretarRolagem(sheet.status_luta)
                                if not rolagem.possuiAlgumDado then
                                       rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem) end
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet)
                                if mesaDoPersonagem then
                                local promise
                                if bonus == 0 then
                                    mensagem = "[§K1]Luta de " .. (sheet.CODINOME or "Indivíduo(a)")
                                elseif bonus >= 0 and not converter then
                                    mensagem = "[§K3]Vantagem em Luta de " .. (sheet.CODINOME or "Indivíduo(a)")
                                else
                                    mensagem = "[§K5]Desvantagem em Luta de " .. (sheet.CODINOME or "Indivíduo(a)")
                                end
                    
                                promise = mesaDoPersonagem.chat:asyncRoll(rolagem, mensagem)
                    
                                local _, rollObject = await(promise)
                    
                                for i = 1, #rollObject.ops do
                                    local op = rollObject.ops[i]
                                    if op.tipo == "dado" then
                                        for j = 1, #op.resultados do
                                            aux_atq[#aux_atq + 1] = op.resultados[j]
                                        end
                                    elseif op.tipo == "imediato" then
                                        soma_atq = op.valor or 0
                                    end
                                end
                    
                                local function bubbleSortAscending(t)
                                    local len = #t
                                    for i = 1, len do
                                        for j = 1, len - i do
                                            if t[j] > t[j + 1] then
                                                t[j], t[j + 1] = t[j + 1], t[j]
                                            end
                                        end
                                    end
                                end
                    
                                local function bubbleSortDescending(t)
                                local len = #t
                                for i = 1, len do
                                for j = 1, len - i do
                                    if t[j] < t[j + 1] then
                                    t[j], t[j + 1] = t[j + 1], t[j] end
                                end
                                end
                                end
                    
                                    if converter then
                                    bubbleSortAscending(aux_atq)
                                    else
                                    bubbleSortDescending(aux_atq) end
                    
                                local resultado_final = math.floor((tonumber(aux_atq[1]) or 0) + (tonumber(soma_atq) or 0))
                                    mesaDoPersonagem.chat:enviarMensagem("[§K10]Resultado: [§K1]" .. resultado_final .. " (" .. math.floor(tonumber(aux_atq[1]) or 0) .. " + " .. math.floor(tonumber(soma_atq) or 0) .. ")")
                                end
                                end
                                end
        end);

    obj._e_event9 = obj.dataLink7:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_vigor or 0);								
            				    sheet.graduacao_vigor = bonus;	
            				
            				    if bonus >= 0 then
            					sheet.graduacao_vigor = bonus;
            				    else	
            					sheet.graduacao_vigor = bonus;
            				    end;
        end);

    obj._e_event10 = obj.dataLink8:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_vigor or 0);								
            				    sheet.status_vigor = bonus;	
                                
            				    if bonus >= 0 then
            					sheet.status_vigor = bonus;
            				    else	
            					sheet.status_vigor = bonus;
            				    end;
        end);

    obj._e_event11 = obj.button4:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_vigor) or 0
                                local converter = false
                    
                                if bonus < 0 then
                                    bonus = -bonus
                                    converter = true
                                end
                    
                                local personagem = Firecast.getPersonagemDe(sheet)
                                local auxiliar = (bonus + 1)
                                local auxiliar2 = (auxiliar .. "d20")
                                local soma_atq
                                local aux_atq = {}
                    
                                if personagem then
                                local mesa = personagem.mesa
                                if (personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre) then
                                local rolagem = Firecast.interpretarRolagem(sheet.status_vigor)
                                if not rolagem.possuiAlgumDado then
                                       rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem) end
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet)
                                if mesaDoPersonagem then
                                local promise
                                if bonus == 0 then
                                    mensagem = "[§K1]Vigor de " .. (sheet.CODINOME or "Indivíduo(a)")
                                elseif bonus >= 0 and not converter then
                                    mensagem = "[§K3]Vantagem em Vigor de " .. (sheet.CODINOME or "Indivíduo(a)")
                                else
                                    mensagem = "[§K5]Desvantagem em Vigor de " .. (sheet.CODINOME or "Indivíduo(a)")
                                end
                    
                                promise = mesaDoPersonagem.chat:asyncRoll(rolagem, mensagem)
                    
                                local _, rollObject = await(promise)
                    
                                for i = 1, #rollObject.ops do
                                    local op = rollObject.ops[i]
                                    if op.tipo == "dado" then
                                        for j = 1, #op.resultados do
                                            aux_atq[#aux_atq + 1] = op.resultados[j]
                                        end
                                    elseif op.tipo == "imediato" then
                                        soma_atq = op.valor or 0
                                    end
                                end
                    
                                local function bubbleSortAscending(t)
                                    local len = #t
                                    for i = 1, len do
                                        for j = 1, len - i do
                                            if t[j] > t[j + 1] then
                                                t[j], t[j + 1] = t[j + 1], t[j]
                                            end
                                        end
                                    end
                                end
                    
                                local function bubbleSortDescending(t)
                                local len = #t
                                for i = 1, len do
                                for j = 1, len - i do
                                    if t[j] < t[j + 1] then
                                    t[j], t[j + 1] = t[j + 1], t[j] end
                                end
                                end
                                end
                    
                                    if converter then
                                    bubbleSortAscending(aux_atq)
                                    else
                                    bubbleSortDescending(aux_atq) end
                    
                                local resultado_final = math.floor((tonumber(aux_atq[1]) or 0) + (tonumber(soma_atq) or 0))
                                    mesaDoPersonagem.chat:enviarMensagem("[§K10]Resultado: [§K1]" .. resultado_final .. " (" .. math.floor(tonumber(aux_atq[1]) or 0) .. " + " .. math.floor(tonumber(soma_atq) or 0) .. ")")
                                end
                                end
                                end
        end);

    obj._e_event12 = obj.dataLink9:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_prontidao or 0);								
            				sheet.graduacao_prontidao = bonus;	
            				
            				if bonus >= 0 then
            					sheet.graduacao_prontidao = bonus;
            				else	
            					sheet.graduacao_prontidao = bonus;
            				end;
        end);

    obj._e_event13 = obj.dataLink10:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_prontidao or 0);								
            				sheet.status_prontidao = bonus;	
                                
            				if bonus >= 0 then
            					sheet.status_prontidao = bonus;
            				else	
            					sheet.status_prontidao = bonus;
            				end;
        end);

    obj._e_event14 = obj.button5:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_prontidao) or 0
                        local converter = false
            
                        if bonus < 0 then
                            bonus = -bonus
                            converter = true
                        end
            
                        local personagem = Firecast.getPersonagemDe(sheet)
                        local auxiliar = (bonus + 1)
                        local auxiliar2 = (auxiliar .. "d20")
                        local soma_atq
                        local aux_atq = {}
            
                        if personagem then
                        local mesa = personagem.mesa
                        if (personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre) then
                        local rolagem = Firecast.interpretarRolagem(sheet.status_prontidao)
                        if not rolagem.possuiAlgumDado then
                               rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem) end
                        local mesaDoPersonagem = Firecast.getMesaDe(sheet)
                        if mesaDoPersonagem then
                        local promise
                        if bonus == 0 then
                            mensagem = "[§K1]Prontidão de " .. (sheet.CODINOME or "Indivíduo(a)")
                        elseif bonus >= 0 and not converter then
                            mensagem = "[§K3]Vantagem em Prontidão de " .. (sheet.CODINOME or "Indivíduo(a)")
                        else
                            mensagem = "[§K5]Desvantagem em Prontidão de " .. (sheet.CODINOME or "Indivíduo(a)")
                        end
            
                        promise = mesaDoPersonagem.chat:asyncRoll(rolagem, mensagem)
            
                        local _, rollObject = await(promise)
            
                        for i = 1, #rollObject.ops do
                            local op = rollObject.ops[i]
                            if op.tipo == "dado" then
                                for j = 1, #op.resultados do
                                    aux_atq[#aux_atq + 1] = op.resultados[j]
                                end
                            elseif op.tipo == "imediato" then
                                soma_atq = op.valor or 0
                            end
                        end
            
                        local function bubbleSortAscending(t)
                            local len = #t
                            for i = 1, len do
                                for j = 1, len - i do
                                    if t[j] > t[j + 1] then
                                        t[j], t[j + 1] = t[j + 1], t[j]
                                    end
                                end
                            end
                        end
            
                            local function bubbleSortDescending(t)
                            local len = #t
                                for i = 1, len do
                                for j = 1, len - i do
                                    if t[j] < t[j + 1] then
                                    t[j], t[j + 1] = t[j + 1], t[j] end
                                end
                                end
                                end
            
                                if converter then
                                    bubbleSortAscending(aux_atq)
                                else
                                    bubbleSortDescending(aux_atq) end
            
                            local resultado_final = math.floor((tonumber(aux_atq[1]) or 0) + (tonumber(soma_atq) or 0))
                                mesaDoPersonagem.chat:enviarMensagem("[§K10]Resultado: [§K1]" .. resultado_final .. " (" .. math.floor(tonumber(aux_atq[1]) or 0) .. " + " .. math.floor(tonumber(soma_atq) or 0) .. ")")
                            end
                            end
                            end
        end);

    obj._e_event15 = obj.dataLink11:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_destreza or 0);								
            				sheet.status_destreza = bonus;	
            				
            				if bonus >= 0 then
            					sheet.status_destreza = bonus;
            				else	
            					sheet.status_destreza = bonus;
            				end;
        end);

    obj._e_event16 = obj.dataLink12:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_destreza or 0);								
            				sheet.graduacao_destreza = bonus;	
                                
            				if bonus >= 0 then
            					sheet.graduacao_destreza = bonus;
            				else	
            					sheet.graduacao_destreza = bonus;
            				end;
        end);

    obj._e_event17 = obj.button6:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_destreza);
                            local converter = false;
                            if (bonus >= 0)then								
            			    sheet.graduacao_destreza = bonus;
                            else
                            bonus = bonus*(-1);
                            converter = true;
                            end;
            
                            
                            local personagem = Firecast.getPersonagemDe(sheet);
                            local auxiliar = (bonus+1);
                            local auxiliar2 = (auxiliar .. "d20");                        
                            
                            if (personagem ~= nil) then
                            local mesa = personagem.mesa;
                    
                            if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                            local rolagem = Firecast.interpretarRolagem(sheet.status_destreza);
            
                            if not rolagem.possuiAlgumDado then
                            rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem);
                            end; 
                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                            if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                            mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de destreza do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            else
                            mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de destreza do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            end;
                            end;
                            end;
        end);

    obj._e_event18 = obj.dataLink13:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_intelecto or 0);								
            			    sheet.status_intelecto = bonus;	
            				
            			    if bonus >= 0 then
            				    sheet.status_intelecto = bonus;
            			    else	
            				    sheet.status_intelecto = bonus;
            			    end;
        end);

    obj._e_event19 = obj.dataLink14:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_intelecto or 0);								
            			    sheet.graduacao_intelecto = bonus;	
                                
            			    if bonus >= 0 then
            				    sheet.graduacao_intelecto = bonus;
            			    else	
            			    sheet.graduacao_intelecto = bonus;
            			    end;
        end);

    obj._e_event20 = obj.button7:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_intelecto);
                            local converter = false;
                            if (bonus >= 0)then								
            			    sheet.graduacao_intelecto = bonus;
                            else
                            bonus = bonus*(-1);
                            converter = true;
                            end;
            
                            
                            local personagem = Firecast.getPersonagemDe(sheet);
                            local auxiliar = (bonus+1);
                            local auxiliar2 = (auxiliar .. "d20");                        
                            
                            if (personagem ~= nil) then
                            local mesa = personagem.mesa;
                    
                            if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                            local rolagem = Firecast.interpretarRolagem(sheet.status_intelecto);
            
                            if not rolagem.possuiAlgumDado then
                            rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem);
                            end; 
                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                            if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                            mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de intelecto do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            else
                            mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de intelecto do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            end;
                            end;
                            end;
        end);

    obj._e_event21 = obj.dataLink15:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.status_presenca or 0);								
            				sheet.status_presenca = bonus;	
            				
            				if bonus >= 0 then
            					sheet.status_presenca = bonus;
            				else	
            					sheet.status_presenca = bonus;
            				end;
        end);

    obj._e_event22 = obj.dataLink16:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.graduacao_presenca or 0);								
            				sheet.graduacao_presenca = bonus;	
                                
            				if bonus >= 0 then
            					sheet.graduacao_presenca = bonus;
            				else	
            					sheet.graduacao_presenca = bonus;
            				end;
        end);

    obj._e_event23 = obj.button8:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.graduacao_presenca);
                            local converter = false;
                            if (bonus >= 0)then								
            			    sheet.graduacao_presenca = bonus;
                            else
                            bonus = bonus*(-1);
                            converter = true;
                            end;
            
                            
                            local personagem = Firecast.getPersonagemDe(sheet);
                            local auxiliar = (bonus+1);
                            local auxiliar2 = (auxiliar .. "d20");                        
                            
                            if (personagem ~= nil) then
                            local mesa = personagem.mesa;
                    
                            if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                            local rolagem = Firecast.interpretarRolagem(sheet.status_presenca);
            
                            if not rolagem.possuiAlgumDado then
                            rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem);
                            end; 
                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                            if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                            mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de presença do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            else
                            mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de presença do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            end;
                            end;
                            end;
        end);

    obj._e_event24 = obj.dataLink17:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_acrobacia or 0);								
                            sheet.pericia_acrobacia = bonus;
            
                            if bonus >= 0 then
                            sheet.pericia_acrobacia = bonus;
                            else
                            sheet.pericia_acrobacia = bonus;
                            end;
        end);

    obj._e_event25 = obj.button9:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_acrobacia) or 0
                                local converter = false
                    
                                if bonus < 0 then
                                    bonus = -bonus
                                    converter = true
                                end
                    
                                local personagem = Firecast.getPersonagemDe(sheet)
                                local auxiliar = (bonus + 1)
                                local auxiliar2 = (auxiliar .. "d20")
                                local soma_atq
                                local aux_atq = {}
                    
                                if personagem then
                                local mesa = personagem.mesa
                                if (personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_acrobacia)
                                if not rolagem.possuiAlgumDado then
                                       rolagem = Firecast.interpretarRolagem(auxiliar2):concatenar(rolagem) end
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet)
                                if mesaDoPersonagem then
                                local promise
                                if bonus == 0 then
                                    mensagem = "[§K1]Acrobacia de " .. (sheet.CODINOME or "Indivíduo(a)")
                                elseif bonus >= 0 and not converter then
                                    mensagem = "[§K3]Vantagem em Acrobacia de " .. (sheet.CODINOME or "Indivíduo(a)")
                                else
                                    mensagem = "[§K5]Desvantagem em Acrobacia de " .. (sheet.CODINOME or "Indivíduo(a)")
                                end
                    
                                promise = mesaDoPersonagem.chat:asyncRoll(rolagem, mensagem)
                    
                                local _, rollObject = await(promise)
                    
                                for i = 1, #rollObject.ops do
                                    local op = rollObject.ops[i]
                                    if op.tipo == "dado" then
                                        for j = 1, #op.resultados do
                                            aux_atq[#aux_atq + 1] = op.resultados[j]
                                        end
                                    elseif op.tipo == "imediato" then
                                        soma_atq = op.valor or 0
                                    end
                                end
                    
                                --local function bubbleSortAscending(t)
                                --    local len = #t
                                  --  for i = 1, len do
                                    --    for j = 1, len - i do
                                      --      if t[j] > t[j + 1] then
                                        --        t[j], t[j + 1] = t[j + 1], t[j]
                                       --     end
                                    --    end
                                 --   end
                               --\ end
                    
                            --    local function bubbleSortDescending(t)
                            --    local len = #t
                            --    for i = 1, len do
                            --    for j = 1, len - i do
                            --        if t[j] < t[j + 1] then
                            --        t[j], t[j + 1] = t[j + 1], t[j] end
                            --    end
                            --    end
                            --    end
                    
                              --      if converter then
                              --      bubbleSortAscending(aux_atq)
                              --      else
                              --      bubbleSortDescending(aux_atq) end--
                    
                                local resultado_final = math.floor((tonumber(aux_atq[1]) or 0) + (tonumber(soma_atq) or 0))
                                    mesaDoPersonagem.chat:enviarMensagem("[§K10]Resultado: [§K1]" .. resultado_final .. " (" .. math.floor(tonumber(aux_atq[1]) or 0) .. " + " .. math.floor(tonumber(soma_atq) or 0) .. ")")
                                end
                                end
                                end
        end);

    obj._e_event26 = obj.dataLink18:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_atletismo or 0);								
                            sheet.pericia_atletismo = bonus;	
                        
                            if bonus >= 0 then
                            sheet.pericia_atletismo = bonus;
                            else	
                            sheet.pericia_atletismo = bonus;
                            end;
        end);

    obj._e_event27 = obj.button10:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_atletismo);
                            local converter = false;
                            if (bonus >= 0)then								
            				sheet.pericia_atletismo = bonus;
                            else
                            bonus = bonus*(-1);
                            converter = true;
                            end;
            
                            
                            local personagem = Firecast.getPersonagemDe(sheet);
                            local auxiliar = (bonus+1);
                            local auxiliar2 = (auxiliar .. "d6");                        
                            
                            if (personagem ~= nil) then
                            local mesa = personagem.mesa;
                    
                            if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                            local rolagem = Firecast.interpretarRolagem(sheet.pericia_atletismo);
            
                            if not rolagem.possuiAlgumDado then
                            rolagem = Firecast.interpretarRolagem(auxiliar2);
                            end; 
                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                            if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de atletismo do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de atletismo do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                            end;
                            end;
                            end;
        end);

    obj._e_event28 = obj.dataLink19:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_veiculos or 0);								
                            sheet.pericia_veiculos = bonus;	
                            
                            if bonus >= 0 then
                            sheet.pericia_veiculos = bonus;
                            else	
                            sheet.pericia_veiculos = bonus;
                            end;
        end);

    obj._e_event29 = obj.button11:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_veiculos);
                            local converter = false;
                            if (bonus >= 0)then								
            				sheet.pericia_veiculos = bonus;
                            else
                            bonus = bonus*(-1);
                            converter = true;
                            end;
            
                            
                            local personagem = Firecast.getPersonagemDe(sheet);
                            local auxiliar = (bonus+1);
                            local auxiliar2 = (auxiliar .. "d6");                        
                            
                            if (personagem ~= nil) then
                            local mesa = personagem.mesa;
                    
                            if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                            local rolagem = Firecast.interpretarRolagem(sheet.pericia_veiculos);
            
                            if not rolagem.possuiAlgumDado then
                            rolagem = Firecast.interpretarRolagem(auxiliar2);
                            end; 
                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                            if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de veiculos do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de veiculos do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                            end;
                            end;
                            end;
        end);

    obj._e_event30 = obj.dataLink20:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_intuicao or 0);								
                            sheet.pericia_intuicao = bonus;	
                            
                            if bonus >= 0 then
                            sheet.pericia_intuicao = bonus;
                            else
                            sheet.pericia_intuicao = bonus;
                            end;
        end);

    obj._e_event31 = obj.button12:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_intuicao);
                            local converter = false;
                            if (bonus >= 0)then								
            				sheet.pericia_intuicao = bonus;
                            else
                            bonus = bonus*(-1);
                            converter = true;
                            end;
            
                            
                            local personagem = Firecast.getPersonagemDe(sheet);
                            local auxiliar = (bonus+1);
                            local auxiliar2 = (auxiliar .. "d6");                        
                            
                            if (personagem ~= nil) then
                            local mesa = personagem.mesa;
                    
                            if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                            local rolagem = Firecast.interpretarRolagem(sheet.pericia_intuicao);
            
                            if not rolagem.possuiAlgumDado then
                            rolagem = Firecast.interpretarRolagem(auxiliar2);
                            end; 
                            local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                            if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de intuicao do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de intuicao do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                            end;
                            end;
                            end;
        end);

    obj._e_event32 = obj.dataLink21:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_enganacao or 0);								
                            sheet.pericia_enganacao = bonus;	
                                        
                            if bonus >= 0 then
                            sheet.pericia_enganacao = bonus;
                            else	
                            sheet.pericia_enganacao = bonus;
                            end;
        end);

    obj._e_event33 = obj.button13:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_enganacao);
                                local converter = false;
                                if (bonus >= 0)then								
            				    sheet.pericia_enganacao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_enganacao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de enganação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de enganação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event34 = obj.dataLink22:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_especialidade or 0);								
                                sheet.pericia_especialidade = bonus;	
                                        
                                if bonus >= 0 then
                                sheet.pericia_especialidade = bonus;
                                else	
                                sheet.pericia_especialidade = bonus;
                                end;
        end);

    obj._e_event35 = obj.button14:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_especialidade);
                                local converter = false;
                                if (bonus >= 0)then								
            				    sheet.pericia_especialidade = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_especialidade);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de especialidade do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de especialidade do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event36 = obj.dataLink23:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_furtividade or 0);								
                                sheet.pericia_furtividade = bonus;	
                            
                                if bonus >= 0 then
                                    sheet.pericia_furtividade = bonus;
                                else	
                                    sheet.pericia_furtividade = bonus;
                                end;
        end);

    obj._e_event37 = obj.button15:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_furtividade);
                                local converter = false;
                                if (bonus >= 0)then								
            				    sheet.pericia_furtividade = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_furtividade);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de furtividade do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de furtividade do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event38 = obj.dataLink24:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_intimidacao or 0);								
                                sheet.pericia_intimidacao = bonus;	
                            
                                if bonus >= 0 then
                                sheet.pericia_intimidacao = bonus;
                                else	
                                sheet.pericia_intimidacao = bonus;
                                end;
        end);

    obj._e_event39 = obj.button16:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_intimidacao);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_intimidacao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_intimidacao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de intimidação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de intimidação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event40 = obj.dataLink25:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_performance or 0);								
                                sheet.pericia_performance = bonus;	
                            
                                if bonus >= 0 then
                                sheet.pericia_performance = bonus;
                                else	
                                sheet.pericia_performance = bonus;
                                end;
        end);

    obj._e_event41 = obj.button17:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_performance);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_performance = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_performance);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de performance do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de performance do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event42 = obj.dataLink26:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_investigacao or 0);								
                                sheet.pericia_investigacao = bonus;	
                                
                                if bonus >= 0 then
                                sheet.pericia_investigacao = bonus;
                                else	
                                sheet.pericia_investigacao = bonus;
                                end;
        end);

    obj._e_event43 = obj.button18:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_investigacao);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_investigacao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_investigacao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de investigação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de investigação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event44 = obj.dataLink27:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_magia or 0);								
                                sheet.pericia_magia = bonus;	
                            
                                if bonus >= 0 then
                                sheet.pericia_magia = bonus;
                                else	
                                sheet.pericia_magia = bonus;
                                end;
        end);

    obj._e_event45 = obj.button19:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_magia);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_magia = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_magia);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de magia do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de magia do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event46 = obj.dataLink28:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_percepcao or 0);								
                                sheet.pericia_percepcao = bonus;	
                            
                                if bonus >= 0 then
                                    sheet.pericia_percepcao = bonus;
                                else	
                                    sheet.pericia_percepcao = bonus;
                                end;
        end);

    obj._e_event47 = obj.button20:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_percepcao);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_percepcao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_percepcao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de percepção do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de percepção do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event48 = obj.dataLink29:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_persuasao or 0);								
                                            sheet.pericia_persuasao = bonus;	
                                        
                                            if bonus >= 0 then
                                                sheet.pericia_persuasao = bonus;
                                            else	
                                                sheet.pericia_persuasao = bonus;
                                            end;
        end);

    obj._e_event49 = obj.button21:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_persuasao);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_persuasao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_persuasao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de persuasão do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de persuasão do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event50 = obj.dataLink30:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_prestigitacao or 0);								
                                            sheet.pericia_prestigitacao = bonus;	
                                        
                                            if bonus >= 0 then
                                                sheet.pericia_prestigitacao = bonus;
                                            else	
                                                sheet.pericia_prestigitacao = bonus;
                                            end;
        end);

    obj._e_event51 = obj.button22:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_prestigitacao);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_prestigitacao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_prestigitacao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de prestigitação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de prestigitação do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event52 = obj.dataLink31:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_religiao or 0);								
                                            sheet.pericia_religiao = bonus;	
                                        
                                            if bonus >= 0 then
                                                sheet.pericia_religiao = bonus;
                                            else	
                                                sheet.pericia_religiao = bonus;
                                            end;
        end);

    obj._e_event53 = obj.button23:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_religiao);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_religiao = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_religiao);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de religião do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de religião do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event54 = obj.dataLink32:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_tecnologia or 0);								
                                sheet.pericia_tecnologia = bonus;	
                            
                                if bonus >= 0 then
                                    sheet.pericia_tecnologia = bonus;
                                else	
                                    sheet.pericia_tecnologia = bonus;
                                end;
        end);

    obj._e_event55 = obj.button24:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_tecnologia);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_tecnologia = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_tecnologia);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de tecnologia do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de tecnologia do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event56 = obj.dataLink33:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_medicina or 0);								
                            sheet.pericia_medicina = bonus;	
                            
                            if bonus >= 0 then
                            sheet.pericia_medicina = bonus;
                            else	
                            sheet.pericia_medicina = bonus;
                            end;
        end);

    obj._e_event57 = obj.button25:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_medicina);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_medicina = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_medicina);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de medicina do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de medicina do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event58 = obj.dataLink34:addEventListener("onChange",
        function (field, oldValue, newValue)
            local bonus = tonumber(sheet.pericia_animais or 0);								
                            sheet.pericia_animais = bonus;	
                            
                            if bonus >= 0 then
                            sheet.pericia_animais = bonus;
                            else	
                            sheet.pericia_animais = bonus;
                            end;
        end);

    obj._e_event59 = obj.button26:addEventListener("onClick",
        function (event)
            local bonus = tonumber(sheet.pericia_animais);
                                local converter = false;
                                if (bonus >= 0)then								
            		    		sheet.pericia_animais = bonus;
                                else
                                bonus = bonus*(-1);
                                converter = true;
                                end;
            
                                local personagem = Firecast.getPersonagemDe(sheet);
                                local auxiliar = (bonus+1);
                                local auxiliar2 = (auxiliar .. "d6");                        
                            
                                if (personagem ~= nil) then
                                local mesa = personagem.mesa;
                    
                                if ((personagem.dono == mesa.meuJogador) or (mesa.meuJogador.isMestre)) then
                                local rolagem = Firecast.interpretarRolagem(sheet.pericia_animais);
            
                                if not rolagem.possuiAlgumDado then
                                rolagem = Firecast.interpretarRolagem(auxiliar2);
                                end; 
                                local mesaDoPersonagem = Firecast.getMesaDe(sheet);
                    
                                if mesaDoPersonagem ~= nil and bonus >= 0 and converter == false then
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem positiva de lidar com animais do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                                else
                                mesaDoPersonagem.activeChat:rolarDados(rolagem, "Rolagem negativa de lidar com animais do (a) " .. (sheet.CODINOME or "Indivíduo(a)"));
                            
                                end;
                                end;
                                end;
        end);

    obj._e_event60 = obj.colorComboBox1:addEventListener("onChange",
        function ()
            if sheet~=nil then
            							self.txt.backgroundColor = sheet.backgroundColor;
            							default.backgroundColor = sheet.backgroundColor;
            						end;
        end);

    obj._e_event61 = obj.colorComboBox2:addEventListener("onChange",
        function ()
            if sheet~=nil then
            							self.txt.defaultFontColor = sheet.fontColor;
            							default.fontColor = sheet.fontColor;
            						end;
        end);

    obj._e_event62 = obj.edit42:addEventListener("onChange",
        function ()
            if sheet~=nil then
            							self.txt.defaultFontSize = sheet.fontSize;
            							default.fontSize = sheet.fontSize;
            						end;
        end);

    obj._e_event63 = obj.checkBox1:addEventListener("onChange",
        function ()
            if sheet~=nil then
            							self.txt.showToolbar = not sheet.showToolbar;
            							default.showToolbar = sheet.showToolbar;
            						end;
        end);

    obj._e_event64 = obj.checkBox2:addEventListener("onChange",
        function ()
            if sheet~=nil then
            						default.global = sheet.global;
            					end;
        end);

    obj._e_event65 = obj.button27:addEventListener("onClick",
        function (event)
            if sheet~=nil then
            							local default = NDB.load("defaults.xml");
            							
            							sheet.showToolbar = default.showToolbar;
            							self.txt.showToolbar = not sheet.showToolbar;
            
            							sheet.fontSize = default.fontSize;
            							self.txt.defaultFontSize = sheet.fontSize;
            
            							sheet.fontColor = default.fontColor;
            							self.txt.defaultFontColor = sheet.fontColor;
            							
            							sheet.backgroundColor = default.backgroundColor;
            							self.txt.backgroundColor = sheet.backgroundColor;
            						end;
        end);

    obj._e_event66 = obj.button28:addEventListener("onClick",
        function (event)
            self.rclAbas:append();
        end);

    obj._e_event67 = obj.settingsBT:addEventListener("onClick",
        function (event)
            loadDefault();
            						local pop = self:findControlByName("popupSettings");
            					
            						if pop ~= nil then
            							pop:setNodeObject(self.sheet);
            							pop:showPopupEx("bottom", self.settingsBT);
            						else
            							showMessage("Ops, bug.. nao encontrei o popup de opções para exibir");
            						end;
        end);

    obj._e_event68 = obj.creditBt:addEventListener("onClick",
        function (event)
            local pop = self:findControlByName("popCredit");
            					
            						if pop ~= nil then
            							pop:setNodeObject(self.sheet);
            							pop:showPopupEx("bottom", self.creditBt);
            						else
            							showMessage("Ops, bug.. nao encontrei o popup de creditos para exibir");
            						end;
        end);

    obj._e_event69 = obj.rclAbas:addEventListener("onSelect",
        function ()
            local node = self.rclAbas.selectedNode;
            						self.boxTexto.node = node;
            						self.boxTexto.visible = (node ~= nil);
        end);

    obj._e_event70 = obj.rclAbas:addEventListener("onEndEnumeration",
        function ()
            if self.rclAbas.selectedNode == nil and sheet ~= nil then
            							local nodes = NDB.getChildNodes(sheet.abas);			   
            
            							if #nodes > 0 then
            								self.rclAbas.selectedNode = nodes[1];
            							end;
            						end;
        end);

    obj._e_event71 = obj.txt:addEventListener("onMouseMove",
        function (event)
            loadDefault();
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.txt ~= nil then self.txt:destroy(); self.txt = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.frm_FM ~= nil then self.frm_FM:destroy(); self.frm_FM = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.colorComboBox1 ~= nil then self.colorComboBox1:destroy(); self.colorComboBox1 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.creditBt ~= nil then self.creditBt:destroy(); self.creditBt = nil; end;
        if self.boxTexto ~= nil then self.boxTexto:destroy(); self.boxTexto = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.rclAbas ~= nil then self.rclAbas:destroy(); self.rclAbas = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.popupSettings ~= nil then self.popupSettings:destroy(); self.popupSettings = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.popCredit ~= nil then self.popCredit:destroy(); self.popCredit = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.frmHEROIS1_svg ~= nil then self.frmHEROIS1_svg:destroy(); self.frmHEROIS1_svg = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.colorComboBox2 ~= nil then self.colorComboBox2:destroy(); self.colorComboBox2 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.settingsBT ~= nil then self.settingsBT:destroy(); self.settingsBT = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newHerois_Eclipse()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Herois_Eclipse();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Herois_Eclipse = {
    newEditor = newHerois_Eclipse, 
    new = newHerois_Eclipse, 
    name = "Herois_Eclipse", 
    dataType = "Herois.Eclipse", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "Hero_Eclipse", 
    description=""};

Herois_Eclipse = _Herois_Eclipse;
Firecast.registrarForm(_Herois_Eclipse);
Firecast.registrarDataType(_Herois_Eclipse);

return _Herois_Eclipse;
