# kali computer use

![](https://github.com/yone456/kali_computer_use/blob/main/kali_log2.png)

## セットアップ（30分程かかります）

```
git clone https://github.com/yone456/kali_computer_use.git
cd kali_computer_use/computer-use-demo/
docker build -t kali:latest --no-cache .
set ANTHROPIC_API_KEY=%your_api_key%
docker run -e ANTHROPIC_API_KEY=%ANTHROPIC_API_KEY% -v %USERPROFILE%\.anthropic:/home/computeruse/.anthropic -p 5900:5900 -p 8501:8501 -p 6080:6080 -p 8080:8080 -it kali:latest
```

## dockerコンテナのシェルが起動後
```
dos2unix *.sh（ホストOSがwindowsの場合）
./entrypoint.sh
```

## 注意
windowsのみでしか検証を行っていません。
