# kquant

`kquant` 패키지는 코스콤에서 개발한 금융데이터 분석용 파이썬 패키지로 코스콤 CHECK-API 서비스를 통해 금융데이터를 불러오고 분석하는 기능을 제공합니다.

- `kquant` 사용법에 대해서는 CHECK-API 활용 웹사이트를 참조하시기 바랍니다.
  - [https://koscom.github.io/checkapi/index.html](https://koscom.github.io/checkapi/index.html)
- `kquant`의 함수 목록은 kquant API 웹사이트를 참조하시기 바랍니다.
  - [https://koscom.github.io/kquant/index.html](https://koscom.github.io/kquant/index.html)

## 패키지 설치

`kquant` 패키지는 pip install 명령으로 설치할 수 있습니다.

```bash
pip install kquant
```

## 준비 사항

`kquant` 패키지를 사용하기 위해서는 실시간 금융 데이터를 REST-API 및 WebSocket 기반으로 제공하는 서비스인
코스콤 CHECK-API 서비스를 신청하여 API ID 및 API KEY를 발급받으셔야 합니다.

코스콤 CHECK-API 서비스에 대해서는 다음 홈페이지를 참조해 주세요.

- [https://checkapi.koscom.co.kr/](https://checkapi.koscom.co.kr/)

## 배포 기록

### v0.3.6

- 지수/업종
  - `period_index` 함수 추가
- 상장 펀드
  - `symbol_fund` 함수 추가
  - `info_basic_fund` 함수 추가
  - `daily_fund` 함수 추가
  - `trade_fund` 함수 추가
  - `intra_fund` 함수 추가
  - `period_fund` 함수 추가
- API 키 정보 저장 위치 옵션 추가
  - Linux/Mac 서버에서 `/.kquant/credential` 디렉토리에서 API 정보를 읽는 기능 추가

### v0.3.5

- `trade_index` 함수 추가
- `daily_investor_index` 함수 추가
- `basic_info_index` 함수명 변경 -> `info_basic_index`
- `rank_broker_stocks` 함수명 변경 -> `sum_broker_stocks`
- `rank_block_stocks` 함수명 변경 -> `sum_block_stocks`
- `rank_short_stocks` 함수명 변경 -> `sum_short_stocks`
- `rank_investor_stocks` 함수명 변경 -> `sum_investor_stocks`

### v0.3.4

- `daily_index`, `intra_index` 추가

### v0.3.3

- `basic_info_index` 추가

### v0.3.2

- pandas 2.2 버전 대응

### v0.3.1

- `intra_investor_stocks` 함수 삭제 -> `rank_investor_stocks` 함수에 기능 통합

### v0.3.0

- 주식 CHECK API 추가
  - 모듈명 변경
    - `kquant.data.market` -> `kquant.data.stock`
  - 일중 데이터 함수 추가
    - `quote_stock`: 주식 종목의 호가 정보를 반환하는 함수
    - `trade_stock`: 주식 종목의 체결 틱데이터 정보를 반환하는 함수
    - ~~`intra_investor_stocks`: 전종목 당일 당일 투자자 정보를 반환하는 함수~~
  - 일간 데이터 함수 추가
    - `daily_block_stock`: 주식 종목의 일자별 대량매매 정보를 반환하는 함수
    - `daily_short_stock`: 주식 종목의 일자별 공매도 정보를 반환하는 함수
    - `daily_lend_stock`: 주식 종목의 일자별 대차잔고 정보를 반환하는 함수
    - `daily_margin_stock`: 주식 종목의 일자별 신용잔고 및 대주 정보를 반환하는 함수
  - 순위 데이터 함수 추가
    - `rank_broker_stocks`: 회원사별 기간 매매집계 정보를 반환하는 함수
    - `rank_block_stocks`: 종목별 기간 대량매매 정보를 반환하는 함수
    - `rank_short_stocks`: 종목별 기간 공매도 정보를 반환하는 함수
    - `rank_investor_stocks`: 종목별 기간 투자자 정보를 반환하는 함수
  - 주기 데이터 함수 추가
    - `period_stock`: 주식 종목의 주/월/분기/연도별 주기 정보를 반환하는 함수

### v0.2.9

- 단일 및 복수 주식 종목에 대한 정보를 반환하는 `info_basic_stock`, `info_basic_stocks` 함수 추가

### v0.2.8

- 백테스트시 상한가 매수 및 하한가 매도 금지

### v0.2.7

- 백테스트용 액면 분할/합병 처리 추가
- 포트폴리오 백테스트 버그 수정

### v0.2.6

- `intra_stock` 함수에서 `date` 인수를 추가하여 과거 분봉 데이터 조회 가능.

### v0.2.5

- KRX 주식 투자 알고리즘 경진대회용 최초 배포 버전.
