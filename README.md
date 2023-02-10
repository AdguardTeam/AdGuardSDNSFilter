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

## DNS filter structure

### Ad servers

#### These filter lists block domains that are used to provide and show advertisements on websites

* [AdGuard Base filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/BaseFilter/sections/adservers.txt)

* [AdGuard Base filter — first-party servers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/BaseFilter/sections/adservers_firstparty.txt)

* [AdGuard Base filter — foreign servers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/BaseFilter/sections/foreign.txt)

* [AdGuard Mobile Ads filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/MobileFilter/sections/adservers.txt)

* [AdGuard Spanish/Portuguese filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/SpanishFilter/sections/adservers.txt)

* [AdGuard Russian filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/RussianFilter/sections/adservers.txt)

* [AdGuard Russian filter — first-party servers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/RussianFilter/sections/adservers_firstparty.txt)

* [AdGuard Turkish filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/TurkishFilter/sections/adservers.txt)

* [AdGuard Turkish filter — first-party servers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/TurkishFilter/sections/adservers_firstparty.txt)

* [AdGuard French filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/FrenchFilter/sections/adservers.txt)

* [AdGuard Japanese filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/JapaneseFilter/sections/adservers.txt)

* [AdGuard German filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/GermanFilter/sections/adservers.txt)

* [AdGuard Chinese filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/ChineseFilter/sections/adservers.txt)

* [AdGuard Dutch filter](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/DutchFilter/sections/adservers.txt)

* [AdGuard Dutch filter — first-party servers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/DutchFilter/sections/adservers_firstparty.txt)

* [EasyList](https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers.txt)

* [EasyList — third-party servers](https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_thirdparty.txt)

* [EasyList Germany](https://raw.githubusercontent.com/easylist/easylistgermany/master/easylistgermany/easylistgermany_adservers.txt)

* [EasyList Italy](https://raw.githubusercontent.com/easylist/easylistitaly/master/easylistitaly/easylistitaly_adservers.txt)

* [EasyList China](https://raw.githubusercontent.com/easylist/easylistchina/master/easylistchina.txt)

* [EasyList Dutch](https://raw.githubusercontent.com/easylist/easylistdutch/master/easylistdutch/block_third_party_server.txt)

* [ABPindo](https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/adservers.txt)

* [ABPindo — third-party servers](https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/thirdparty.txt)

* [AdblockID](https://raw.githubusercontent.com/realodix/AdBlockID/master/src/adservers.adfl)

* [hostsVN](https://raw.githubusercontent.com/bigdargon/hostsVN/master/filters/adservers.txt)

### Tracking servers

#### These filter lists block domains that are used for tracking and analytics

* [AdGuard Tracking Protection filter — third-party trackers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/SpywareFilter/sections/tracking_servers.txt)

* [AdGuard Tracking Protection filter — first-party trackers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/SpywareFilter/sections/tracking_servers_firstparty.txt)

* [AdGuard Tracking Protection filter — mobile trackers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/SpywareFilter/sections/mobile.txt)

* [EasyPrivacy](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_trackingservers.txt)

* [EasyPrivacy — third-party trackers](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_thirdparty.txt)

* [EasyPrivacy — international trackers](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_trackingservers_international.txt)

* [EasyPrivacy — third-party international](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_thirdparty_international.txt)

### Cryptominers

#### These filter lists are used against cryptominers

* [AdGuard Base filter cryptominers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/BaseFilter/sections/cryptominers.txt)

### Exception

#### These lists are used to exclude domains that cause serious site breakages

* [Exclusion rules](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/Filters/exclusions.txt)
* [Exception rules](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/Filters/exceptions.txt)

### News Exchange

#### These lists are used to block teaser advertisements

* [AdGuard Russian filter news exchange servers](https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/RussianFilter/sections/news_exchange.txt)

### Regional lists

#### These filter lists block various types of advertising, tracking, scams and malware on sites of a specific language group

* [Frellwits Swedish Filter](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt)
* [Persian Blocker Hosts](https://raw.githubusercontent.com/MasterKia/PersianBlocker/main/PersianBlockerHosts.txt)

### Others

* [Additional rules](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/Filters/rules.txt)
