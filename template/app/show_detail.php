<html>

</html>
<?php
require_once(BASE_PATH . '/template/app/layouts/header.php');
require_once "vendor/autoload.php";

use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\Writer\HTML;


?>
<style>
    .phongto {
        width: 40px;
        height: 40px;
    }

    .icon-phongto {
        display: inline-block;
        width: 100%;
        height: 100%;
        background-image: url(//ssl.gstatic.com/docs/common/viewer/v3/v-sprite50.svg) !important;
        background-size: cover;
    }

    .ctgt {
        width: 100%;
        height: 35vh;
    }

    @media screen and (min-width: 768px) {
        .ctgt {
            width: 100%;
            height: 650px;
        }

    }


</style>
<div class="body_getdata" style="display: flex; margin-top: 30px; margin-right: 32px">

    <?php require_once(BASE_PATH . '/template/app/layouts/menuleft.php') ?>


    <div style="width: 62%; margin: 0; padding: 1vh 3vw 1vh 2.3vw; box-sizing: border-box; ">
        <div style="display: flex; flex-direction: column; align-items: center;">
            <div class="suanh2" style="position: relative;  background-color: #fffff;">
                <div class="phongto" style="position: absolute; top: 0; right: 0;">
                </div>
                <?php if (empty($file) || !file_exists($file['file'])): ?>
                    <p style="text-align: center; justify-content: center">Không có bài viết để hiển thị</p>
                <?php else : ?>

                    <?php

                    $extension = pathinfo($file['file'], PATHINFO_EXTENSION);
                    $src = '';
                    if ($extension === 'docx') {
                        $inputFile = BASE_PATH . '/public/upload/' . basename($file['file']);

                        if (file_exists($inputFile)) {
                            require_once 'vendor/autoload.php';

                            $phpWord = IOFactory::load($inputFile);
                            $htmlWriter = new HTML($phpWord);
                            $outputFile = BASE_PATH . '/template/app/show-thong-bao-word.php';
                            
                            $css = '<style>
                                     body {
                                       background-color: #ffffff;
                                     }
                                    </style>';

                            $htmlWriter->save($outputFile);

                            $htmlContent = file_get_contents($outputFile);

                            $htmlContent = str_replace('</head>', $css . '</head>', $htmlContent);

                            file_put_contents($outputFile, $htmlContent);

                            require_once 'show-thong-bao-word.php';
                        } else {
                            echo "Không tìm thấy tệp .docx";
                        }
                    }
                    
                    else if ($extension === 'pdf'){

                        $src = url($file['file']);
                        ?>
                        <iframe src="<?=url($file['file'])?>"></iframe>
                            <?php
                    }
                    else {
                        foreach ($result_image as $item):
                            ?>
                            <div style="width: 80%;border: 1px solid #D1D1D1; justify-content: center; margin-bottom: 70px;">
                                <img class="ctgt" src="<?= url($item['image']) ?> " alt="">
                            </div>
                        <?php endforeach; ?>
                    <?php } ?>
                <?php endif; ?>


<!--                <div style="position: relative; width: 80%; height: 650px; background-color: #D1D1D1;">-->
<!--                    <div class="phongto" style="position: absolute; top: 0; right: 0;">-->
<!--                    </div>-->
<!--                </div>-->
<!--                <p style="font-size: 15px;" class="embed_download"><a href="-->
<!--                --><?php //= url($file['file']) ?><!--" download="">Download File </a>-->
<!--                </p>-->
            </div>

        </div>
    </div>


    <?php require_once(BASE_PATH . '/template/app/layouts/banner-right.php') ?>

</div>


<?php
require_once(BASE_PATH . '/template/app/layouts/footer.php');
?>