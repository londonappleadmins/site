# London Apple Admins Website

This is the website for London Apple Admins, built with [Hugo](https://gohugo.io/).

## Local Development

Run the development server using Docker:

```bash
./build.sh
```

Then open <http://localhost:1313> in your browser.

## Manual Build

If you have Hugo installed locally:

```bash
hugo server --buildFuture
```

## Production Build

```bash
hugo --minify
```

The site will be generated in the `public/` directory.

## Deployment

The site is automatically deployed via GitHub Actions when changes are pushed to the `master` branch. The workflow:

1. Runs spell checking on content
2. Builds the site with Hugo
3. Deploys to AWS S3
4. Invalidates CloudFront cache

## Adding New Posts

Create a new markdown file in `content/posts/` with the following format:

```markdown
---
date: 2025-01-15T18:00:00+00:00
title: "Your Post Title"
slug: "your-post-title"
---

Your content here...
```

Posts are named `YYYY-MM-DD-title.md` for organization.
