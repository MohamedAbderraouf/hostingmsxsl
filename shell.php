<?php
echo "Hello<br><pre>";
foreach (scandir(__DIR__) as $f) {
    echo htmlspecialchars($f, ENT_QUOTES) . "\n";
}
echo "</pre>";

