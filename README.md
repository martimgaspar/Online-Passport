<p align="center">
  <img src="mainlogo.png" align="" alt="Logo">
</p>

<h1 align="center">Online Passport</h1> 

<p align="center">
Submission for the 2020 MLH Summer League RookieHacks Hackathon. An implementation of a potential block-chain application to adjust the current passport system.
</p>

<p align="center">
A link to an online demo version can be found here: <a href="https://onlinepassport.netlify.app" target="_blank">onlinepassport.netlify.app</a>
</p>

<p align="center">
A link to our final submission to devpost can be foud here: <a href="https://devpost.com/software/online-passport" target="_blank">devpost.com/software/online-passport</a> 
</p>

## RookieHacks Hackathon Theme

The theme of this hackathon was to embrace the word `rookie`. This led to two separate paths. One path involved beginners to try and learn something new and make a final project. The other path was the one my team and I took was to learn a brand new framework in just 2 days and make a final project using it. Since we all knew other languages beforehand, we all decided to learn Ruby and make our project with that. We also decided to learn block-chain for the first time and use that as the key technology of our application. 

## Overview of Our Completed Project

We made a decentralized passport verification system to prevent people from altering passports or creating fake passports. The benefits of this system include speeding up the passport verification process (leading to shorter wait times at airports, for example) as well as increasing the ease of verification. We will do this by using blockchain.

Everyone’s passports will contain a digital part. This part will store passport information, and this information can be used by a verification system to verify the passport. Included in the stored information is a record of each time the passport was used, stored in blocks (each block holding a record of a time the passport was used, as well as the data held on the passport at the time of use). The verification system will consist of several identical databases. Each database holds everyone’s passport data, stored in blocks (each block holding a record of a time the passport was used, as well as the data held on the passport at the time of use).  Whenever someone tries to use their passport, their blockchain of passport data will be checked among all of the databases in the verification system. If the passport is valid, the system will then add the record of visit to the passport, and update all databases. 

The passport cannot be altered, because as soon as it is, its hash changes, and no longer matches any of the verification databases. Past records cannot be altered without going to extreme lengths, because you would have to not only change the records on your passport, but you would also have to change the records in every single database in the verification system. Not only this, but every single record AFTER the one the was altered would have to be altered as well, for every database, thanks to the nature of blockchain.

The result is a secure system to hold passport data. This system would be incredibly hard to alter. The system could flourish into more practical uses concerning security through E-Mails and Cyber Security.

## Setup

#### Clone

```
git clone https://github.com/martimgaspar/Online-Passport
```

#### Usage 
```
cd Online-Passport
```
```
ruby main.rb
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
