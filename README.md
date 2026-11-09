---
title: SunWin TaiXiu Live
emoji: 🎲
colorFrom: purple
colorTo: pink
sdk: docker
app_port: 7860
pinned: false
---

# SunWin TaiXiu Live Feed

Dashboard kết quả Tài Xỉu realtime + JSON API cho AI agent (Node.js thuần, WebSocket msgpack).

## Endpoints
- `GET /` — dashboard trực quan
- `GET /api/state` — full state (kết nối, phiên đang chạy, thống kê)
- `GET /api/ai` — snapshot gọn cho AI agent poll
- `GET /api/latest` — kết quả phiên mới nhất
- `GET /api/sessions?limit=100` — lịch sử phiên
- `GET /events` — SSE stream realtime

## Cấu hình
`REFRESH_TOKEN` được inject qua **Space Secret** (Settings → Variables and secrets), không nằm trong repo.
