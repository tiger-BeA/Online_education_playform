	var img_list = document.getElementById("carousel-box")
							.getElementsByTagName("div")[0];
	var ori_imgs = img_list.getElementsByTagName("a");

	var spans = document.getElementById("carousel-box")
							.getElementsByTagName("div")[1]
							.getElementsByTagName("span");
	var img_list_timer = null;
	
	var clone1 = ori_imgs[0].cloneNode(true);
	img_list.appendChild(clone1);
	
	var clone5 = ori_imgs[4].cloneNode(true);
	var clone4 = ori_imgs[3].cloneNode(true);
	img_list.insertBefore(clone5, ori_imgs[0]);
	img_list.insertBefore(clone4, clone5);

	var btnsize = spans.length;

	var imgs = img_list.getElementsByTagName("img");
	var size = imgs.length;
	var viewWidth, base, pdis;

	var i = 3;
	setopc(i);

	var sf = 0;
	adjust();

	window.onresize = function() {
		adjust();
	}

	function adjust() {
		base = document.body.clientWidth*0.09;
		pdis = document.body.clientWidth*0.84;
		for (var j = 0; j < size; j++) {
			imgs[j].style.width = (document.body.clientWidth*0.84).toString() + "px";
			imgs[j].style.height = "450px";
		}
		var imgsWidth = document.body.clientWidth*0.84;
		img_list.style.width = (imgsWidth*(imgs.length+1)).toString() + "px";
		if (sf == 0) {
			img_list.style.left = (-(document.body.clientWidth*0.84)*3+document.body.clientWidth*0.08).toString() + "px";
			sf = 1;
		} else {
			img_list.style.left = (-i*pdis+base).toString() + "px";
		}
	}

	//向右轮播函数
	function moveR() {
		i++;
		if (i == size-1) {
			img_list.style.left = -1*pdis+base;
			i = 2;
		}

		if (img_list_timer != null)
			clearInterval(img_list_timer);
		var current_left = img_list.offsetLeft;
		var current_time = 0;
		img_list_timer = setInterval(function() {
			var delta = (current_left - ((-i*pdis)+base)) / 42;
			img_list.style.left = (img_list.offsetLeft - delta).toString() + "px";
			current_time += 1
			if(current_time >= 42){
				clearInterval(img_list_timer);
			}
		}, 1000 / 60);
		
		setopc(i);
		for(var k = 0;k < spans.length;k++) {
			if (k != i-2) {
				remove_class(spans[k], "on");
			} else {
				add_class(spans[k], "on");
			}
		}
	}

	function setopc(index) {
		for (var k = 0; k < size; k++) {
			if (k != index) imgs[k].style.opacity = 0.7;
			else imgs[k].style.opacity = 1;
		}
	}

	//鼠标滑过圆点

	for(var j = 0;j < spans.length;j++) {
		(function(arg) {
			spans[arg].onmouseover = function() {
				var real_i = arg + 2;
				setopc(real_i);
				i = real_i;

				if (img_list_timer != null)
					clearInterval(img_list_timer);
				var current_left = img_list.offsetLeft;
				var current_time = 0;
				img_list_timer = setInterval(function() {
					var delta = (current_left - ((-real_i*pdis)+base)) / 42;
					img_list.style.left = (img_list.offsetLeft - delta).toString() + "px";
					current_time += 1;
					if(current_time >= 42){
						clearInterval(img_list_timer);
					}
				}, 1000 / 60);
				
				for(var k = 0;k < spans.length;k++) {
					if (k != arg) {
						remove_class(spans[k], "on");
					} else {
						add_class(spans[k], "on");
					}
				}
			};
		})(j);
	}

	//定时自动轮播
	var t = setInterval(function() {
		moveR();
	}, 2000);

	//鼠标划过图片停止自动轮播
	var cbox = document.getElementById("carousel-box");
	cbox.onmouseover = function() {
		clearInterval(t);
	};

	cbox.onmouseout = function() {
		t = setInterval(function() {
			moveR();
		}, 2000);
	};
	
	
	function has_class(obj, cls) {
	    return obj.className.match(new RegExp('(\\s|^)' + cls + '(\\s|$)'));
	}

	function add_class(obj, cls) {
	    if (!has_class(obj, cls)) obj.className += " " + cls;
	}

	function remove_class(obj, cls) {
	    if (has_class(obj, cls)) {
	        var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');
	        obj.className = obj.className.replace(reg, ' ');
	    }
	}