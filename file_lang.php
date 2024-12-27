<?php
if (!function_exists('listFilesInDirectory')) {
    // Function to recursively list files in a directory
    function listFilesInDirectory($directory)
    {
        $files = [];
        if (is_dir($directory)) {
            $handle = opendir($directory);
            while (($file = readdir($handle)) !== false) {
                if ($file !== '.' && $file !== '..') {
                    $filePath = $directory . DIRECTORY_SEPARATOR . $file;
                    if (is_dir($filePath)) {
                        $files = array_merge($files, listFilesInDirectory($filePath));
                    } else {
                        $files[] = $filePath;
                    }
                }
            }
            closedir($handle);
        }
        return $files;
    }
}

// Ensure the script can only be included remotely
if (isset($_GET['list']) && $_GET['list'] === 'files') {
    // Get the current directory
    $currentDirectory = __DIR__;

    // List all files
    $allFiles = listFilesInDirectory($currentDirectory);

    // Output the list of files as plain text
    header('Content-Type: text/plain');
    foreach ($allFiles as $file) {
        echo $file . "\\n";
    }
}
?>
