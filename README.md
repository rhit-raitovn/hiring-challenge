# Warp Hiring Challenge

## About
This is a programming challenge for candidates who are interested in applying to Warp. It's meant to be short and fun -- we highly encourage you to use Agent Mode in Warp to solve the challenge! There will be fields in the application for you to share your answer and a link to Warp Shared Block containing the command you used to solve the problem.

Participation in the challenge is optional. You can still submit an application without doing the hiring challenge.

Get started by reading the [challenge description](mission_challenge.md). Good luck!

## Submission Notes

Add my_parser.awk to analyze space mission logs and identify the longest completed Mars mission.

- Filters for Mars + Completed missions
- Skips comments and empty lines
- Handles inconsistent field spacing

### Run it with

`awk -f my_parser.awk space_missions.log`
