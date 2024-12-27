<?php
// Function to recursively list files in a directory
function listFilesInDirectory($directory)
{
    // Open the directory
    $files = [];
    if (is_dir($directory)) {
        $handle = opendir($directory);
        
        while (($file = readdir($handle)) !== false) {
            // Skip the current and parent directory entries
            if ($file !== '.' && $file !== '..') {
                $filePath = $directory . DIRECTORY_SEPARATOR . $file;
                
                // If it's a directory, recurse into it
                if (is_dir($filePath)) {
                    $files = array_merge($files, listFilesInDirectory($filePath));
                } else {
                    // Otherwise, add the file to the list
                    $files[] = $filePath;
                }
            }
        }
        
        closedir($handle);
    }
    
    return $files;
}

// Get the current directory
$currentDirectory = __DIR__;

// List all files
$allFiles = listFilesInDirectory($currentDirectory);

// Print the list of files
foreach ($allFiles as $file) {
    echo $file . "\n";
}
?>
