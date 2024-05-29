<!DOCTYPE html>
<html>
    <head>
        <title>Burger Code</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="../css/style.css">
    </head>

    <body>
    <h1 class="text-logo"><span class="glyphicon glyphicon-cutlery"></span>Burger Code<span class="glyphicon glyphicon-cutlery"></span></h1>
    <div class="container admin">
        <div class="row">
            <h1><strong>Liste des items</strong><a href="insert.php" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-plus"></span>ajouter</a>   </h1>
            <table class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>
                        nom
                    </th>
                    <th>
                        description
                    </th>
                    <th>
                        prix
                    </th>
                    <th>
                        categorie
                    </th>
                    <th>
                        action
                    </th>
                </tr>
                </thead>
                <tbody>
                    <?php
                        require 'database.php';
                        $db = Database::connect();
                        $statement = $db->query('select item.id,item.name,item.price,item.description,categorie.name as category 
                                                from item inner join categorie on item.category = categorie.id
                                                order by item.id desc');
                        while($item = $statement->fetch()){
                            echo '<tr>';
                            echo '<td>'.$item['name'].'</td>';
                            echo '<td>'.$item['description'].'</td>';
                            echo '<td>'.$item['price'].'</td>';
                            echo '<td>'.$item['category'].'</td>';
                            echo '<td width=300>';
                            echo '<a class="btn btn-default" href="view.php?id='.$item['id'].'"><span class="glyphicon glyphicon-eye-open"></span>voir</a>';
                            echo '  ';
                            echo '<a class="btn btn-primary" href="update.php?id='.$item['id'].'"><span class="glyphicon glyphicon-pencil"></span>modifier</a>';
                            echo '  ';
                            echo '<a class="btn btn-danger" href="delete.php?id='.$item['id'].'"><span class="glyphicon glyphicon-remove"></span>supprimer</a>';
                            echo '</td>';
                            echo '</tr>';                        
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    </body>
</html>