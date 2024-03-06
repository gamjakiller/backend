# Node.js 이미지를 기반으로 설정
FROM node:14

# 앱 디렉토리 생성
WORKDIR /usr/src/app

# 앱 의존성 설치 (package.json 및 package-lock.json을 이용)
COPY package*.json ./

RUN npm install

# 앱 소스 추가
COPY . .

# 앱이 연결을 수신할 포트 설정
EXPOSE 8080

# 앱 실행
CMD [ "node", "index.js" ]