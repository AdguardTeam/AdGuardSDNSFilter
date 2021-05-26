# AdGuard DNS filter

Formerly *AdGuard Simplified Domain names filter*.

A filter composed of several other filters (AdGuard Base filter, Social media filter, Tracking Protection filter, Mobile Ads filter, EasyList and EasyPrivacy) and simplified specifically to be better compatible with DNS-level ad blocking.

The direct link to the filter: https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt.

Please note, that to use this filter it is necessary to support [basic ad blocking rules syntax](https://kb.adguard.com/en/general/how-to-create-your-own-ad-filters). It does not make much sense to extract just the hosts file.

This is a default filter for [AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) and for the public [AdGuard DNS](https://adguard.com/en/adguard-dns/overview.html) servers.

### How to build AdGuard DNS filter manually

```
yarn install
yarn run build
```

The output is written to `Filters/filter.txt`.

Test
