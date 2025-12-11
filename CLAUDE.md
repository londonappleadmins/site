# London Apple Admins Site

Hugo-based static site for the London Apple Admins meetup group.

## Creating a New Post

Posts live in `content/posts/` with the filename format:

```
YYYY-MM-DD-slug-title.md
```

Example: `2025-12-03-january-2026-meetup.md`

### Front Matter

```yaml
---
title: "Your Post Title Here"
date: 2025-12-03T09:00:00+00:00
slug: "your-post-title-here"
---
```

- `title`: The post title (will appear in the page and navigation)
- `date`: ISO 8601 format with timezone offset
- `slug`: URL-friendly identifier for the post

### Content

Write content in standard Markdown. HTML is allowed for embeds (YouTube, Eventbrite, etc.).

### Permalinks

Posts are automatically published at `/:year/:month/:day/:slug/` based on the filename date and slug.

## Local Development

```bash
./build.sh
```

Site available at <http://localhost:1313> with live reload.

## Deployment

Push to `master` branch. GitHub Actions will build and deploy to S3/CloudFront.
