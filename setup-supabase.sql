-- ============================================================
-- CQU FIC 论坛 — Supabase 数据库初始化脚本
-- 在 Supabase 后台 → SQL Editor → 粘贴运行
-- ============================================================

-- 评论表
CREATE TABLE IF NOT EXISTS comments (
    id          UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id     TEXT        NOT NULL,               -- 对应 posts.json 中的 id
    parent_id   UUID        REFERENCES comments(id) ON DELETE CASCADE,
                                                    -- NULL = 顶级留言，有值 = 回复
    nickname    TEXT        NOT NULL,               -- 游客昵称（公开显示）
    contact     TEXT,                               -- 邮箱或手机号（仅后台可见）
    content     TEXT        NOT NULL,
    is_approved BOOLEAN     NOT NULL DEFAULT true,  -- 改为 false 可开启人工审核
    created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- 索引：按帖子查评论时更快
CREATE INDEX IF NOT EXISTS idx_comments_post_id   ON comments (post_id);
CREATE INDEX IF NOT EXISTS idx_comments_parent_id ON comments (parent_id);

-- ── 行级安全策略 (RLS) ─────────────────────────────────────
ALTER TABLE comments ENABLE ROW LEVEL SECURITY;

-- 游客可以读取已审核的评论
CREATE POLICY "public can read approved comments"
    ON comments FOR SELECT
    USING (is_approved = true);

-- 游客可以提交新评论
CREATE POLICY "public can insert comments"
    ON comments FOR INSERT
    WITH CHECK (true);

-- ── 管理员邮件通知（可选）─────────────────────────────────
-- 如果想在有新评论时收到邮件，可在 Supabase → Database → Webhooks 里配置
-- 触发器：table=comments, event=INSERT, URL=你的通知服务

-- ── 验证 ──────────────────────────────────────────────────
-- 运行后执行这条确认表已创建：
-- SELECT * FROM comments LIMIT 1;
