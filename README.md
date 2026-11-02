# trial-review

수정사항·변경안을 **재판 형식**으로 평가하는 Claude 플러그인입니다.

- 재판장은 실무 PM/컨펌매니저, 배심원은 서로 다른 직무 8명(PM, UX, 프론트엔드, 백엔드, QA, 접근성, CS/운영, 데이터)입니다.
- 평가는 두 번입니다. 적용 전에는 텍스트만 보고, 적용 후에는 실제로 관찰·사용한 뒤 판단합니다.
- 모든 배심원이 모든 안건을 검토하고, 다른 수정과 함께 적용됐을 때의 영향까지 봅니다.
- 결과는 찬성 비율에 따른 적용 순위 표로 나옵니다.

## 설치

### Claude Code (CLI)

```
/plugin marketplace add PROMISE282/trial-review-plugin
/plugin install trial-review@promise282-tools
```

### Claude Desktop

Claude Code 탭의 플러그인 화면에서 마켓플레이스로 `PROMISE282/trial-review-plugin`을 추가한 뒤
`trial-review`를 설치합니다.

## 사용

대화에서 "재판 형식으로 판단해줘", "배심원 투표로 우선순위 매겨줘"처럼 말하면 스킬이 자동으로 쓰입니다.
직접 부르려면 `/trial-review:trial-review`를 입력합니다.

## 한계

- 배심원 투표는 직무 관점을 시뮬레이션한 것이며 실제 사람의 투표가 아닙니다.
- 적용하지 않았거나 관찰하지 않은 항목의 2차 평가는 만들지 않습니다.

## 라이선스

MIT
