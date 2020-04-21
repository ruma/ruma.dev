+++
title = "Introduction to Matrix"
page_template = "section_page.html"
+++

Matrix is a protocol for communicating online.

Matrix-powered apps, called Matrix clients, have all the features you'd want and expect from a modern chat app: instant messaging, group chats, audio and video calls, searchable message history, synchronization across all your devices, and more.

To use a Matrix client, you create an account on a Matrix homeserver.
Your Matrix homeserver is your hub into the Matrix network.
It stores your account information and all your conversations.
You can communicate with people on your own homeserver or people on other homeservers.
When you communicate with people on other homeservers, your homeserver and the other homeservers involved synchronize the conversation history.
This allows you to communicate with anyone in the Matrix network seamlessly, without ever thinking about which homeserver they connect to.

What separates the Matrix protocol from other, similar communication protocols is that you can:

* Communicate with anyone, even if they aren't using Matrix yet.
* Choose where your communication data is stored and who has access to it.

### Talk to Anyone

You communicate with people outside of the Matrix network through bridges, which connect previously established communication networks, such as Slack and IRC, to the Matrix network.

With bridges you don't have to use different apps to talk to different people.
Whatever Matrix client you choose, you can talk to anyone inside or outside of the Matrix network.
This bridging is invisible to users outside of the Matrix network. Your friends don't need to switch networks or software.
They don't even need to know anything about Matrix.

### Get More Choices

Matrix gives you choices for both the software you use to chat and where your communication data is stored.

Remember that to use Matrix, you need a Matrix client.
A client can be a web, phone, or desktop app--or even an Internet-connected appliance in your home.
Think of how you can access your email from Gmail in your browser, Microsoft Outlook on your laptop, or the Mail app on your iPhone.
With Matrix, you can do the same for messaging, phone, and video calls.

You can pick any Matrix client, and you can switch at any time.
Whatever you choose, it'll work with your homeserver.
Currently, the most widely used Matrix client is [Riot](https://riot.im/), which has versions available for the web, iOS, Android, macOS, Windows, and more.

On the homeserver side, Matrix offers choices to both the user and operator of the homeserver.

Users can decide who runs their homeserver:

* A large organization that provides a public homeserver: For example, the team behind Matrix offers a public homeserver on matrix.org.
* A friend, family, or community group: This could be for a club or professional organization.
* Yourself: You can run the homeserver software on your own computer.

As a homeserver operator, you can choose your homeserver implementation.
The team that developed Matrix provides an implementation called Synapse.
Ruma is another option.

### Putting It All Together

So far, you've learned about the Matrix protocol, client, and homeserver.
The following table illustrates how those three components form a relationship similar to email or the web.
The table shows the protocol each system uses, examples of resources you'd access, and examples of the software used to do it.

<div class="table-responsive">
  <table class="table table-bordered">
    <tr>
      <th></th>
      <th>Web</th>
      <th>Email</th>
      <th>Matrix</th>
    </tr>
    <tr>
      <th>Is built on…</th>
      <td>HTTP</td>
      <td>IMAP, SMTP</td>
      <td>HTTP</td>
    </tr>
    <tr>
      <th>You want to access…</th>
      <td>youtube.com, facebook.com</td>
      <td>Gmail, Yahoo Mail</td>
      <td>matrix.org public homeserver</td>
    </tr>
    <tr>
      <th>The provider uses…</th>
      <td>Apache, Nginx</td>
      <td>sendmail, postfix</td>
      <td>Ruma, Synapse</td>
    </tr>
    <tr>
      <th>You use…</th>
      <td>Chrome, Firefox</td>
      <td>Gmail web app, Apple Mail</td>
      <td>Riot, WeeChat</td>
    </tr>
  </table>
</div>

Next, read about [Matrix features](/docs/matrix/features/).
