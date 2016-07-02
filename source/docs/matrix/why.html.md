---
guide: Introduction to Matrix
section: Why Matrix Matters
menu: matrix
title: Ruma - Why Matrix Matters
---

There have been many different services for online communication in the Internet's short history.
New and better services have been introduced over time, but online communication still exists in a fragmented state today.
To get an idea just how many systems have existed over the years and how many there are to choose from today, take a look at Sameroom.io's [A Brief History of Chat Services](https://sameroom.io/chat-timeline.pdf).

This fragmentation has many problems for users.
Very few of these services are interoperable with each other, which means most people end up needing to use more than one service.
Often we use one service for talking to our colleagues at work and a combination of Facebook, Google Hangouts, iMessage, and SMS text messaging for talking to our friends and family.
Because the people we want to talk to may not all use the same services, it's not uncommon to have three or four different chat programs running simultaneously on your computer, mobile phone, or tablet to all your contacts.
Many of these services also provide you with the software to use the service, and don't allow alternatives.
If you don't like the software, your only choice is to not use that service.

Another major problem with online communication today is that most of the services we use are operated by commercial organizations that we must rely on and trust.
Most services do not offer end-to-end encryption, which means that when we chat, the company that operates the service has a complete record of everything we say.
Though it may promise not to, the company has the ability to see who we are talking to and what we are saying.
Many people accept this loss of privacy because the services are convenient, easy to use, and often free of charge.
The problem is that we are not given a choice.
In order to use these services, we must give up our privacy.
In the real world, it'd be as if you were required to have a corporate liason stand next to you and listen any time you talk to someone in person.
Even if you trust the people who run the company not to read your messages, you are still trusting them to keep your messages safe from the outside world.
In the event that the company's data stores are "hacked," a record of everything you've ever said on the service could end up in the hands of a complete stranger.
This is a very real threat.
Online data breaches are disturbingly common, and many large companies have fallen victim to them.
Afterwards, they often make public statements about how they "take your security very seriously," but actions speak louder than words, and often it's already too late.

Matrix addresses all these issues with fragmentation, software choice, data ownership, and privacy.
Because Matrix is federated, like email, users can freely communicate with each other across a global network, without having to use specific services based on which ones their friends, family, and colleagues use.
Because Matrix defines only the protocol for communication, anyone can write software that allows a user to chat using the Matrix network.
This gives the user the choice of using software they prefer, not one forced upon them because of the service they use.
Because Matrix is federated, users have control over where their data and communication history is stored, and who has access to it.
The most technically savvy and privacy-conscious users can run their own homeserver, giving up little to no control of their data to untrusted third parties.
The majority of people will not run their own homeserver, but they still have the freedom to choose who to trust to operate one for them.
They could choose someone they know personally, or one of many commercial providers based on good reputation and merit.
There is no ultimatum of trusting a service provider or not using the service at all.
The combination of federation and support for end-to-end encryption allows users to communicate online without compromising their privacy.
As mentioned, federation allows users concerned with privacy to manage their own data.
End-to-end encryption prevents the content of messages from being stored on the homeserver at all—it is encrypted in transit and only exists in a human-readable form on the computers, mobile phones, and tablets of the people involved in the conversation.
This protects the users against malicious attackers, passive surveillance such as by government intelligence agencies, and greatly limits the potential damage of sensitive data being compromised in the event that the homeserver's data store is breached.
