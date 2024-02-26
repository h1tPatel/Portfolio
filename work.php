<?php
include('adduser.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Work</title>
    <link rel="stylesheet" href="./css/grid.css">
    <link rel="stylesheet" href="./css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.plyr.io/3.7.8/plyr.css">

</head>

<body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/TextPlugin.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script>
    <header>
        <nav>
            <div class="left">Hit's Portfolio</div>
            <div class="right">
                <div class="hamburger" onclick="toggleMenu()">
                    &#9776;
                </div>
                <ul class="menu">
                    <li><a href="index.html" class="hvr-underline-from-left">Home</a></li>
                    <li><a href="about.html" class="hvr-underline-from-left">About</a></li>
                    <li><a href="work.php" class="hvr-underline-from-left">Work</a></li>
                    <li><a href="blog.html" class="hvr-underline-from-left">Blog</a></li>
                    <li><a href="contact.php" class="hvr-underline-from-left">Contact Me</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="grid-con">
        <h1 class="l-col-start-6 l-col-end-9 m-col-start-6 m-col-end-9 col-span-full work-title">My Work</h1>
        <h4 class="l-col-start-4 l-col-end-10 m-col-start-5 m-col-end-10 col-span-full s-line-p">Here are some of my best projects which I've worked on!</h4>
    </div>
    <div class="grid-con blog-content workpage-animation">
    <?php $count = 0; ?>
    <?php foreach ($projects as $project) : ?>
        <?php
        $projectLink = ($project['id'] == 4) ? 'casestudy.html' : '#' . $project['popup_id'];
        ?>
        <div class="col-span-full m-col-span-6 l-col-span-6">
            <a href="<?php echo ($projectLink); ?>">
                <img src="<?php echo ($project['image_path']); ?>" alt="<?php echo ($project['title']); ?>" class="animated-img">
            </a>
        </div>
        <?php $count++; ?>

        <?php if ($count % 2 == 0) : ?>
            </div><div class="grid-con blog-content workpage-animation">
        <?php endif; ?>
    <?php endforeach; ?>
</div>

<?php foreach ($projects as $project) : ?>
    <div class="popup" id="<?php echo ($project['popup_id']); ?>">
        <div class="popup-content">
            <a href="#" class="close-btn">&times;</a>
            <h2>Project Information for <?php echo ($project['title']); ?></h2>
            <br>
            <div class="image-container">
                <img src="<?php echo ($project['image_path']); ?>" alt="Project Image">
            </div>
            <p><?php echo ($project['description']); ?></p>
        </div>
    </div>
<?php endforeach; ?>


    <br>
    <br>
    <div class="grid-con">
        <p class="l-col-span-full m-col-span-full col-span-full"> I regularly post my blogs on <a href="www.blozoid.com">Blog Zoid</a>. please visit website to read more.</p>
    </div>
    <br>
    <br>

    <div class="grid-con">
        <section class="col-span-full" id="player-container">
            <video controls poster="images/placeholder.png">
                <source src="video/video.mp4" type="video/mp4">
                <source src="video/video.webm" type="video/webm">
            </video>
        </section>
    </div>
    <footer class="footer-all">
        <div class="footer">
            <div class="footer-first">
                <h3>Hit's Developer Portfolio</h3>
            </div>
            <div class="footer-second">
                <ul>
                    <li><a href="./index.html">Home</a></li>
                    <li><a href="./about.html">About</a></li>
                    <li><a href="./contact.php">Contact</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-social">
            <a href="" target="_blank"><img src="./images/twitter.png" alt="twitter"></a>
            <a href="" target="_blank"><img src="./images/instagram.png" alt="instagram"></a>
            <a href="" target="_blank"><img src="./images/facebook.png" alt="facebook"></a>
        </div>
        <div class="footer-rights">
            Copyright &#169; hitpatelportfolio.com | All rights reserved.
        </div>
    </footer>
    <script src="./js/main.js"></script>
</body>
</html>