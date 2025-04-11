# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-04-11

### Added

- 초기 PortOne V2 결제 서비스 통합 기능
- `PortonePayment` 위젯을 통한 결제 프로세스 구현
- 다양한 결제 방법 지원 (카드, 가상계좌, 간편결제 등)
- 결제 요청 모델 (`PaymentRequest`) 및 응답 모델 (`PaymentResponse`) 구현
- 다양한 PG사 지원을 위한 `PGCompany` 열거형 추가
- 각 PG사별 지원 결제 방법을 확인할 수 있는 `PaymentSupportedMethods` 확장 기능
- 앱 스킴(AppScheme)을 통한 결제 콜백 처리 기능
- 결제 창 타입 설정 기능 (iframe, popup)
- 다국어 지원 (한국어, 영어)
- PG사 이름의 현지화 지원
- 다양한 통화 지원 (ISO 4217 표준)
- 국가 정보 지원 (ISO 3166-1 alpha-2 표준)
- 각 PG사별 바이패스 파라미터 지원
  - 카카오페이, 토스페이먼츠, 토스페이V2, KSNET, 스마트로V2, 네이버페이 등
- 커스텀 데이터, 상점 정보, 배송 주소 등 추가 정보 전달 기능
- 에러 처리 및 로깅 기능

### Changed

- `PortOnePayment`에서 `PortonePayment`로 클래스명 변경하여 일관성 유지

### Fixed

- 인텐트 URL 처리 방식 개선
- 앱 스킴을 통한 결제 응답 처리 개선
- 결제 요청 모델의 필드 타입 수정 (`isEscrow`를 nullable로 변경)
- `PaymentPayMethod` 열거형에서 `paypal`을 `convenienceStore`로 수정

[1.0.0]: https://github.com/AndrewDongminYoo/portone_flutter/releases/tag/v1.0.0
