# install-packages-on-efs

- install_packages.sh
  - Lambda Function 에 필요한 packages 들을 EFS 에 설치하는 쉘스크립트

- 사전 진행 순서
  - Lambda 에서 EFS 로의 접근을 허용하기 위한 보안 그룹 생성
    - EC2 보안그룹 인바운드 추가 [사용자 지정 TCP, 2049, 위치 무관]   
  - AWS Console 에서 EFS 및 액세스 포인트 생성
  - EC2 접속 후, EFS 마운트를 위한 패키지 설치
  - EC2 에 EFS 마운트를 진행할 디렉토리 생성 후, 마운트 진행
  - 마운트 디렉토리에 패키지 설치
    - **이때, install_packages.sh 쉘스크립트 실행**
  - 필요 시, 마운트 디렉토리에 모델 저장

