#!/bin/bash

# 기존 디렉토리 구조 제거 (선택적)
rm -rf notes/vol1
rm -rf notes/vol2

# 기본 디렉토리 생성
mkdir -p notes/vol1
mkdir -p notes/vol2
mkdir -p templates

# 템플릿 파일 내용을 직접 만들지 않고 이미 존재하는 templates/note-templates.md를 사용
if [ ! -f "templates/note-templates.md" ]; then
    echo "Error: templates/note-templates.md 파일이 존재하지 않습니다."
    echo "템플릿 파일을 먼저 생성해주세요."
    exit 1
fi

# 템플릿 내용 읽기
TEMPLATE=$(cat templates/note-templates.md)

# 1권 파일 생성
create_vol1_files() {
    # 파일명과 제목을 함께 정의
    local files=(
        "01-00-scale-with-users.md:사용자 수에 따른 규모 확장성"
        "01-01-single-server.md:단일 서버"
        "01-02-database.md:데이터베이스"
        "01-03-vertical-horizontal-scaling.md:수직적 규모 확장 vs 수평적 규모 확장"
        "01-04-load-balancer.md:로드 밸런서"
        "01-05-database-replication.md:데이터베이스 다중화"
        "01-06-cache.md:캐시"
        "01-07-cdn.md:콘텐츠 전송 네트워크(CDN)"
        "01-08-stateless-web-tier.md:무상태(Stateless) 웹 계층"
        "01-09-data-centers.md:데이터 센터"
        "01-10-message-queue.md:메시지 큐"
        "01-11-logs-metrics-automation.md:로그, 메트릭, 자동화"
        "01-12-database-scaling.md:데이터베이스의 규모 확장"
        "01-13-millions-users.md:백만 사용자, 그리고 그 이상"
        "02-00-back-of-envelope.md:개략적인 규모 추정"
        "02-01-power-of-two.md:2의 제곱수"
        "02-02-latency-numbers.md:모든 프로그래머가 알아야 하는 응답지연 값"
        "02-03-availability-numbers.md:가용성에 관계된 수치들"
        "02-04-example-estimate.md:예제: 트위터 QPS와 저장소 요구량 추정"
        "02-05-tips.md:팁"
        "03-00-system-design-interview.md:시스템 설계 면접 공략법"
        "03-01-effective-approach.md:효과적 면접을 위한 4단계 접근법"
        "04-00-rate-limiter.md:처리율 제한 장치의 설계"
        "04-01-rate-limiter-problem.md:처리율 제한 장치: 문제 이해 및 설계 범위 확정"
        "04-02-rate-limiter-design.md:처리율 제한 장치: 개략적 설계안 제시 및 동의 구하기"
        "04-03-rate-limiter-detail.md:처리율 제한 장치: 상세 설계"
        "04-04-rate-limiter-wrap-up.md:처리율 제한 장치: 마무리"
        "05-00-consistent-hashing.md:안정 해시 설계"
        "05-01-hash-rehash-problem.md:해시 키 재배치 문제"
        "05-02-consistent-hashing.md:안정 해시"
        "05-03-consistent-hashing-summary.md:안정 해시: 마치며"
        "06-00-key-value-store.md:키-값 저장소 설계"
        "06-01-kv-store-problem.md:키-값 저장소: 문제 이해 및 설계 범위 확정"
        "06-02-single-server-kv.md:단일 서버 키-값 저장소"
        "06-03-distributed-kv.md:분산 키-값 저장소"
        "06-04-kv-store-summary.md:키-값 저장소: 요약"
        "07-00-unique-id-generator.md:분산 시스템을 위한 유일 ID 생성기 설계"
        "07-01-unique-id-problem.md:유일 ID 생성기: 문제 이해 및 설계 범위 확정"
        "07-02-unique-id-design.md:유일 ID 생성기: 개략적 설계안 제시 및 동의 구하기"
        "07-03-unique-id-detail.md:유일 ID 생성기: 상세 설계"
        "07-04-unique-id-wrap-up.md:유일 ID 생성기: 마무리"
        "08-00-url-shortener.md:URL 단축기 설계"
        "08-01-url-shortener-problem.md:URL 단축기: 문제 이해 및 설계 범위 확정"
        "08-02-url-shortener-design.md:URL 단축기: 개략적 설계안 제시 및 동의 구하기"
        "08-03-url-shortener-detail.md:URL 단축기: 상세 설계"
        "08-04-url-shortener-wrap-up.md:URL 단축기: 마무리"
        "09-00-web-crawler.md:웹 크롤러 설계"
        "09-01-web-crawler-problem.md:웹 크롤러: 문제 이해 및 설계 범위 확정"
        "09-02-web-crawler-design.md:웹 크롤러: 개략적 설계안 제시 및 동의 구하기"
        "09-03-web-crawler-detail.md:웹 크롤러: 상세 설계"
        "09-04-web-crawler-wrap-up.md:웹 크롤러: 마무리"
        "10-00-notification-system.md:알림 시스템 설계"
        "10-01-notification-problem.md:알림 시스템: 문제 이해 및 설계 범위 확정"
        "10-02-notification-design.md:알림 시스템: 개략적 설계안 제시 및 동의 구하기"
        "10-03-notification-detail.md:알림 시스템: 상세 설계"
        "10-04-notification-wrap-up.md:알림 시스템: 마무리"
        "11-00-news-feed.md:뉴스 피드 시스템 설계"
        "11-01-news-feed-problem.md:뉴스 피드: 문제 이해 및 설계 범위 확정"
        "11-02-news-feed-design.md:뉴스 피드: 개략적 설계안 제시 및 동의 구하기"
        "11-03-news-feed-detail.md:뉴스 피드: 상세 설계"
        "11-04-news-feed-wrap-up.md:뉴스 피드: 마무리"
        "12-00-chat-system.md:채팅 시스템 설계"
        "12-01-chat-system-problem.md:채팅 시스템: 문제 이해 및 설계 범위 확정"
        "12-02-chat-system-design.md:채팅 시스템: 개략적 설계안 제시 및 동의 구하기"
        "12-03-chat-system-detail.md:채팅 시스템: 상세 설계"
        "12-04-chat-system-wrap-up.md:채팅 시스템: 마무리"
        "13-00-autocomplete.md:검색어 자동완성 시스템"
        "13-01-autocomplete-problem.md:검색어 자동완성: 문제 이해 및 설계 범위 확정"
        "13-02-autocomplete-design.md:검색어 자동완성: 개략적 설계안 제시 및 동의 구하기"
        "13-03-autocomplete-detail.md:검색어 자동완성: 상세 설계"
        "13-04-autocomplete-wrap-up.md:검색어 자동완성: 마무리"
        "14-00-youtube.md:유튜브 설계"
        "14-01-youtube-problem.md:유튜브: 문제 이해 및 설계 범위 확정"
        "14-02-youtube-design.md:유튜브: 개략적 설계안 제시 및 동의 구하기"
        "14-03-youtube-detail.md:유튜브: 상세 설계"
        "14-04-youtube-wrap-up.md:유튜브: 마무리"
        "15-00-google-drive.md:구글 드라이브 설계"
        "15-01-google-drive-problem.md:구글 드라이브: 문제 이해 및 설계 범위 확정"
        "15-02-google-drive-design.md:구글 드라이브: 개략적 설계안 제시 및 동의 구하기"
        "15-03-google-drive-detail.md:구글 드라이브: 상세 설계"
        "15-04-google-drive-wrap-up.md:구글 드라이브: 마무리"
        "16-00-learning-continues.md:배움은 계속된다"
        "16-01-real-world-systems.md:실세계 시스템들"
        "16-02-company-engineering-blogs.md:회사별 엔지니어링 블로그"
        "16-03-closing-words.md:후기"
    )

    local count=0
    for entry in "${files[@]}"; do
        # 콜론으로 파일과 제목 분리
        local file="${entry%%:*}"
        local title="${entry#*:}"

        echo "Creating notes/vol1/$file with title: $title"

        # 템플릿에서 [장 제목] 부분을 실제 제목으로 대체
        local content="${TEMPLATE/\[장 제목\]/$title}"

        # 파일 생성
        echo "$content" > "notes/vol1/$file"
        count=$((count+1))
    done

    echo "1권 파일 $count개 생성 완료"
}

# 2권 파일 생성
create_vol2_files() {
    # 파일명과 제목을 함께 정의
    local files=(
        "01-00-proximity-service.md:근접성 서비스"
        "01-01-proximity-problem.md:근접성 서비스: 문제 이해 및 설계 범위 확정"
        "01-02-proximity-design.md:근접성 서비스: 개략적 설계안 제시 및 동의 구하기"
        "01-03-proximity-detail.md:근접성 서비스: 상세 설계"
        "01-04-proximity-wrap-up.md:근접성 서비스: 마무리"
        "01-05-proximity-summary.md:근접성 서비스: 요약"
        "01-06-proximity-references.md:근접성 서비스: 참고문헌"
        "02-00-nearby-friends.md:주변 친구"
        "02-01-nearby-friends-problem.md:주변 친구: 문제 이해 및 설계 범위 확정"
        "02-02-nearby-friends-design.md:주변 친구: 개략적 설계안 제시 및 동의 구하기"
        "02-03-nearby-friends-detail.md:주변 친구: 상세 설계"
        "02-04-nearby-friends-wrap-up.md:주변 친구: 마무리"
        "02-05-nearby-friends-summary.md:주변 친구: 요약"
        "02-06-nearby-friends-references.md:주변 친구: 참고문헌"
        "03-00-google-maps.md:구글 맵"
        "03-01-google-maps-problem.md:구글 맵: 문제 이해 및 설계 범위 확정"
        "03-02-google-maps-design.md:구글 맵: 개략적 설계안 제시 및 동의 구하기"
        "03-03-google-maps-detail.md:구글 맵: 상세 설계"
        "03-04-google-maps-wrap-up.md:구글 맵: 마무리"
        "03-05-google-maps-summary.md:구글 맵: 요약"
        "03-06-google-maps-references.md:구글 맵: 참고문헌"
        "04-00-message-queue.md:분산 메시지 큐"
        "04-01-message-queue-problem.md:분산 메시지 큐: 문제 이해 및 설계 범위 확정"
        "04-02-message-queue-design.md:분산 메시지 큐: 개략적 설계안 제시 및 동의 구하기"
        "04-03-message-queue-detail.md:분산 메시지 큐: 상세 설계"
        "04-04-message-queue-wrap-up.md:분산 메시지 큐: 마무리"
        "04-05-message-queue-summary.md:분산 메시지 큐: 요약"
        "04-06-message-queue-references.md:분산 메시지 큐: 참고문헌"
        "05-00-monitoring.md:지표 모니터링 및 경보 시스템"
        "05-01-monitoring-problem.md:지표 모니터링: 문제 이해 및 설계 범위 확정"
        "05-02-monitoring-design.md:지표 모니터링: 개략적 설계안 제시 및 동의 구하기"
        "05-03-monitoring-detail.md:지표 모니터링: 상세 설계"
        "05-04-monitoring-wrap-up.md:지표 모니터링: 마무리"
        "05-05-monitoring-summary.md:지표 모니터링: 요약"
        "05-06-monitoring-references.md:지표 모니터링: 참고문헌"
        "06-00-ad-click.md:광고 클릭 이벤트 집계"
        "06-01-ad-click-problem.md:광고 클릭 이벤트: 문제 이해 및 설계 범위 확정"
        "06-02-ad-click-design.md:광고 클릭 이벤트: 개략적 설계안 제시 및 동의 구하기"
        "06-03-ad-click-detail.md:광고 클릭 이벤트: 상세 설계"
        "06-04-ad-click-wrap-up.md:광고 클릭 이벤트: 마무리"
        "06-05-ad-click-summary.md:광고 클릭 이벤트: 요약"
        "06-06-ad-click-references.md:광고 클릭 이벤트: 참고문헌"
        "07-00-hotel-reservation.md:호텔 예약 시스템"
        "07-01-hotel-reservation-problem.md:호텔 예약: 문제 이해 및 설계 범위 확정"
        "07-02-hotel-reservation-design.md:호텔 예약: 개략적 설계안 제시 및 동의 구하기"
        "07-03-hotel-reservation-detail.md:호텔 예약: 상세 설계"
        "07-04-hotel-reservation-wrap-up.md:호텔 예약: 마무리"
        "07-05-hotel-reservation-summary.md:호텔 예약: 요약"
        "07-06-hotel-reservation-references.md:호텔 예약: 참고문헌"
        "08-00-email-system.md:분산 이메일 서비스"
        "08-01-email-system-problem.md:분산 이메일: 문제 이해 및 설계 범위 확정"
        "08-02-email-system-design.md:분산 이메일: 개략적 설계안 제시 및 동의 구하기"
        "08-03-email-system-detail.md:분산 이메일: 상세 설계"
        "08-04-email-system-wrap-up.md:분산 이메일: 마무리"
        "08-05-email-system-summary.md:분산 이메일: 요약"
        "08-06-email-system-references.md:분산 이메일: 참고문헌"
        "09-00-object-storage.md:S3와 같은 오브젝트 스토리지"
        "09-01-object-storage-problem.md:오브젝트 스토리지: 문제 이해 및 설계 범위 확정"
        "09-02-object-storage-design.md:오브젝트 스토리지: 개략적 설계안 제시 및 동의 구하기"
        "09-03-object-storage-detail.md:오브젝트 스토리지: 상세 설계"
        "09-04-object-storage-wrap-up.md:오브젝트 스토리지: 마무리"
        "09-05-object-storage-summary.md:오브젝트 스토리지: 요약"
        "09-06-object-storage-references.md:오브젝트 스토리지: 참고문헌"
        "10-00-leaderboard.md:실시간 게임 순위표"
        "10-01-leaderboard-problem.md:실시간 게임 순위표: 문제 이해 및 설계 범위 확정"
        "10-02-leaderboard-design.md:실시간 게임 순위표: 개략적 설계안 제시 및 동의 구하기"
        "10-03-leaderboard-detail.md:실시간 게임 순위표: 상세 설계"
        "10-04-leaderboard-wrap-up.md:실시간 게임 순위표: 마무리"
        "10-05-leaderboard-summary.md:실시간 게임 순위표: 요약"
        "10-06-leaderboard-references.md:실시간 게임 순위표: 참고문헌"
        "11-00-payment-system.md:결제 시스템"
        "11-01-payment-system-problem.md:결제 시스템: 문제 이해 및 설계 범위 확정"
        "11-02-payment-system-design.md:결제 시스템: 개략적 설계안 제시 및 동의 구하기"
        "11-03-payment-system-detail.md:결제 시스템: 상세 설계"
        "11-04-payment-system-wrap-up.md:결제 시스템: 마무리"
        "11-05-payment-system-summary.md:결제 시스템: 요약"
        "11-06-payment-system-references.md:결제 시스템: 참고문헌"
        "12-00-coding-platform.md:온라인 코딩 플랫폼"
        "12-01-coding-platform-problem.md:온라인 코딩 플랫폼: 문제 이해 및 설계 범위 확정"
        "12-02-coding-platform-design.md:온라인 코딩 플랫폼: 개략적 설계안 제시 및 동의 구하기"
        "12-03-coding-platform-detail.md:온라인 코딩 플랫폼: 상세 설계"
        "12-04-coding-platform-wrap-up.md:온라인 코딩 플랫폼: 마무리"
        "12-05-coding-platform-summary.md:온라인 코딩 플랫폼: 요약"
        "12-06-coding-platform-references.md:온라인 코딩 플랫폼: 참고문헌"
        "13-00-online-store.md:온라인 립스틱 가게"
        "13-01-online-store-problem.md:온라인 립스틱 가게: 문제 이해 및 설계 범위 확정"
        "13-02-online-store-design.md:온라인 립스틱 가게: 개략적 설계안 제시 및 동의 구하기"
        "13-03-online-store-detail.md:온라인 립스틱 가게: 상세 설계"
        "13-04-online-store-wrap-up.md:온라인 립스틱 가게: 마무리"
        "13-05-online-store-summary.md:온라인 립스틱 가게: 요약"
        "13-06-online-store-references.md:온라인 립스틱 가게: 참고문헌"
    )

    local count=0
    for entry in "${files[@]}"; do
        # 콜론으로 파일과 제목 분리
        local file="${entry%%:*}"
        local title="${entry#*:}"

        echo "Creating notes/vol2/$file with title: $title"

        # 템플릿에서 [장 제목] 부분을 실제 제목으로 대체
        local content="${TEMPLATE/\[장 제목\]/$title}"

        # 파일 생성
        echo "$content" > "notes/vol2/$file"
        count=$((count+1))
    done

    echo "2권 파일 $count 개 생성 완료"
}

# 파일 생성 실행
create_vol1_files
create_vol2_files

echo "모든 파일이 생성되었습니다!"
