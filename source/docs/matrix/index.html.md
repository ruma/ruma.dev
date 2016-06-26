---
guide: Introduction to Matrix
section: Overview
menu: matrix
title: Ruma - Introduction to Matrix
---

Ruma is a Matrix homeserver.
In order to understand what this means, you first need to understand Matrix.

Matrix is a protocol for communicating online.

Matrix-powered apps, called Matrix clients, have all the features you'd want and expect from a modern chat app: instant messaging, group chats, audio and video calls, searchable message history, and synchronization across all your devices.

To use a Matrix client, you create an account on a Matrix homeserver.
Your Matrix homeserver stores your account information and communication history.
Homeservers also share data with the wider Matrix network by synchronizing communication history.
Since new chat rooms originate on homeservers, this allows others to join in on the conversation.

What separates the Matrix protocol from other, similar systems is that you can:

* Communicate with anyone, even if they aren't using Matrix yet.
* Choose where your data is stored and how you access it.

### Talk to Anyone

You communicate with people outside of the Matrix network through bridges, which connect previously established communication networks, such as Slack and IRC, to the Matrix network.

With bridges you don't have to use different clients to talk to different people.
Whatever Matrix client you choose, you can talk to anyone inside or outside of the Matrix network.
This bridging is invisible to users outside of the Matrix network. Your friends don't need to switch networks or software.
They don't even need to know anything about Matrix.

### Get More Choices

Matrix gives you more choices for both clients and homeservers.

Remember that to use Matrix, you need a Matrix client.
A client can be a web, phone, or laptop app--or even an Internet-connected appliance in your home.
Think of how you can access your email from Gmail in your browser, Microsoft Outlook on your laptop, or the Mail app on your iPhone.
With Matrix, you can do the same for messaging, phone, and video calls.

You can pick any Matrix client, and you can switch at any time.
Whatever you choose, it'll work with your homeserver.
Currently, the most widely used Matrix client is the web app Vector.

On the homeserver side, Matrix offers choices to both the user and operator of the homeserver.

Users can decide who runs their homeserver:

* Large commercial organization that provides a public homeserver: For example, the team behind Matrix offers a public homeserver on matrix.org.
* Friend, family, or community group: This could be for a club or professional organization
* Yourself: You would run the homeserver software on your own computer.

As a homeserver operator, you can choose your homeserver implementation.
The team that developed Matrix provides an implementation called Synapse.
Ruma will be another implementation option.

### Putting It All Together

So far, you've learned about the Matrix protocol, client, and homeserver.
The following table illustrates how those three components form a relationship similar to email or the web.

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
      <td>Vector</td>
    </tr>
  </table>
</div>
