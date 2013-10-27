Video Policy System
===

Imagine you’re building a version of YouTube with 100 videos (but scalable to hundreds of thousands).  On your site each video has a “policy” per country.  The possible policies are monetize, free, and block.  (This is roughly how YouTube’s policy system works.)

* Monetize – a video can be viewed, and can have ads run against it
* Free – a video can be viewed, but cannot have ads run against it
* Block – a video cannot be viewed

Your mission is to create a system to check rights policy for videos in a given country.  Countries are represented by ISO-country codes [http://en.wikipedia.org/wiki/ISO_3166-1](http://en.wikipedia.org/wiki/ISO_3166-1).

---

### Sample Monetization Policy
Policy for one sample video:

* Monetize
    * Canada (CA)
    * Mexico (MX)
    * Taiwan (TW)
    * India (IN)
* Free
    * China (CN)
* Block
    * United States (US)