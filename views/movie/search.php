<?php
    $str = '<div class="container"><ul>';
    foreach ($result as $k=>$v){
        $str .= "<li style='list-style:none;box-shadow:0 0 3px gray;'><img src='{$v['img']}' style='vertical-align:middle;'><a href='{$v['href']}' style='margin:0 12px;text-decoration:none;'>{$v['name']}</a><span style='margin:0 12px;'>别名:&nbsp;&nbsp;{$v['other']}</span>";
        $str .= "<span style='margin:0 8px;'>评分：&nbsp;&nbsp;<em style='color:red;font-weight:bold;'>{$v['score']}</em>&nbsp;&nbsp;分</span><span>评价人数：&nbsp;&nbsp;<i style='color:red;font-weight:bold;'>{$v['num']}</i>&nbsp;&nbsp;人</span></li>";
    }
    echo $str;

?>