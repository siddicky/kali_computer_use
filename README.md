# kali computer use

![](https://github.com/yone456/kali_computer_use/blob/main/kali_log2.png)

## Usage

```
git clone https://github.com/yone456/kali_computer_use.git
cd kali_computer_use/computer-use-demo/
docker build -t kali:latest --no-cache .
docker run -e ANTHROPIC_API_KEY=%ANTHROPIC_API_KEY% -v %USERPROFILE%\.anthropic:/home/computeruse/.anthropic -p 5900:5900 -p 8501:8501 -p 6080:6080 -p 8080:8080 -it kali:latest
```
