#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
# ================================================================================================ #
# ==                                                                                            == #
# ==                                       vm_snip_vim.py                                       == #
# ==                                                                                            == #
# ------------------------------------------------------------------------------------------------ #
# ==                                                                                            == #
# ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == #
# ==   Version              : 0.0.0.0                                                           == #
# ==   Create Time          : 2020-09-22 19:45:58                                               == #
# ==   Modify Time          : 2020-09-22 19:45:58                                               == #
# ==   Issue  List          :                                                                   == #
# ==   Change List          :                                                                   == #
# ==     [    0.0.0.0     ] - Basic version                                                     == #
# ==                                                                                            == #
# ------------------------------------------------------------------------------------------------ #
# ==                                                                                            == #
# ==   Copyright(c) : This file has copyrighted by v.m., the all right will been reserved!      == #
# ==                                                                                            == #
# ================================================================================================ #

# ================================================================================================ #
# ==  导入py函数                                                                                == #
# ------------------------------------------------------------------------------------------------ #
# [ 导入py函数 ] {{{
import string,vim,re,time
# }}} ! [ 导入py函数 ]
# ================================================================================================ #

# ------------------------------------------------------------------------------------------------ #
# [ cmt : 获取当前文件类型的注释符 ] {{{
def cmt():
    commentstring = vim.eval("&commentstring")
    if commentstring.endswith("%s"):
        c = commentstring[:-2]
        return (c.rstrip(), c.rstrip(), c.rstrip(), "")

    # return cmts for c,cpp files 
    return ("//","//","//","")
#    from vimsnippets import _parse_comments
#    comments = _parse_comments(vim.eval("&comments"))
#    for c in comments:
#        if c[0] == "SINGLE_CHAR":
#            return c[1:]
#    return comments[0][1:]
# }}} ! [ cmt : 获取当前文件类型的注释符 ]
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ str_len : 过去字符在vim中的长度 ] {{{
def str_len( sTxt ):
    return int(vim.eval(str("strdisplaywidth('"+sTxt+"')")))
# }}} ! [ str_len ]
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ strtime : 获取当前时间 ] {{{
def strtime():
  return time.strftime("%Y-%m-%d %H:%M:%S")
# }}} ! [ strtime : 获取当前时间 ]
# ------------------------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------------------------ #
# [ get_args : 将一个以‘，’作为分割符的字符串转换为列表 ] {{{
def get_args(arglist):
    args = [arg.strip() for arg in arglist.split(',') if arg]
    return arg
# }}} ! [ get_args : 将一个以‘，’作为分割符的字符串转换为列表 ]
# ------------------------------------------------------------------------------------------------ #

# ================================================================================================ #
# ==                                        End of file                                         == #
# ================================================================================================ #
