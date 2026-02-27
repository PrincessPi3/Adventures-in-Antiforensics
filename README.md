# Adventures in Antiforensics and AV IDS/IPS/AV Evasion
# WIP
## Platform Independant Methods
### Data Destruction
#### Shredding
* HDD vs SSD
  * Overwrite settings
    * SSD lifespan
    * HDD difficulty
    * Zeroing
    * Free space shredding
    * Limitations
      * File tips
        * Vendor-specific data destruction
      * bad sector remnants
#### Encrypted Data Nuking
* Encrypt data and to destory, shred the encryption headers and shutdown
### Encryption
* Unencrypted data leaks
  * Out of band data leaks
    * Backup leaks
    * Cloud leaks
#### Key Management
* Key creation
  * Passphrases
    * Password managers
      * Where they are ok
      * Where they are not
    * Creating a passphrase manually
      * physical paper
        * +mind
    * Weaknesses
      * Third Party
      * KDF or Hashing algo
      * Breached passwords
      * Guessable passwords
* Key defence
  * Key Durability
  * Key protection
  * Key leaks
#### Whole disk
* Robustness of crypto
  * Investigate
    * window
    * linux
* virtual machines
* NO BITLOCKER
  * NO BITLOCKER UPLOAD TO M$ JESUS FUCK
* Tooling
  * shred encryption headers of disk and force shutdown
    * force fork to background, clear, and exit
      * linux
        * something like `alias FORCEMETHEFUCKOFF='(setsid sudo bash /bin/KILLITWITHFIRE.sh && sudo shutdown now &); clear; exit'`
          * where KILLITWITHFIRE.sh shreds the disks encryption headers with shred
#### Specific Data
* Unencrypted data leaks
* Unencrypted remnants
#### Symmetric
#### Assymetric
### Internet Anonymity
#### Tor
* Settings
  * Relays
  * Tor browser
  * Hardware identifiers
  * Other leaks
* Internal to the os (bad)
  * [pniux](https://blog.torproject.org/introducing-oniux-tor-isolation-using-linux-namespaces/)
* physical external to device (much better) for per-request tor hopping on a specific command/operation
  * openwrt?
    * kill switch
    * sanity checks
#### Opsec