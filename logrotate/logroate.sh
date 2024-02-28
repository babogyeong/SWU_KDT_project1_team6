</path/my/logs> {
       # 한달에 한번씩 로그를 회전합니다
    monthly
    
    # 로그 파일 크기가 0인 경우에도 로그를 회전합니다
    size 0
    
    # 새로운 로그 파일을 생성합니다
    create
    
    # 로그 파일 이름에 날짜를 추가합니다
    dateext
    
    # 날짜 형식: -년월일
    dateformat -%Y%m%d
    
    # 로그를 압축합니다
    compress
    
    # 이전 로그 파일을 압축하기 전에 대기합니다
    delaycompress
    
    # 로그 파일이 없어도 오류를 표시하지 않습니다
    missingok
    
    # 로그 파일이 비어 있으면 알립니다
    notifempty
    
    # 로그 파일을 복사하고 파일 포인터를 잘라냅니다
    copytruncate
    
    # 로그를 회전한 후 실행할 스크립트
    postrotate
        # 이전 로그 파일 중 하위 절반을 삭제합니다
        half=$(($(ls -1q /path/to/mylog* | wc -l) / 2))
        if [ $half -gt 0 ]; then
            ls -1tr /path/to/mylog* | head -n $half | xargs -r rm --
        fi
    endscript

}
