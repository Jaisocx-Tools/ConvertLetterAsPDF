<?php 
require_once($_SERVER['DOCUMENT_ROOT'] . "/php/work-experience-item.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/php/db.php");

$db = new Database();

// Get connection
$pdo = $db->getConnection();
if (!$pdo) {
    throw new Exception("Did not connect to DB");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Elias Polianskyi's CV</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/icons.css">
</head>
<body>
    <header class="header1">
        <div class="img">
        <!--<img src="images/Photo.jpg">-->
        <img src="images/EliasWhiteTShirt.jpg">
        </div>
        <div class="name">
            <h1>Elias Polianskyi</h1>
            <h2>Fullstack Web Developer</h2>
            <span class="smll">Page 1 of 3</span>
        </div>
    </header>
    <main class="main">
        <?php
            include($_SERVER['DOCUMENT_ROOT'] . '/php/sidebar.php');
        ?>
        <div class="col col-right">
            <section>
                <head>
                    <h3>work experience</h3>
                </head>
                <content>
<?php
$db->echoCVExperienceItem('job', 1);
?>
                </content>
            </section>
        </div>
    </main>

    <div class="page">
        <header class="header2">
            <div class="name">
                <h2>Elias Polianskyi</h2>
                <h2 class="sml">Fullstack Web Developer</h2>
            </div>
            <h2 class="smll">Page 2 of 3</h2>
        </header>
        <main class="main">
            <?php
                include($_SERVER['DOCUMENT_ROOT'] . '/php/sidebar.php');
            ?>
            <div class="col col-right">
            <section>
                    <head>
                        <h3>work experience</h3>
                    </head>
                    <content>
    <?php
    $db->echoCVExperienceItem('job', 2);
    ?>
                    </content>
                </section>
            </div>
        </main>
    </div>

    <div class="page">
        <header class="header2">
            <div class="name">
                <h2>Elias Polianskyi</h2>
                <h2 class="sml">Fullstack Web Developer</h2>
            </div>
            <h2 class="smll">Page 3 of 3</h2>
        </header>
        <main class="main">
            <?php
                include($_SERVER['DOCUMENT_ROOT'] . '/php/sidebar.php');
            ?>
            <div class="col col-right">
            <section>
                    <head>
                        <h3>Trainings, Courses</h3>
                    </head>
                    <content>
    <?php
    $db->echoCVExperienceItem('course', 3);
    ?>
                    </content>
                </section>
                <section>
                    <head>
                        <h3>Study</h3>
                    </head>
                    <content>
    <?php
    $db->echoCVExperienceItem('studies', 3);
    ?>
                    </content>
                </section>
            </div>
        </main>    
    </div>

<?php
// Close recordset and connection
    $db->close();
?>    
</body>
</html>
