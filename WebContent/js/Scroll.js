window.onload = function () {
        var oDiv = document.getElementById('content-1');
  
        function onMouseWheel(ev) {/*当鼠标滚轮事件发生时，执行一些操作*/
            var ev = ev || window.event;
            var down = true; // 定义一个标志，当滚轮向下滚时，执行一些操作
                down = ev.wheelDelta?ev.wheelDelta<0:ev.detail>0;
            if(down){
                oDiv.scrollLeft = oDiv.scrollLeft+40;
            }else{
                oDiv.scrollLeft = oDiv.scrollLeft-40;
            }
            if(ev.preventDefault){/*FF 和 Chrome*/
                ev.preventDefault();// 阻止默认事件
            }
            return false;
        }
        addEvent(oDiv,'mousewheel',onMouseWheel);
        addEvent(oDiv,'DOMMouseScroll',onMouseWheel);
     }
    function addEvent(obj,xEvent,fn) {  //为了保证浏览器兼容
        if(obj.attachEvent){ 
            obj.attachEvent('on'+xEvent,fn);  //IE和chrome兼容
        }else{
            obj.addEventListener(xEvent,fn,false); //火狐兼容
        }
    }