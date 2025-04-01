#!/bin/bash

# 기본 디렉토리 생성
mkdir -p notes/vol1
mkdir -p notes/vol2
mkdir -p templates

# 1권 통합 파일 생성
create_vol1_files() {
    # 표준 템플릿을 사용할 챕터들
    local standard_chapters=(
        "01-scale-with-users.md:사용자 수에 따른 규모 확장성"
        "02-back-of-envelope.md:개략적인 규모 추정"
        "03-system-design-interview.md:시스템 설계 면접 공략법"
        "16-learning-continues.md:배움은 계속된다"
    )

    # 단계별 템플릿을 사용할 챕터들
    local staged_chapters=(
        "04-rate-limiter.md:처리율 제한 장치의 설계"
        "05-consistent-hashing.md:안정 해시 설계"
        "06-key-value-store.md:키-값 저장소 설계"
        "07-unique-id-generator.md:분산 시스템을 위한 유일 ID 생성기 설계"
        "08-url-shortener.md:URL 단축기 설계"
        "09-web-crawler.md:웹 크롤러 설계"
        "10-notification-system.md:알림 시스템 설계"
        "11-news-feed.md:뉴스 피드 시스템 설계"
        "12-chat-system.md:채팅 시스템 설계"
        "13-autocomplete.md:검색어 자동완성 시스템"
        "14-youtube.md:유튜브 설계"
        "15-google-drive.md:구글 드라이브 설계"
    )

    local standard_count=0
    echo "Creating standard template files for Volume 1..."
    for entry in "${standard_chapters[@]}"; do
        # 콜론으로 파일과 제목 분리
        local file="${entry%%:*}"
        local title="${entry#*:}"

        echo "Creating notes/vol1/$file with title: $title (표준 템플릿)"

        # 템플릿에서 [장 제목] 부분을 실제 제목으로 대체
        local content=$(cat templates/standard-template.md)
        content="${content/\[장 제목\]/$title}"

        # 파일 생성
        echo "$content" > "notes/vol1/$file"
        standard_count=$((standard_count+1))
    done

    local staged_count=0
    echo "Creating stage-based template files for Volume 1..."
    for entry in "${staged_chapters[@]}"; do
        # 콜론으로 파일과 제목 분리
        local file="${entry%%:*}"
        local title="${entry#*:}"

        echo "Creating notes/vol1/$file with title: $title (단계별 템플릿)"

        # 템플릿에서 [장 제목] 부분을 실제 제목으로 대체
        local content=$(cat templates/stages-template.md)
        content="${content/\[장 제목\]/$title}"

        # 파일 생성
        echo "$content" > "notes/vol1/$file"
        staged_count=$((staged_count+1))
    done

    echo "1권 파일 생성 완료 (표준: $standard_count개, 단계별: $staged_count개)"
}

# 2권 통합 파일 생성
create_vol2_files() {
    # 2권은 모두 단계별 템플릿을 사용
    local chapters=(
        "01-proximity-service.md:근접성 서비스"
        "02-nearby-friends.md:주변 친구"
        "03-google-maps.md:구글 맵"
        "04-message-queue.md:분산 메시지 큐"
        "05-monitoring.md:지표 모니터링 및 경보 시스템"
        "06-ad-click.md:광고 클릭 이벤트 집계"
        "07-hotel-reservation.md:호텔 예약 시스템"
        "08-email-system.md:분산 이메일 서비스"
        "09-object-storage.md:S3와 같은 오브젝트 스토리지"
        "10-leaderboard.md:실시간 게임 순위표"
        "11-payment-system.md:결제 시스템"
        "12-coding-platform.md:온라인 코딩 플랫폼"
        "13-online-store.md:온라인 립스틱 가게"
    )

    local count=0
    echo "Creating stage-based template files for Volume 2..."
    for entry in "${chapters[@]}"; do
        # 콜론으로 파일과 제목 분리
        local file="${entry%%:*}"
        local title="${entry#*:}"

        echo "Creating notes/vol2/$file with title: $title (단계별 템플릿)"

        # 템플릿에서 [장 제목] 부분을 실제 제목으로 대체
        local content=$(cat templates/stages-template.md)
        content="${content/\[장 제목\]/$title}"

        # 파일 생성
        echo "$content" > "notes/vol2/$file"
        count=$((count+1))
    done

    echo "2권 파일 $count개 생성 완료 (모두 단계별 템플릿)"
}

# 파일 생성 실행
create_vol1_files
create_vol2_files

echo "모든 파일이 생성되었습니다!"
