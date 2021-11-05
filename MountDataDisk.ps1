Get-Disk | Where partitionstyle -eq 'raw' | Initialize-Disk -PartitionStyle GPT -PassThru | '
New-Partition -AssignDriveLetter -UseMaximumSize | '
Format-Volume -FileSystem NTFS -NewFileSystemLabel "datadisk" -Confirm:$false