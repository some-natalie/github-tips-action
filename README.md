# GitHub Tips Action

This Action posts a GitHub tip into a Slack channel.  It works by picking a random tip from the [tips](tips.json) file, then posts it to Slack using the [Slack API](https://api.slack.com/incoming-webhooks).  Here's what it looks like!

![screenshot](images/slack-screenshot.png)

:information_source: Each entry uses Slack's [Block kit API](https://api.slack.com/block-kit) for formatting.  You can get started with the [Block kit builder](https://app.slack.com/block-kit-builder) for an easy way to create more content.

## Getting Started

Take a look at the [workflow](.github/workflows/github-tips.yml) to see how to use this Action.  Here's a general outline of how to set it up for your team.

1. Fork this repository in GitHub.com (or create a private repo and copy this all in, your choice!).
2. Add your Slack channel ID and bot token as secrets for the workflow to use.  You can find info about all the different ways to set this up in the [documentation](https://github.com/slackapi/slack-github-action) for Slack's Action.  I used a Slack app in this repo, but it should work for the other methods as well without any problem.
3. Edit the [workflow](.github/workflows/github-tips.yml) to set up a schedule.  Uncomment the `schedule` block and edit it to a time the team would find appropriate.  That's it!  :tada:

If you'd like your own custom content, edit the `tips.json` file.  Send a pull request back to help us improve the content. :heart:
