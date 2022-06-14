if exist node_modules rmdir /s /q node_modules
if exist buildOLD rmdir /s /q buildOLD
if exist build ren build buildOLD
if exist package.json ren package.json packageOLD.json
7z e *.tar.gz -y
7z x *.tar -y
npm i --omit=dev 