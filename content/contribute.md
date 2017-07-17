---
title: Contribute
---
# Contribute

Contributions are welcome!

Here is some advices.

## Adding Profiles

### Rules

Listed profiles must:

 +  Have at least 100,000 follower on Twitter or 500 on Mastodon.
 +  Be active, almost as their Twitter counterparts, if any.
 +  Mention if they are bot.

In case several bots for the same entity are available on different instances, you might list several.

Things should be alphabetically or randomly organised if nothing else makes sense.

### Yaml Files

Each profile is stored in a [Yaml](http://yaml.org) file of its own. It has the following structure:

<table class="pure-table pure-table-bordered pure-table-odd">
  <thead>
    <tr>
      <th>Field</th>
      <th>Type</th>
      <th>Required</th>
      <th>Description</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
  <tr>
      <td>name</td>
      <td>string</td>
      <td>✔</td>
      <td>Human readable name of the profile</td>
      <td>E. Snowden</td>
    </tr>
    <tr>
      <td>description</td>
      <td>string</td>
      <td>✗</td>
      <td>Short description of the profile, you may summurize the profile description</td>
      <td>President at Freedom of Press.</td>
    </tr>
    <tr>
      <td>bot</td>
      <td>bool</td>
      <td>✔</td>
      <td>Whether the profile is a bot</td>
      <td>true</td>
    </tr>
    <tr>
      <td>lang</td>
      <td>string list</td>
      <td>✔</td>
      <td>List of languages used by the profile</td>
      <td> - en<br/> - fr</td>
    </tr>
    <tr>
      <td>mastodonUrls</td>
      <td>string list</td>
      <td>✔</td>
      <td>A list of urls for the profile (accross instances)</td>
      <td> - https://mamot.fr/@snowden<br/> - https://mastodon.xyz/@snowden</td>
    </tr>
    <tr>
      <td>twitterUrls</td>
      <td>string list</td>
      <td>✗</td>
      <td>A list of urls for the profile (accross instances)</td>
      <td> - https://twitter.com/Snowden</td>
    </tr>
    <tr>
      <td>runBy</td>
      <td>string list</td>
      <td>✗</td>
      <td>A list of urls of associated ressources (Newspaper website, personnal blog)</td>
      <td> - https://snowden.blog</td>
    </tr>
    </tbody>
    </table>

There is a [template](/template.yml) to get started. You might browse [the source code](https://gitlab.com/WzukW/onmastodon/tree/master/yml-db) to find examples.

### Your pull request

+ You should make per-profile pull-request (PR): if your PR is rejected for one profile, the others are not excluded.
+ You might mention your mastodon account.
