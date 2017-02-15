var 时间戳
功能 鼠标移动到识别点(x,y)
    if(x!=-1||y!=-1)
        lw.MoveTo(x,y)
        log("鼠标移动到识别点:" &"x->" & x & "y->" & y)
        return 真
    else
        log("鼠标移动失败:" &"x->" & x & "y->" & y)
        return 假
    end
结束 

功能  鼠标左键单击识别点()
    鼠标点击特定的点(lw.GetX(),lw.GetY())
结束

功能 鼠标点击特定的点(x,y)
    if(鼠标移动到识别点(x,y))
        if(lw.LeftClick()==1)
            时间戳 = 当前时间()
            log("鼠标左键单击"& "x->" & x & "y->" & y)
            等待(300)
        end
    end
结束

功能 滑动屏幕(x,y,x1,y1)
    log("滑动开始" & "x->" & x & " y->" & y )
    lw.MoveTo(x,y)
    lw.EnableRealMouse(1,20,30)
    lw.LeftDown()
    lw.MoveTo(x1,y1)
    lw.EnableRealMouse(0,20,30)
    lw.LeftUp()
    log("滑动结束" & "x->" & x1 & " y->" & y1)
    时间戳 = 当前时间()
    等待(1000)
结束
