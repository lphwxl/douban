<?php 
   namespace app\controllers;
   use yii\web\Controller;
   use Yii;
   use app\models\Film;
   class MovieController extends Controller{
       //获取电影页面全部的数据
       public function getUrlContent(){
           return file_get_contents('https://movie.douban.com/top250');
       }
       
       //内容匹配
       public function actionGetdata(){
           $data = array();
           $content = $this->getUrlContent();
          // echo $content;
           //截取部分内容
           $start = strpos($content, '<ol class="grid_view">');
           $end = strpos($content, '</ol>',$start);
           $content = substr($content, $start,$end);
           
           //<a href="https://movie.douban.com/subject/1292052/">
            // <img alt="肖申克的救赎" src="https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p480747492.jpg" class="">
              //</a>
            // <a href="(.*)"><img alt=(?:.*) src="(.*)" class=""></a>
           /* 
            * <div class="star">
                                <span class="rating5-t"></span>
                                <span class="rating_num" property="v:average">9.6</span>
                                <span property="v:best" content="10.0"></span>
                                <span>810462人评价</span>
                        </div>
            *  */
           $img = '/<img alt="(?:.*)" src="(.*)" class="">/';
           $detail = '/<a href="(.*)">\s+<img alt="(?:.*)" src="(.*)" class="">\s+<\/a>/';
           preg_match_all($detail, $content,$arr);
           $data['href'] = $arr[1];
           $data['img'] = $arr[2];
           //获取电影名
           $regName = '/<span class="title">([^&nbsp]*)<\/span>/';
           preg_match_all($regName, $content,$movieName);
           $data['name'] = $movieName[1];
           //电影别名
           $asName = '/<span class="other">&nbsp;\/&nbsp;(.*)<\/span>/';
           preg_match_all($asName, $content,$nameOther);
           $data['nameOther'] = $nameOther[1];
           $score = '/<span class="rating_num" property="v:average">(.*)<\/span>\s+.+\s+<span>([0-9]+)人评价<\/span>/U';
           preg_match_all($score, $content,$score);
           $data['score'] = $score[1];
           $data['num'] = $score[2];
           $resset = array();
          foreach($data['name'] as $k=>$v){
              $film = new Film();
              $film->name = $v;
              $film->img = $data['img'][$k];
              $film->href = $data['href'][$k];
              $film->other = $data['nameOther'][$k];
              $film->score = $data['score'][$k];
              $film->num = $data['num'][$k];
              $film->save();
          }
       }
       public function actionSearch(){
           
   }

?>