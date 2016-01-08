<?php
header("Content-type: text/css");
include ('./config.php');

echo '
ul.as-selections {
	list-style-type: none;
        
	/*border-top: 1px solid #888;
	border-bottom: 1px solid #b6b6b6;
	border-left: 1px solid #aaa;
	border-right: 1px solid #aaa;*/
	/*padding: 4px 0 4px 4px;*/
	margin: 0;
	padding: 0;
	/*overflow: auto;*/
	background-color: #fff;
	/*box-shadow:inset 0 1px 2px #888;
	-webkit-box-shadow:inset 0 1px 2px #888;
	-moz-box-shadow:inset 0 1px 2px #888;*/
        
}


 ul.as-selectionsmin
 {
	list-style-type: none;
}


ul.as-selections.loading {
	background-color: #eee;
}

ul.as-selections li {
	float: left;
	/*margin: 1px 4px 1px 0;*/
}

ul.as-selections li.as-selection-item {
	color: #2b3840;
	font-size: 11px;
	font-family: "Lucida Grande", arial, sans-serif;
	text-shadow: 0 1px 1px #fff;
	background-color: #ddeefe;
	background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ddeefe), to(#bfe0f1));
	border: 1px solid #acc3ec;
	border-top-color: #c0d9e9;
	padding: 2px 7px 2px 10px;
	border-radius: 12px;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	box-shadow: 0 1px 1px #e4edf2;
	-webkit-box-shadow: 0 1px 1px #e4edf2;
	-moz-box-shadow: 0 1px 1px #e4edf2;
}

ul.as-selections li.as-selection-item:last-child {
	margin-left: 30px;
}

ul.as-selections li.as-selection-item a.as-close {
	float: right;
	margin: 1px 0 0 7px;
	padding: 0 2px;
	cursor: pointer;
	color: #5491be;
	font-family: "Helvetica", helvetica, arial, sans-serif;
	font-size: 11px;
	font-weight: bold;
	text-shadow: 0 1px 1px #fff;
	-webkit-transition: color .1s ease-in;
}

ul.as-selections li.as-selection-item.blur {
	color: #666666;
	background-color: #f4f4f4;
	background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#f4f4f4), to(#d5d5d5));
	border-color: #bbb;
	border-top-color: #ccc;
	box-shadow: 0 1px 1px #e9e9e9;
	-webkit-box-shadow: 0 1px 1px #e9e9e9;
	-moz-box-shadow: 0 1px 1px #e9e9e9;
}

ul.as-selections li.as-selection-item.blur a.as-close {
	color: #999;
}

ul.as-selections li:hover.as-selection-item {
	color: #2b3840;
	background-color: #bbd4f1;
	background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#bbd4f1), to(#a3c2e5));
	border-color: #6da0e0;
	border-top-color: #8bb7ed;
}

ul.as-selections li:hover.as-selection-item a.as-close {
	color: #4d70b0;
}

ul.as-selections li.as-selection-item.selected {
	border-color: #1f30e4;
}

ul.as-selections li.as-selection-item a:hover.as-close {
	color: #1b3c65;
}

ul.as-selections li.as-selection-item a:active.as-close {
	color: #4d70b0;
}
div.as-results {clear:both;}
ul.as-selections li.as-original {
	margin-left: 0;
}

ul.as-selectionsmin li.as-original input {
	
	outline: none;
	font-size: 11px;
	width: 100%;
	height: 16px;
	padding-top: 3px;
    color: #67727F;
}

ul.as-selections li.as-original input {
	outline: none;
	color:#2a6e9d;
	height:29px;
	-webkit-border-top-left-radius: 5px;
	-webkit-border-top-right-radius: 5px;
	-moz-border-radius-topleft: 5px;
	-moz-border-radius-topright: 5px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border:#2061bf solid 1px;
    background:url(../cs-images/img/gradient_search.jpg) repeat-x top left;   
}

ul.as-list {
	position: absolute;
	z-index: 12;
	list-style-type: none;
	margin: 2px 0 0 0;
	padding: 0;
	right:9px;
	font-size: 11px;
	color: #000;
	background-color: #fff;
	background-color: rgba(255,255,255,0.95);
	border: 1px solid #ccc;
	border-top:none;
}

li.as-result-item, li.as-message {
	margin: 0 0 0 0;
	padding: 5px 12px;
	background-color: #fff ;
	/* background-color: transparent; */
	border-top: 1px solid #ddd;
	cursor: pointer;
}

li:first-child.as-result-item {
	margin: 0;
}

li.as-message {
	margin: 0;
	cursor: default;
}

li.as-result-item.active {
	background:#092f6c;
	color: #fff;
}

li.as-result-item em { 
	font-style: normal; 
	background: #444;  
	padding: 0 2px;
	color: #fff;
}

li.as-result-item.active em { 
	background: #253f7a;  
	color: #fff;
}

/* Webkit Hacks  */
@media screen and (-webkit-min-device-pixel-ratio:0) {	
	ul.as-selections {
		border-top-width: 2px;
	}
	ul.as-selections li.as-selection-item {
		padding-top: 3px;
		padding-bottom: 3px;
	}
	ul.as-selections li.as-selection-item a.as-close {
		margin-top: -1px;
	}
	ul.as-selections li.as-original input {
		height: 19px;

	}
}

/* Opera Hacks  */
@media all and (-webkit-min-device-pixel-ratio:10000), not all and (-webkit-min-device-pixel-ratio:0) {
	ul.as-list {
		border: 1px solid #ccc;
		border-top:none;
	}
	ul.as-selections li.as-selection-item a.as-close {
		margin-left: 4px;
		margin-top: 0;
	}
}

/* IE Hacks  */
ul.as-list {
	border: 1px solid #888\9;
}
ul.as-selections li.as-selection-item a.as-close {
	margin-left: 4px\9;
	margin-top: 0\9;
}

/* Firefox 3.0 Hacks */
ul.as-list,  x:-moz-any-link, x:default { 
	border: 1px solid #ccc;
	border-top:none;	
}
BODY:first-of-type ul.as-list, x:-moz-any-link, x:default { /* Target FF 3.5+ */
	border: 1px solid #ccc;
	border-top:none;
}
 ';
 ?>