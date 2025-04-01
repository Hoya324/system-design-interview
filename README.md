# 가상 면접 사례로 배우는 대규모 시스템 설계 기초

이 저장소는 "가상 면접 사례로 배우는 대규모 시스템 설계 기초" 책(1권과 2권)의 내용을 학습하고 정리한 내용을 담고 있습니다. 시스템 설계 면접을 준비하거나, 실제 업무에서 대규모 시스템을 설계할 때 참고할 수
있도록 각 챕터별 핵심 내용을 정리했습니다.

## 📚 목차

- [📚 1권 목차](#-1권)
- [📚 2권 목차](#-2권)
- [📋 노트 작성 방법](#-노트-작성-방법)
- [🔍 빠른 찾기](#-빠른-찾기)
    - [아키텍처 패턴](#아키텍처-패턴)
    - [시스템 특성](#시스템-특성)
    - [시스템 컴포넌트](#시스템-컴포넌트)
    - [데이터베이스 관련](#데이터베이스-관련)
    - [분산 시스템 개념](#분산-시스템-개념)
    - [특정 시스템 디자인](#특정-시스템-디자인)
    - [성능 최적화](#성능-최적화)
- [📝 학습 진행 상황](#-학습-진행-상황)

## 📚 Vol 1 (1권)

### 1장. 사용자 수에 따른 규모 확장성

- [사용자 수에 따른 규모 확장성](./notes/vol1/01-00-scale-with-users.md)
- [단일 서버](./notes/vol1/01-01-single-server.md)
- [데이터베이스](./notes/vol1/01-02-database.md)
- [수직적 규모 확장 vs 수평적 규모 확장](./notes/vol1/01-03-vertical-horizontal-scaling.md)

## 1권

### 1장. 사용자 수에 따른 규모 확장성

- [사용자 수에 따른 규모 확장성](./notes/vol1/01-00-scale-with-users.md)
- [단일 서버](./notes/vol1/01-01-single-server.md)
- [데이터베이스](./notes/vol1/01-02-database.md)
- [수직적 규모 확장 vs 수평적 규모 확장](./notes/vol1/01-03-vertical-horizontal-scaling.md)
- [로드 밸런서](./notes/vol1/01-04-load-balancer.md)
- [데이터베이스 다중화](./notes/vol1/01-05-database-replication.md)
- [캐시](./notes/vol1/01-06-cache.md)
- [콘텐츠 전송 네트워크(CDN)](./notes/vol1/01-07-cdn.md)
- [무상태(stateless) 웹 계층](./notes/vol1/01-08-stateless-web-tier.md)
- [데이터 센터](./notes/vol1/01-09-data-centers.md)
- [메시지 큐](./notes/vol1/01-10-message-queue.md)
- [로그, 메트릭 그리고 자동화](./notes/vol1/01-11-logs-metrics-automation.md)
- [데이터베이스의 규모 확장](./notes/vol1/01-12-database-scaling.md)
- [백만 사용자, 그리고 그 이상](./notes/vol1/01-13-millions-users.md)

### 2장. 개략적인 규모 추정

- [개략적인 규모 추정](./notes/vol1/02-00-back-of-envelope.md)
- [2의 제곱수](./notes/vol1/02-01-power-of-two.md)
- [모든 프로그래머가 알아야 하는 응답지연 값](./notes/vol1/02-02-latency-numbers.md)
- [가용성에 관계된 수치들](./notes/vol1/02-03-availability-numbers.md)
- [예제: 트위터 QPS와 저장소 요구량 추정](./notes/vol1/02-04-example-estimate.md)
- [팁](./notes/vol1/02-05-tips.md)

### 3장. 시스템 설계 면접 공략법

- [시스템 설계 면접 공략법](./notes/vol1/03-00-system-design-interview.md)
- [효과적 면접을 위한 4단계 접근법](./notes/vol1/03-01-effective-approach.md)

### 4장. 처리율 제한 장치의 설계

- [처리율 제한 장치의 설계](./notes/vol1/04-00-rate-limiter.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/04-01-rate-limiter-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/04-02-rate-limiter-design.md)
- [3단계: 상세 설계](./notes/vol1/04-03-rate-limiter-detail.md)
- [4단계: 마무리](./notes/vol1/04-04-rate-limiter-wrap-up.md)

### 5장. 안정 해시 설계

- [안정 해시 설계](./notes/vol1/05-00-consistent-hashing.md)
- [해시 키 재배치(rehash) 문제](./notes/vol1/05-01-hash-rehash-problem.md)
- [안정 해시](./notes/vol1/05-02-consistent-hashing.md)
- [마치며](./notes/vol1/05-03-consistent-hashing-summary.md)

### 6장. 키-값 저장소 설계

- [키-값 저장소 설계](./notes/vol1/06-00-key-value-store.md)
- [문제 이해 및 설계 범위 확정](./notes/vol1/06-01-kv-store-problem.md)
- [단일 서버 키-값 저장소](./notes/vol1/06-02-single-server-kv.md)
- [분산 키-값 저장소](./notes/vol1/06-03-distributed-kv.md)
- [요약](./notes/vol1/06-04-kv-store-summary.md)

### 7장. 분산 시스템을 위한 유일 ID 생성기 설계

- [분산 시스템을 위한 유일 ID 생성기 설계](./notes/vol1/07-00-unique-id-generator.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/07-01-unique-id-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/07-02-unique-id-design.md)
- [3단계: 상세 설계](./notes/vol1/07-03-unique-id-detail.md)
- [4단계: 마무리](./notes/vol1/07-04-unique-id-wrap-up.md)

### 8장. URL 단축기 설계

- [URL 단축기 설계](./notes/vol1/08-00-url-shortener.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/08-01-url-shortener-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/08-02-url-shortener-design.md)
- [3단계: 상세 설계](./notes/vol1/08-03-url-shortener-detail.md)
- [4단계: 마무리](./notes/vol1/08-04-url-shortener-wrap-up.md)

### 9장. 웹 크롤러 설계

- [웹 크롤러 설계](./notes/vol1/09-00-web-crawler.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/09-01-web-crawler-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/09-02-web-crawler-design.md)
- [3단계: 상세 설계](./notes/vol1/09-03-web-crawler-detail.md)
- [4단계: 마무리](./notes/vol1/09-04-web-crawler-wrap-up.md)

### 10장. 알림 시스템 설계

- [알림 시스템 설계](./notes/vol1/10-00-notification-system.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/10-01-notification-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/10-02-notification-design.md)
- [3단계: 상세 설계](./notes/vol1/10-03-notification-detail.md)
- [4단계: 마무리](./notes/vol1/10-04-notification-wrap-up.md)

### 11장. 뉴스 피드 시스템 설계

- [뉴스 피드 시스템 설계](./notes/vol1/11-00-news-feed.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/11-01-news-feed-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/11-02-news-feed-design.md)
- [3단계: 상세 설계](./notes/vol1/11-03-news-feed-detail.md)
- [4단계: 마무리](./notes/vol1/11-04-news-feed-wrap-up.md)

### 12장. 채팅 시스템 설계

- [채팅 시스템 설계](./notes/vol1/12-00-chat-system.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/12-01-chat-system-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/12-02-chat-system-design.md)
- [3단계: 상세 설계](./notes/vol1/12-03-chat-system-detail.md)
- [4단계: 마무리](./notes/vol1/12-04-chat-system-wrap-up.md)

### 13장. 검색어 자동완성 시스템

- [검색어 자동완성 시스템](./notes/vol1/13-00-autocomplete.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/13-01-autocomplete-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/13-02-autocomplete-design.md)
- [3단계: 상세 설계](./notes/vol1/13-03-autocomplete-detail.md)
- [4단계: 마무리](./notes/vol1/13-04-autocomplete-wrap-up.md)

### 14장. 유튜브 설계

- [유튜브 설계](./notes/vol1/14-00-youtube.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/14-01-youtube-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/14-02-youtube-design.md)
- [3단계: 상세 설계](./notes/vol1/14-03-youtube-detail.md)
- [4단계: 마무리](./notes/vol1/14-04-youtube-wrap-up.md)

### 15장. 구글 드라이브 설계

- [구글 드라이브 설계](./notes/vol1/15-00-google-drive.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol1/15-01-google-drive-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol1/15-02-google-drive-design.md)
- [3단계: 상세 설계](./notes/vol1/15-03-google-drive-detail.md)
- [4단계: 마무리](./notes/vol1/15-04-google-drive-wrap-up.md)

### 16장. 배움은 계속된다

- [배움은 계속된다](./notes/vol1/16-00-learning-continues.md)
- [실세계 시스템들](./notes/vol1/16-01-real-world-systems.md)
- [회사별 엔지니어링 블로그](./notes/vol1/16-02-company-engineering-blogs.md)
- [후기](./notes/vol1/16-03-closing-words.md)

## 📚 Vol 2 (2권)

### 1장. 근접성 서비스

- [근접성 서비스](./notes/vol2/01-00-proximity-service.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/01-01-proximity-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/01-02-proximity-design.md)
- [3단계: 상세 설계](./notes/vol2/01-03-proximity-detail.md)
- [4단계: 마무리](./notes/vol2/01-04-proximity-wrap-up.md)
- [요약](./notes/vol2/01-05-proximity-summary.md)
- [참고 문헌](./notes/vol2/01-06-proximity-references.md)

### 2장. 주변 친구

- [주변 친구](./notes/vol2/02-00-nearby-friends.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/02-01-nearby-friends-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/02-02-nearby-friends-design.md)
- [3단계: 상세 설계](./notes/vol2/02-03-nearby-friends-detail.md)
- [4단계: 마무리](./notes/vol2/02-04-nearby-friends-wrap-up.md)
- [요약](./notes/vol2/02-05-nearby-friends-summary.md)
- [참고 문헌](./notes/vol2/02-06-nearby-friends-references.md)

### 3장. 구글 맵

- [구글 맵](./notes/vol2/03-00-google-maps.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/03-01-google-maps-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/03-02-google-maps-design.md)
- [3단계: 상세 설계](./notes/vol2/03-03-google-maps-detail.md)
- [4단계: 마무리](./notes/vol2/03-04-google-maps-wrap-up.md)
- [요약](./notes/vol2/03-05-google-maps-summary.md)
- [참고 문헌](./notes/vol2/03-06-google-maps-references.md)

### 4장. 분산 메시지 큐

- [분산 메시지 큐](./notes/vol2/04-00-message-queue.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/04-01-message-queue-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/04-02-message-queue-design.md)
- [3단계: 상세 설계](./notes/vol2/04-03-message-queue-detail.md)
- [4단계: 마무리](./notes/vol2/04-04-message-queue-wrap-up.md)
- [요약](./notes/vol2/04-05-message-queue-summary.md)
- [참고 문헌](./notes/vol2/04-06-message-queue-references.md)

### 5장. 지표 모니터링 및 경보 시스템

- [지표 모니터링 및 경보 시스템](./notes/vol2/05-00-monitoring.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/05-01-monitoring-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/05-02-monitoring-design.md)
- [3단계: 상세 설계](./notes/vol2/05-03-monitoring-detail.md)
- [4단계: 마무리](./notes/vol2/05-04-monitoring-wrap-up.md)
- [요약](./notes/vol2/05-05-monitoring-summary.md)
- [참고 문헌](./notes/vol2/05-06-monitoring-references.md)

### 6장. 광고 클릭 이벤트 집계

- [광고 클릭 이벤트 집계](./notes/vol2/06-00-ad-click.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/06-01-ad-click-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/06-02-ad-click-design.md)
- [3단계: 상세 설계](./notes/vol2/06-03-ad-click-detail.md)
- [4단계: 마무리](./notes/vol2/06-04-ad-click-wrap-up.md)
- [요약](./notes/vol2/06-05-ad-click-summary.md)
- [참고 문헌](./notes/vol2/06-06-ad-click-references.md)

### 7장. 호텔 예약 시스템

- [호텔 예약 시스템](./notes/vol2/07-00-hotel-reservation.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/07-01-hotel-reservation-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/07-02-hotel-reservation-design.md)
- [3단계: 상세 설계](./notes/vol2/07-03-hotel-reservation-detail.md)
- [4단계: 마무리](./notes/vol2/07-04-hotel-reservation-wrap-up.md)
- [요약](./notes/vol2/07-05-hotel-reservation-summary.md)
- [참고 문헌](./notes/vol2/07-06-hotel-reservation-references.md)

### 8장. 분산 이메일 서비스

- [분산 이메일 서비스](./notes/vol2/08-00-email-system.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/08-01-email-system-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/08-02-email-system-design.md)
- [3단계: 상세 설계](./notes/vol2/08-03-email-system-detail.md)
- [4단계: 마무리](./notes/vol2/08-04-email-system-wrap-up.md)
- [요약](./notes/vol2/08-05-email-system-summary.md)
- [참고 문헌](./notes/vol2/08-06-email-system-references.md)

### 9장. S3와 같은 오브젝트 스토리지

- [S3와 같은 오브젝트 스토리지](./notes/vol2/09-00-object-storage.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/09-01-object-storage-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/09-02-object-storage-design.md)
- [3단계: 상세 설계](./notes/vol2/09-03-object-storage-detail.md)
- [4단계: 마무리](./notes/vol2/09-04-object-storage-wrap-up.md)
- [요약](./notes/vol2/09-05-object-storage-summary.md)
- [참고 문헌](./notes/vol2/09-06-object-storage-references.md)

### 10장. 실시간 게임 순위표

- [실시간 게임 순위표](./notes/vol2/10-00-leaderboard.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/10-01-leaderboard-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/10-02-leaderboard-design.md)
- [3단계: 상세 설계](./notes/vol2/10-03-leaderboard-detail.md)
- [4단계: 마무리](./notes/vol2/10-04-leaderboard-wrap-up.md)
- [요약](./notes/vol2/10-05-leaderboard-summary.md)
- [참고 문헌](./notes/vol2/10-06-leaderboard-references.md)

### 11장. 결제 시스템

- [결제 시스템](./notes/vol2/11-00-payment-system.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/11-01-payment-system-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/11-02-payment-system-design.md)
- [3단계: 상세 설계](./notes/vol2/11-03-payment-system-detail.md)
- [4단계: 마무리](./notes/vol2/11-04-payment-system-wrap-up.md)
- [요약](./notes/vol2/11-05-payment-system-summary.md)
- [참고 문헌](./notes/vol2/11-06-payment-system-references.md)

### 12장. 온라인 코딩 플랫폼

- [온라인 코딩 플랫폼](./notes/vol2/12-00-coding-platform.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/12-01-coding-platform-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/12-02-coding-platform-design.md)
- [3단계: 상세 설계](./notes/vol2/12-03-coding-platform-detail.md)
- [4단계: 마무리](./notes/vol2/12-04-coding-platform-wrap-up.md)
- [요약](./notes/vol2/12-05-coding-platform-summary.md)
- [참고 문헌](./notes/vol2/12-06-coding-platform-references.md)

### 13장. 온라인 립스틱 가게

- [온라인 립스틱 가게](./notes/vol2/13-00-online-store.md)
- [1단계: 문제 이해 및 설계 범위 확정](./notes/vol2/13-01-online-store-problem.md)
- [2단계: 개략적 설계안 제시 및 동의 구하기](./notes/vol2/13-02-online-store-design.md)
- [3단계: 상세 설계](./notes/vol2/13-03-online-store-detail.md)
- [4단계: 마무리](./notes/vol2/13-04-online-store-wrap-up.md)
- [요약](./notes/vol2/13-05-online-store-summary.md)
- [참고 문헌](./notes/vol2/13-06-online-store-references.md)

## 📋 노트 작성 방법

각 주제별 노트는 다음 템플릿을 따라 작성했습니다:

```markdown
# [장 제목]

## 핵심 요약

<!-- 이 장의 핵심 내용을 3-5줄로 간략하게 요약 -->
- 

## 중요 개념

<!-- 이 장에서 가장 중요한 개념들을 나열 -->

- **개념 1**: 설명
- **개념 2**: 설명
- **개념 3**: 설명

## 주요 내용

<!-- 중요한 세부 내용을 자유롭게 기록 -->
- 

## 그림 & 다이어그램

<!-- 책에 있는 중요한 그림이나 다이어그램을 간단히 설명 -->
- 

## 실제 적용 방안

<!-- 이 내용을 실무에 어떻게 적용할 수 있을지 -->
- 

## 질문 & 의문점

<!-- 추가로 알아봐야 할 내용이나 의문점 -->
- 

## 참고 자료

<!-- 관련된 추가 자료 -->
- 
```

## 🔍 빠른 찾기

특정 주제나 키워드에 대한 내용을 빠르게 찾기 위해 아래 키워드 인덱스를 참조하세요:

### 아키텍처 패턴

- **마이크로서비스(Microservices)
  **: [1권 16장 실세계 시스템들](./notes/vol1/16-01-real-world-systems.md), [2권 4장 분산 메시지 큐](./notes/vol2/04-03-message-queue-detail.md)
- **모놀리식(Monolithic)**: [1권 1장 단일 서버](./notes/vol1/01-01-single-server.md)
- **서버리스(Serverless)**: [2권 6장 광고 클릭 이벤트 집계](./notes/vol2/06-03-ad-click-detail.md)
- **이벤트 소싱(Event Sourcing)**: [2권 11장 결제 시스템](./notes/vol2/11-03-payment-system-detail.md)
- **CQRS(Command Query Responsibility Segregation)**: [1권 11장 뉴스 피드 시스템](./notes/vol1/11-03-news-feed-detail.md)

### 시스템 특성

- **확장성(Scalability)
  **: [1권 1장 전체](./notes/vol1/01-00-scale-with-users.md), [1권 10장 알림 시스템](./notes/vol1/10-03-notification-detail.md)
- **가용성(Availability)
  **: [1권 2장 가용성 수치](./notes/vol1/02-03-availability-numbers.md), [1권 5장 안정 해시](./notes/vol1/05-02-consistent-hashing.md)
- **내구성(Durability)
  **: [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md), [2권 9장 오브젝트 스토리지](./notes/vol2/09-03-object-storage-detail.md)
- **일관성(Consistency)
  **: [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md), [1권 15장 구글 드라이브](./notes/vol1/15-03-google-drive-detail.md)
- **지연 시간(Latency)
  **: [1권 2장 응답지연 값](./notes/vol1/02-02-latency-numbers.md), [2권 3장 구글 맵](./notes/vol2/03-03-google-maps-detail.md)
- **처리량(Throughput)
  **: [1권 4장 처리율 제한 장치](./notes/vol1/04-01-rate-limiter-problem.md), [2권 4장 분산 메시지 큐](./notes/vol2/04-03-message-queue-detail.md)
- **내결함성(Fault Tolerance)
  **: [1권 5장 안정 해시](./notes/vol1/05-02-consistent-hashing.md), [2권 8장 분산 이메일 서비스](./notes/vol2/08-03-email-system-detail.md)

### 시스템 컴포넌트

- **부하 분산(Load Balancing)**: [1권 1장 로드 밸런서](./notes/vol1/01-04-load-balancer.md), [1권 4장 처리율 제한 장치](
  ./notes/vol1/04-03-rate-limiter-detail.md)
- **캐싱(Caching)
  **: [1권 1장 캐시](./notes/vol1/01-06-cache.md), [1권 11장 뉴스 피드](./notes/vol1/11-03-news-feed-detail.md), [1권 13장 검색어 자동완성](./notes/vol1/13-03-autocomplete-detail.md)
- **CDN(Content Delivery Network)
  **: [1권 1장 CDN](./notes/vol1/01-07-cdn.md), [1권 14장 유튜브](./notes/vol1/14-03-youtube-detail.md)
- **메시지 큐(Message Queue)
  **: [1권 1장 메시지 큐](./notes/vol1/01-10-message-queue.md), [2권 4장 분산 메시지 큐](./notes/vol2/04-01-message-queue-problem.md)
- **API 게이트웨이(API Gateway)
  **: [1권 4장 처리율 제한 장치](./notes/vol1/04-03-rate-limiter-detail.md), [1권 10장 알림 시스템](./notes/vol1/10-02-notification-design.md)
- **웹소켓(WebSocket)
  **: [1권 12장 채팅 시스템](./notes/vol1/12-03-chat-system-detail.md), [2권 10장 실시간 게임 순위표](./notes/vol2/10-03-leaderboard-detail.md)

### 데이터베이스 관련

- **데이터베이스 샤딩(Sharding)
  **: [1권 1장 데이터베이스 규모 확장](./notes/vol1/01-12-database-scaling.md), [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md)
- **복제(Replication)
  **: [1권 1장 데이터베이스 다중화](./notes/vol1/01-05-database-replication.md), [2권 8장 분산 이메일 서비스](./notes/vol2/08-03-email-system-detail.md)
- **인덱싱(Indexing)
  **: [1권 8장 URL 단축기](./notes/vol1/08-03-url-shortener-detail.md), [1권 13장 검색어 자동완성](./notes/vol1/13-03-autocomplete-detail.md)
- **NoSQL 데이터베이스
  **: [1권 6장 키-값 저장소](./notes/vol1/06-01-kv-store-problem.md), [2권 9장 오브젝트 스토리지](./notes/vol2/09-02-object-storage-design.md)
- **SQL 데이터베이스
  **: [1권 1장 데이터베이스](./notes/vol1/01-02-database.md), [2권 7장 호텔 예약 시스템](./notes/vol2/07-03-hotel-reservation-detail.md)
- **트랜잭션(Transaction)
  **: [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md), [2권 11장 결제 시스템](./notes/vol2/11-03-payment-system-detail.md)

### 분산 시스템 개념

- **분산 락(Distributed Lock)
  **: [1권 7장 유일 ID 생성기](./notes/vol1/07-03-unique-id-detail.md), [2권 7장 호텔 예약 시스템](./notes/vol2/07-03-hotel-reservation-detail.md)
- **합의 알고리즘(Consensus)
  **: [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md), [2권 4장 분산 메시지 큐](./notes/vol2/04-03-message-queue-detail.md)
- **CAP 이론
  **: [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md), [2권 8장 분산 이메일 서비스](./notes/vol2/08-02-email-system-design.md)
- **분산 트랜잭션
  **: [1권 6장 키-값 저장소](./notes/vol1/06-03-distributed-kv.md), [2권 11장 결제 시스템](./notes/vol2/11-03-payment-system-detail.md)
- **데이터 파티셔닝(Partitioning)
  **: [1권 1장 데이터베이스 규모 확장](./notes/vol1/01-12-database-scaling.md), [1권 11장 뉴스 피드](./notes/vol1/11-03-news-feed-detail.md)

### 특정 시스템 디자인

- **검색 시스템
  **: [1권 9장 웹 크롤러](./notes/vol1/09-01-web-crawler-problem.md), [1권 13장 검색어 자동완성](./notes/vol1/13-01-autocomplete-problem.md)
- **지리 공간 시스템
  **: [2권 1장 근접성 서비스](./notes/vol2/01-01-proximity-problem.md), [2권 2장 주변 친구](./notes/vol2/02-01-nearby-friends-problem.md), [2권 3장 구글 맵](./notes/vol2/03-01-google-maps-problem.md)
- **실시간 분석
  **: [2권 5장 지표 모니터링](./notes/vol2/05-01-monitoring-problem.md), [2권 6장 광고 클릭 이벤트 집계](./notes/vol2/06-01-ad-click-problem.md)
- **미디어 스트리밍**: [1권 14장 유튜브](./notes/vol1/14-01-youtube-problem.md)
- **파일 저장 및 공유
  **: [1권 15장 구글 드라이브](./notes/vol1/15-01-google-drive-problem.md), [2권 9장 오브젝트 스토리지](./notes/vol2/09-01-object-storage-problem.md)
- **메시징 시스템
  **: [1권 10장 알림 시스템](./notes/vol1/10-01-notification-problem.md), [1권 12장 채팅 시스템](./notes/vol1/12-01-chat-system-problem.md), [2권 8장 분산 이메일 서비스](./notes/vol2/08-01-email-system-problem.md)

### 성능 최적화

- **성능 모니터링**: [2권 5장 지표 모니터링 및 경보 시스템](./notes/vol2/05-01-monitoring-problem.md)
- **병목 현상 식별
  **: [1권 2장 규모 추정](./notes/vol1/02-01-power-of-two.md), [2권 5장 지표 모니터링](./notes/vol2/05-03-monitoring-detail.md)
- **데이터 압축
  **: [1권 14장 유튜브](./notes/vol1/14-03-youtube-detail.md), [2권 9장 오브젝트 스토리지](./notes/vol2/09-03-object-storage-detail.md)
- **데이터 프루닝(Pruning)
  **: [1권 11장 뉴스 피드](./notes/vol1/11-03-news-feed-detail.md), [2권 10장 실시간 게임 순위표](./notes/vol2/10-03-leaderboard-detail.md)

## 📝 학습 진행 상황

### 1권

- [ ] 1장. 사용자 수에 따른 규모 확장성
- [ ] 2장. 개략적인 규모 추정
- [ ] 3장. 시스템 설계 면접 공략법
- [ ] 4장. 처리율 제한 장치의 설계
- [ ] 5장. 안정 해시 설계
- [ ] 6장. 키-값 저장소 설계
- [ ] 7장. 분산 시스템을 위한 유일 ID 생성기 설계
- [ ] 8장. URL 단축기 설계
- [ ] 9장. 웹 크롤러 설계
- [ ] 10장. 알림 시스템 설계
- [ ] 11장. 뉴스 피드 시스템 설계
- [ ] 12장. 채팅 시스템 설계
- [ ] 13장. 검색어 자동완성 시스템
- [ ] 14장. 유튜브 설계
- [ ] 15장. 구글 드라이브 설계
- [ ] 16장. 배움은 계속된다

### 2권

- [ ] 1장. 근접성 서비스
- [ ] 2장. 주변 친구
- [ ] 3장. 구글 맵
- [ ] 4장. 분산 메시지 큐
- [ ] 5장. 지표 모니터링 및 경보 시스템
- [ ] 6장. 광고 클릭 이벤트 집계
- [ ] 7장. 호텔 예약 시스템
- [ ] 8장. 분산 이메일 서비스
- [ ] 9장. S3와 같은 오브젝트 스토리지
- [ ] 10장. 실시간 게임 순위표
- [ ] 11장. 결제 시스템
- [ ] 12장. 온라인 코딩 플랫폼
- [ ] 13장. 온라인 립스틱 가게