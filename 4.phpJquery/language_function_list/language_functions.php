<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style type="text/css">
        body {
            font-family: "Trebuchet MS", Verdana, Arial;
            width: 600px;
        }

        div {
            background-color: #F5F5DC;
        }
    </style>
    <script src="../../jquery.min.js"></script>
    <script type="text/javascript">
$(document).ready(function(){
    $('#selectLanguage').change(function(){
        if($(this).val() == '') return;
    $.get(
    'results.php',
    { id: $(this).val() },
    function(data){
        $('#result').html(data);
    }
    );
});
});
</script>
</head>

<body>
    <?php
    $mysqli = new mysqli('localhost', 'root', 'mysql', 'phpjquery');
    if (mysqli_connect_errno()) {
        die('Unable to connect!');
    } else {
        $query = 'SELECT * FROM language';
        if ($result = $mysqli->query($query)) {
            if ($result->num_rows > 0) {
    ?>
                <p>
                    Select a language
                    <select id="selectLanguage">
                        <option value="" disabled selected>select</option>
                        <?php
                        while ($row = $result->fetch_assoc()) {
                        ?>
                            <option value="<?php echo $row['id']; ?>"><?php echo $row['languageName']; ?></option>
                        <?php
                        }
                        ?>
                    </select>
                </p>
                <p id="result"></p>
    <?php
            } else {
                echo 'No records found!';
            }
            $result->close();
        } else {
            echo 'Error in query: $query. ' . $mysqli->error;
        }
    }
    $mysqli->close();
    ?>

</body>

</html>