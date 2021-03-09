binPath=$PWD+"/main"

if [ -x "$binPath" ]; then
    rm main
fi
go build -o main
pm2 start pm2.json
pm2 list
