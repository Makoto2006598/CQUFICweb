<div align="center">

# 🎓 CQU FIC
### 重庆大学新生服务融合中心平台
**Chongqing University Freshman Integration Center**

---

*整合信息 · 简化流程 · 连接社群*

[![Deployed on Netlify](https://img.shields.io/badge/Deployed%20on-Netlify-00C7B7?style=flat-square&logo=netlify)](https://netlify.com)
[![Language](https://img.shields.io/badge/Language-HTML%20%2F%20CSS%20%2F%20JS-F7DF1E?style=flat-square&logo=javascript)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![Map Engine](https://img.shields.io/badge/Map-Mapbox%20GL%20JS-4264FB?style=flat-square&logo=mapbox)](https://mapbox.com)
[![License](https://img.shields.io/badge/License-CQU%20Student%20Project-1e4fa1?style=flat-square)](./LICENSE)

</div>

---

## 📖 项目简介

**CQU FIC**（重庆大学新生服务融合中心平台）是一个专为重庆大学新生打造的一站式信息服务网站。

面对重庆大学繁琐、碎片化的入学信息与山城复杂地形，新生往往无从下手。CQU FIC 致力于将校园生活的方方面面整合至一个精心设计的平台，让每位新同学都能快速、优雅地完成从录取到融入的全过程。

> "新同学，欢迎！本平台致力于整合重庆大学繁琐、碎片的信息，为您崭新的人生阶段助力。"

---

## ✨ 核心功能

### 🗂️ 入学流程 (`admission-process.html`)
以可视化圆形交互界面呈现完整入学步骤，从报到注册到选课安排，一站式了解大学生活第一步，再也不用东拼西凑信息。

### 📚 信息汇总库 (`info-library.html`)
汇聚重庆大学的网站链接、资源共享、实用秘籍等各类信息，打造属于重大新生的「知识宝库」，快速上手校园生活的一切。

### 🗺️ 超好用地图 (`map.html`)
基于 **Mapbox GL JS** 构建的 3D 沉浸式校园导航地图，配备液态玻璃风格 UI。内置建筑搜索、路线规划，专为重庆山城地形优化，再也不怕迷路！

- 支持 A 区、B 区、C 区、虎溪校区、两江新区校区
- 全部 350+ 建筑物 3D 场景数据（`scenetree.json`）
- 内置建筑采集开发者工具（`地图开发者.html`）

### 💬 包罗万象社区 (`talking.html`)
平台内置轻量级论坛社区，老同学、新同学都可以在这里发帖、点赞、评论，畅所欲言。支持分类标签、用户登录，让校园社群更有温度。

### 📣 反馈与建议
| 页面 | 功能 |
|------|------|
| `problem-feedback.html` | 问题反馈，遇到 Bug？告诉我们 |
| `fs.html` | 功能建议，有好点子？欢迎提出 |
| `ty.html` | 体验评价，喜欢平台？留下您的感受 |

### 🥚 彩蛋 (`easter-egg.html`)
点击导航栏中央的**校徽**，解锁隐藏彩蛋 🎉

---

## 🎨 设计语言

本项目采用一套统一的**液态玻璃（Liquid Glass）**设计系统：

| 设计要素 | 规格 |
|---------|------|
| 主题色 | 重大蓝 `#1e4fa1` / 深蓝 `#153a7a` |
| 强调色 | 橙色 `#f57c00` / 红色 `#c62828` |
| 字体 | Times New Roman（正文）|
| 玻璃材质 | `backdrop-filter: blur(40px) saturate(180%)` |
| 背景动效 | 流沙粒子系统（120个动态粒子）|
| 过渡动画 | 弹性三次贝塞尔曲线 `cubic-bezier(.175,.885,.32,1.275)` |

导航栏采用**悬浮岛屿**样式，毛玻璃效果随滚动动态增强，在重庆山城的自然氛围中融入现代科技感。

---

## 🗂️ 项目结构

```
CQU-FIC/
│
├── index.html              # 🏠 主页（流沙粒子背景 + 功能导航）
├── admission-process.html  # 📋 入学流程（圆形交互式 UI）
├── info-library.html       # 📚 信息汇总库
├── map.html                # 🗺️  3D 校园导航地图
├── talking.html            # 💬 包罗万象社区论坛
│
├── problem-feedback.html   # 🐛 问题反馈
├── fs.html                 # 💡 功能建议
├── ty.html                 # ❤️  体验评价
│
├── continued.html          # 🔧 开发中功能占位页
├── easter-egg.html         # 🥚 隐藏彩蛋
├── 地图开发者.html          # 🛠️  地图建筑数据采集工具（开发者专用）
│
├── scenetree.json          # 📊 重庆大学A区 3D 建筑场景数据（350+ 建筑）
├── netlify.toml            # ⚙️  Netlify SPA 路由配置
│
├── 校徽_蓝色_1024x1024.png  # 🏫 重庆大学校徽
├── Aquditu2560.png         # 🗺️  A区地图
├── Bquditu2560.jpg         # 🗺️  B区地图
├── Cquditu2560.jpg         # 🗺️  C区地图
├── huxiditu2560.jpg        # 🗺️  虎溪校区地图
└── liangjiangxinquditu2560.jpg  # 🗺️ 两江新区地图
```

---

## 🚀 快速开始

### 本地运行

本项目为纯静态网站，无需构建工具，直接用浏览器打开即可：

```bash
# 克隆项目
git clone <repo-url>
cd cqu-fic

# 方式一：直接打开（部分功能可能受限）
open index.html

# 方式二：使用本地服务器（推荐，确保地图等功能正常加载）
npx serve .
# 或
python3 -m http.server 8080
```

然后访问 `http://localhost:8080`。

### 部署到 Netlify

项目已包含 `netlify.toml` 配置，支持 SPA 路由。直接将仓库连接到 Netlify 即可一键部署：

1. 登录 [Netlify](https://netlify.com)
2. 点击 **Add new site → Import an existing project**
3. 选择本仓库，保持默认配置
4. 点击 **Deploy** ✅

---

## 🛠️ 技术栈

| 技术 | 用途 |
|------|------|
| HTML5 / CSS3 / Vanilla JS | 全站无框架，轻量高效 |
| [Mapbox GL JS v2.15](https://docs.mapbox.com/mapbox-gl-js/) | 3D 校园地图渲染与交互 |
| [Font Awesome 6.4](https://fontawesome.com/) | 图标系统 |
| CSS Custom Properties | 统一的设计 Token 系统 |
| CSS `backdrop-filter` | 液态玻璃视觉效果 |
| CSS Animations / Keyframes | 粒子动效、弹入动画 |
| Netlify | 静态网站托管与部署 |

---

## 📸 页面预览

| 页面 | 功能亮点 |
|------|---------|
| **首页** | 120粒子流沙动态背景，毛玻璃悬浮导航 |
| **入学流程** | 液态球体交互，点击展开各阶段流程 |
| **3D 地图** | Mapbox 3D 建筑渲染，搜索+导航+校区切换 |
| **社区论坛** | 帖子发布、点赞、评论、话题标签 |
| **彩蛋页** | 隐藏彩蛋，惊喜等你发现 🎉 |

---

## 👥 关于团队

CQU FIC 由重庆大学在校学生和校友共同开发，我们深刻理解新生在入学初期的迷茫与需求。

**我们的使命：** 简化新生入学流程，整合校园信息资源，让每位新生都能快速适应大学生活。

如有任何问题或建议，欢迎通过平台内的反馈功能联系我们，也可以关注我们的：

- 📱 微信公众号
- 💬 QQ 群
- 🐦 微博
- 📧 邮箱

---

## 📄 开发者备注

### 地图数据更新

如需更新校园 3D 建筑数据，请使用 `地图开发者.html` 工具在地图上采集建筑坐标，导出后覆盖 `scenetree.json`。

### Mapbox Token

`map.html` 和 `地图开发者.html` 使用 Mapbox GL JS，需要配置有效的 Mapbox Access Token。请在对应文件中替换 `mapboxgl.accessToken` 的值。

---

<div align="center">

© 2023 重庆大学新生服务融合中心平台（CQU FIC）保留所有权利

*Made with ❤️ by CQU Students, for CQU Students*

</div>
