var lw,窗口句柄,with,hight

功能 注册lw()
    变量 regStatus=注册插件("rc:lw.dll",真)
    如果(regStatus)
        lw = 插件("lw.lwsoft3")
        log("注册lw success-> " & lw.ver())
    否则
        消息框("初始化失败","提示")
    结束 
结束

功能 注销lw()
    注册插件("rc:lw.dll",假)
    log("注销lw")
结束

功能 init ()
    with=960
    hight=540
    窗口句柄=0
    间隔 = 300
    时间戳 = 当前时间()
结束

功能 窗口绑定()
    变量 w,h
    如果 (!是否绑定窗口())
        窗口句柄 = lw.GetMousePointWindow()
        log("窗口句柄" & 窗口句柄)
        lw.GetWindowSize(窗口句柄)
        如果(with==lw.x() && hight==lw.y())
            如果(lw.BindWindow(窗口句柄,5,1,1,0,0)==1)
                log("窗口绑定成功")
                返回 真
            否则
                log("窗口绑定失败")
                返回 假
            结束
        否则
            log("分辨率错误")
            返回 假
        结束
    结束
结束

功能 初始化字库()
    if(lw.SetDict(0,获取资源路径("rc:阴阳师字库.txt"))==1)
        log("初始化字库")
    end
    
结束

功能 解除窗口绑定()
    如果 (是否绑定窗口())
        如果(lw.UnBindWindow()==1)
            log("解除窗口绑定成功")
            返回 真
        否则
            if(lw.ForceUnBindWindow(窗口句柄)==1)
                log("强制解除窗口绑定成功")
                返回 真
            else
                返回 假
                log("解除窗口绑定失败")
            end
            
        结束
    结束
结束

功能 是否绑定窗口()
    如果(lw.IsBind(窗口句柄)==1)
        log("已绑定窗口")
        返回 真
    否则
        log("未绑定窗口")
        返回 假
    结束
结束

功能 log(ms)
    调试输出(ms)
结束