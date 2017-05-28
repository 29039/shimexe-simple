# Note: This fill should only be included after core.ps1 and install.ps1
#       It will overwrite some global variables and functions to make
#       them unix compatible.

if(!(is_unix)) {
    return # get the hell outta here
}

# core.ps1
$scoopdir = $env:SCOOP, (Join-Path $env:HOME "scoop") | select -first 1
$globaldir = $env:SCOOP_GLOBAL, "/usr/local/scoop" | select -first 1
$cachedir = $env:SCOOP_CACHE, (Join-Path $scoopdir "cache") | select -first 1
$env:TEMP = "/tmp"

# core.ps1
function ensure($dir) {
    mkdir -p $dir > $null
    return resolve-path $dir
}

# install.ps1
function compute_hash($file, $algname) {
    if(is_mac) {
        switch ($algname)
        {
            "md5" { $result = (md5 -q $file) }
            "sha1" { $result = (shasum -ba 1 $file) }
            "sha256" { $result = (shasum -ba 256 $file) }
            "sha512" { $result = (shasum -ba 512 $file) }
            default { $result = (shasum -ba 256 $file) }
        }
    } else {
        switch ($algname)
        {
            "md5" { $result = (md5sum -b $file) }
            "sha1" { $result = (sha1sum -b $file) }
            "sha256" { $result = (sha256sum -b $file) }
            "sha512" { $result = (sha512sum -b $file) }
            default { $result = (sha256sum -b $file) }
        }
    }
    return $result.split(' ') | select -first 1
}
