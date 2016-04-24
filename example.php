<!DOCTYPE HTML>
<html>
<head> 
    <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
	<title>Apriori Alghoritm</title>
</head>
<body style="font-family: monospace;">
<pre>
<?php   
include 'Apriori.php';

$Apriori = new Apriori();

$Apriori->setMaxScan(3);
$Apriori->setMinSup(2);
$Apriori->setMinConf(70);
$Apriori->setDelimiter(',');


$Apriori->process('fichier.txt');

//Frequent Itemsets
echo '<h1>Frequent Itemsets</h1>';
$Apriori->printFreqItemsets();

echo '<h3>Frequent Itemsets Array</h3>';
print_r($Apriori->getFreqItemsets()); 

//Association Rules
echo '<h1>Association Rules</h1>';
$Apriori->printAssociationRules();

echo '<h3>Association Rules Array</h3>';
print_r($Apriori->getAssociationRules()); 

//Sauvegarde dans les fichiers
$Apriori->saveFreqItemsets('freqItemsets.txt');
$Apriori->saveAssociationRules('associationRules.txt');
?>
</pre>
</body>
</html>
