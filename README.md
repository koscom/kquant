# kquant

`kquant` 패키지는 코스콤에서 개발한 금융데이터 분석용 파이썬 패키지입니다.

- `kquant` 사용법에 대해서는 CHECK-API 활용 웹사이트 [https://koscom.github.io/check_api/index.html](https://koscom.github.io/check_api/index.html)를 참조하시기 바랍니다.
- `kquant` API 참조문서는 웹사이트 [https://koscom.github.io/kquant/index.html](https://koscom.github.io/kquant/index.html)입니다.

## 배포 기록

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
    - `quote_stock`:	주식 종목의 호가 정보를 반환하는 함수
    - `trade_stock`:	주식 종목의 체결 틱데이터 정보를 반환하는 함수
    - ~~`intra_investor_stocks`:	전종목 당일 당일 투자자 정보를 반환하는 함수~~
  - 일간 데이터 함수 추가
    - `daily_block_stock`:	주식 종목의 일자별 대량매매 정보를 반환하는 함수
    - `daily_short_stock`:	주식 종목의 일자별 공매도 정보를 반환하는 함수
    - `daily_lend_stock`:	주식 종목의 일자별 대차잔고 정보를 반환하는 함수
    - `daily_margin_stock`:	주식 종목의 일자별 신용잔고 및 대주 정보를 반환하는 함수
  - 순위 데이터 함수 추가
    - `rank_broker_stocks`:	회원사별 기간 매매집계 정보를 반환하는 함수
    - `rank_block_stocks`:	종목별 기간 대량매매 정보를 반환하는 함수
    - `rank_short_stocks`:	종목별 기간 공매도 정보를 반환하는 함수
    - `rank_investor_stocks`:	종목별 기간 투자자 정보를 반환하는 함수
  - 주기 데이터 함수 추가
    - `period_stock`:	주식 종목의 주/월/분기/연도별 주기 정보를 반환하는 함수

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
