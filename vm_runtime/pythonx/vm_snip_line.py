#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
# ================================================================================================ #
# ==                                                                                            == #
# ==                                       vm_snip_line                                         == #
# ==                                                                                            == #
# == ------------------------------------------------------------------------------------------ == #
# ==                                                                                            == #
# ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == #
# ==   Version              : 1.0.0.0                                                           == #
# ==   Create Time          : 2020-09-15 21:11                                                  == #
# ==   Modify Time          : 2020-09-15 21:11                                                  == #
# ==   Issue  List          :                                                                   == #
# ==   Change List          :                                                                   == #
# ==     [    0.0.0.0     ] - Basic version                                                     == #
# ==                                                                                            == #
# == ------------------------------------------------------------------------------------------ == #
# ==                                                                                            == #
# ==   Copyright(c) : This file has copyrighted by v.m., the all right will been reserved!      == #
# ==                                                                                            == #
# ================================================================================================ #

# ================================================================================================ #
# ==  导入py函数                                                                                == #
# ------------------------------------------------------------------------------------------------ #
# [ 导入py函数 ] {{{
from vm_snip_define import *
from vm_snip_vim    import *
#from vm_snip_vim    import str_len
# }}} ! [ 导入py函数 ]
# ================================================================================================ #

# ================================================================================================ #
# ==  Create new line                                                                           == #
# ------------------------------------------------------------------------------------------------ #
# [ Class vLine : Create new line ] {{{
class vLine(object):
    'class comment'

    # [ __init__ :  ] {{{
    # TODO : change comment flag "//"  to cmt_fmt()
    def __init__ ( self, iWidth=gLine['Len'], tTxtRsv=[" == "," == "]):
    #def __init__ ( self, iWidth=gLine['Len'], tTxtRsv=[" == "," == "], tTxtFlg=["//","//"]):
        self.tTxtRsv   = tTxtRsv
        self.iLen      = iWidth
    # }}} ! [ __init__ ]

# ------------------------------------------------------------------------------------------------ #
# [ Line funcs ] {{{
    # [ Line_l : 行左标识 ] {{{
    def Line_l ( self, tRsv=[] ):
        import operator
        ltRsv = tRsv if operator.ne( tRsv, [] ) else self.tTxtRsv
        lsLineTxt = cmt()[0]+ltRsv[0]
        return lsLineTxt
    # }}} ! [ Line_l ]

    # [ Line_r : 行右标识 ] {{{
    def Line_r ( self, tRsv=[] ):
        import operator
        ltRsv = tRsv if operator.ne( tRsv, []) else self.tTxtRsv
        lsLineTxt = ltRsv[1]+cmt()[2]
        return lsLineTxt
    # }}} ! [ Line_r ]
# }}} ! [ Line funcs ] 
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ len funcs ] {{{

    # [ Len_cl   : 获取指定长度居中对子字符串左部分空格数 ] {{{
    def Len_cl ( self, iWidth, sTxt ):
        # TODO : change len() func to str_len()
        liLenRemained = iWidth - str_len(sTxt)
        #liLenRemained = iWidth - len(sTxt)
        liLenRemained = liLenRemained if liLenRemained >0 else 1

        liLenLeft = int(liLenRemained/2)
        liLenLeft = liLenLeft if liLenLeft >0 else 0

        return liLenLeft
    # }}} ! [ Len_cl ]

    # [ Len_cr   : 获取指定长度居中对子字符串右部分空格数 ] {{{
    def Len_cr ( self, iWidth, sTxt):
      # TODO : change len() func to str_len()
      liLenRemained = iWidth - str_len(sTxt)
      #liLenRemained = iWidth - len(sTxt)
      liLenRemained = liLenRemained if liLenRemained >0 else 1

      liLenLeft = int(liLenRemained/2)
      liLenLeft = liLenLeft if liLenLeft >0 else 0

      liLenRight = liLenRemained - liLenLeft
      liLenRight = liLenRight if liLenRight >0 else 0

      return liLenRight
    # }}} ! [ Len_cr ]

    # [ Len_left : 获取某个指定长度字符串中除去字符后的长度 ] {{{
    def Len_left ( self, iWidth, sTxt ):
        #liLenRemained = iWidth-str_len(sTxt)
        liLenRemained = iWidth-len(sTxt)
        return liLenRemained
    # }}} ! [ Len_left 

# }}} ! [ len funcs ]
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ Txt funcs ] {{{

    # [ Txt_f :  ] {{{
    def Txt_f ( self, cFill=' ', iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = cFill.rjust(iWidth,cFill)
        return lsLineTxt
    # }}} ! [ Txt_f ]

    # [ Txt_c :  ] {{{
    def Txt_c ( self, sTxt=" ", iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = sTxt.center(iWidth)
        return lsLineTxt
    # }}} ! [ Txt_c ]

    # [ Txt_c3 :  ] {{{
    def Txt_c3 ( self, sTxtLeft, sTxt, sTxtRight, iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        # TODO : change len() func to str_len()
        lsLineTxt = sTxtLeft+sTxt.center(iWidth-str_len(sTxtLeft)-str_len(sTxtRight))+sTxtRight
        #lsLineTxt = sTxtLeft+sTxt.center(iWidth-len(sTxtLeft)-len(sTxtRight))+sTxtRight
        return lsLineTxt
    # }}} ! [ Txt_c3 ]

    # [ Txt_l : 编写一个以字符居中格式，指定字符长度字符串的右半段，并不包含字符串 ] {{{
    def Txt_l ( self, sTxt=" ", iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = sTxt.ljust(iWidth)
        return lsLineTxt
    # }}} ! [ Txt_cl ]

    # [ Txt_r :  ] {{{
    def Txt_r ( self, sTxt=" ", iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = sTxt.rjust(iWidth)
        return lsLineTxt
    # }}} ! [ Txt_cr ]

    # [ Txt_cl :  ] {{{
    def Txt_cl ( self, sTxt=" ", iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = sTxt.ljust(self.Len_cl(iWidth,sTxt))
        return lsLineTxt
    # }}} ! [ Txt_cl ]

    # [ Txt_cr :  ] {{{
    def Txt_cr ( self, sTxt=" ", iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = sTxt.rjust(self.Len_cr(iWidth,sTxt))
        return lsLineTxt
    # }}} ! [ Txt_cr

# }}} ! [ Txt funcs ]
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ Spc funcs ] {{{

    # [ Spc_cl : ] {{{
    def Spc_cl( self, sTxt, iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = " "*self.Len_cl(iWidth,sTxt)
        return lsLineTxt
    # }}} ! [ Spc_cl ]

    # [ Spc_cr :  ] {{{
    def Spc_cr ( self, sTxt, iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = " "*self.Len_cr(iWidth,sTxt)
        return lsLineTxt
    # }}} ! [ Spc_cr ]

    # [ Spc_l :  ] {{{
    def Spc_l ( self, sTxt, iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = " "*self.Len_left(iWidth,sTxt)
        return lsLineTxt
    # }}} ! [ Spc_l ]

    # [ Spc_r :  ] {{{
    def Spc_r ( self, sTxt, iWidth=0 ):
        iWidth    = self.iLen if iWidth<=0 else iWidth
        lsLineTxt = " "*self.Len_left(iWidth,sTxt)
        return lsLineTxt
    # }}} ! [ Spc_r ]

    # [ Spc_left :  ] {{{
    def Spc_left ( self, sTxt, iWidth=0):
        iWidth        = self.iLen if iWidth<=0 else iWidth
        liLenRemained = iWidth - len(sTxt)
        liLenRemained = liLenRemained if liLenRemained >0 else 0
        return " "*liLenRemained
    # }}} ! [ Spc_left 

# }}} ! [ Spc funcs ]
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ Line funcs ] {{{

    # [ Line_txt_f : 以cFill字符填充行 ] {{{
    def Line_txt_f ( self, cFill, tRsv=[], iWidth=0 ):
        lsLineTxt = self.Line_l(tRsv)+self.Txt_f(cFill,iWidth)+self.Line_r(tRsv)
        return lsLineTxt
    # }}} ! [ Line_txt_f ]

    # [ Line_txt_c : ] {{{
    def Line_txt_c ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Line_l(tRsv)+self.Txt_c(sTxt,iWidth)+self.Line_r(tRsv)
        return lsLineTxt
    # }}} ! [ Line_txt_c ]

    # [ Line_txt_t :  ] {{{
    def Line_txt_t ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Line_l(tRsv)+self.Txt_l(sTxt,iWidth)+self.Line_r(tRsv)
        return lsLineTxt
    # }}} ! [ Line_txt_t ]

    # [ Line_txt_l : 编写行，字符左对齐 ] {{{
    def Line_txt_l ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Line_l(tRsv)+self.Txt_l(sTxt,iWidth)
        return lsLineTxt
    # }}} ! [ Line_txt_l ]

    # [ Line_txt_l2 :  ] {{{
    def Line_txt_l2 ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Line_l(tRsv)+sTxt.ljust(iWidth)
        return lsLineTxt
    # }}} ! [ Line_txt_l2 ]

    # [ Line_txt_r :  ] {{{
    def Line_txt_r ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Txt_r(sTxt,iWidth)+self.Line_r(tRsv)
        return lsLineTxt
    # }}} ! [ Line_txt_r ]

    # [ Line_txt_cl :  ] {{{
    def Line_txt_cl ( self, sTxt, iWidth=0, tRsv=[]):
        lsLineTxt = self.Line_l(tRsv)+self.Txt_cl(sTxt,iWidth)
        return lsLineTxt
    # }}} ! [ Line_txt_cl ]

    # [ Line_spc_cl : ] {{{
    def Line_spc_cl ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Line_l(tRsv)+self.Spc_cl(sTxt,iWidth)
        return lsLineTxt
    # }}} ! [ Line_spc_cl ]

    # [ Line_spc_cr : ] {{{
    def Line_spc_cr ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Spc_cr(sTxt,iWidth)+self.Line_r(tRsv)
        return lsLineTxt
    # }}} ! [ Line_spc_cr ]

    # [ Line_spc_l : ] {{{
    def Line_spc_l ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt= self.Line_l(tRsv)+self.Spc_l(sTxt.iWidth)
        return lsLineTxt
    # }}} ! [ Line_spc_l ]

    # [ Line_spc_r :  ] {{{
    def Line_spc_r ( self, sTxt, iWidth=0, tRsv=[] ):
        lsLineTxt = self.Spc_r(sTxt,iWidth)+self.Line_r(tRsv)
        return lsLineTxt
    # }}} ! [ Line_spc_r 

# }}} ! [ Line funcs ]
# ------------------------------------------------------------------------------------------------ #

# }}} ! [ Create new line ]
# ================================================================================================ #

# ================================================================================================ #
# ==  Usage :                                                                                   == #
# ------------------------------------------------------------------------------------------------ #
# [ Usage ] {{{
line  = vLine( 40 )
print( line.Line_txt_f( '=',  (" ===","=== ") ) )
print( line.Line_txt_f( ' ' ) )
print( line.Line_txt_f( ' ',  ("    ","    ") ) )
print( line.Line_txt_c("ABCD") )
print( line.Line_txt_l("ABCD") )
print( line.Line_txt_l("ABCD",0,("    ","    ")) )
print( line.Line_txt_r("ABCD") )
print( line.Line_txt_r("ABCD",0,("    ","    ")) )
print( line.Line_txt_f( '=',  (" ===","=== ") ) )
print( line.Line_txt_f( ' ',  ("    ","    ") ) )
print( line.Line_txt_c("ABCD") )
print( line.Line_spc_cl("ABCD")+"ABCD"+line.Line_spc_cr("ABCD"))
print( line.Line_txt_f( ' '  ) )
print( line.Line_txt_f( '-' ) )
print( line.Line_l()+"  Author"+line.Spc_left("  Author",20)+" : "+"v.m."+line.Line_spc_r(" : v.m.", 20 ) )
print( line.Line_l((" ==  ",""))+  "Author"+line.Spc_left(  "Author",19)+" : "+"v.m."+line.Line_spc_r(" : v.m.", 20 ) )
print( line.Line_txt_l2(" ")+"Author"+line.Spc_left(  "Author",19)+" : "+"v.m."+line.Line_spc_r(" : v.m.", 20 ) )
liWidth1 = 20-len("  [")-len("]")
print( line.Line_txt_l2("  [")+line.Spc_cl("0.0.0.0",liWidth1)+"0.0.0.0"+line.Spc_cr("0.0.0.0",liWidth1)+"]"+" - "+ "Basic version"+line.Line_spc_r((" - "+"Basic version"), 20 ))
# }}}
# ================================================================================================ #
# ==                                   结束文件                                                 == #
# ================================================================================================ #
