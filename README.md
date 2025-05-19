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

* [AdGuard Base filter](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/adservers.txt)

* [AdGuard Base filter — first-party servers](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/adservers_firstparty.txt)

* [AdGuard Base filter — foreign servers](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/foreign.txt)

* [AdGuard Mobile Ads filter](https://adguardteam.github.io/AdguardFilters/MobileFilter/sections/adservers.txt)

* [AdGuard Spanish/Portuguese filter](https://adguardteam.github.io/AdguardFilters/SpanishFilter/sections/adservers.txt)

* [AdGuard Spanish/Portuguese filter — first-party servers](https://adguardteam.github.io/AdguardFilters/FrenchFilter/sections/adservers_firstparty.txt)

* [AdGuard common Cyrillic filters ad servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/common-sections/adservers.txt)

* [AdGuard common Cyrillic filters ad servers — first-party servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/common-sections/adservers_firstparty.txt)

* [AdGuard Russian filter — first-party servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/RussianFilter/sections/adservers_firstparty.txt)

* [AdGuard Ukrainian filter — first-party servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/UkrainianFilter/sections/adservers_firstparty.txt)

* [AdGuard Belarusian language ad servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/Belarusian/sections/filter.txt)

* [AdGuard Bulgarian language ad servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/Bulgarian/sections/filter.txt)

* [AdGuard Kazakh language ad servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/Kazakh/sections/filter.txt)

* [AdGuard Turkish filter](https://adguardteam.github.io/AdguardFilters/TurkishFilter/sections/adservers.txt)

* [AdGuard Turkish filter — first-party servers](https://adguardteam.github.io/AdguardFilters/TurkishFilter/sections/adservers_firstparty.txt)

* [AdGuard French filter](https://adguardteam.github.io/AdguardFilters/FrenchFilter/sections/adservers.txt)

* [AdGuard French filter — first-party servers](https://adguardteam.github.io/AdguardFilters/FrenchFilter/sections/adservers_firstparty.txt)

* [AdGuard Japanese filter](https://adguardteam.github.io/AdguardFilters/JapaneseFilter/sections/adservers.txt)

* [AdGuard Japanese filter — first-party servers](https://adguardteam.github.io/AdguardFilters/JapaneseFilter/sections/adservers_firstparty.txt)

* [AdGuard German filter](https://adguardteam.github.io/AdguardFilters/GermanFilter/sections/adservers.txt)

* [AdGuard Chinese filter](https://adguardteam.github.io/AdguardFilters/ChineseFilter/sections/adservers.txt)

* [AdGuard Chinese filter — first-party servers](https://adguardteam.github.io/AdguardFilters/ChineseFilter/sections/adservers_firstparty.txt)

* [AdGuard Dutch filter](https://adguardteam.github.io/AdguardFilters/DutchFilter/sections/adservers.txt)

* [AdGuard Dutch filter — first-party servers](https://adguardteam.github.io/AdguardFilters/DutchFilter/sections/adservers_firstparty.txt)

* [EasyList](https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers.txt)

* [EasyList — third-party servers](https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_thirdparty.txt)

* [EasyList — adult third-party servers](https://raw.githubusercontent.com/easylist/easylist/master/easylist_adult/adult_adservers.txt)

* [EasyList — adult popup servers](https://raw.githubusercontent.com/easylist/easylist/master/easylist_adult/adult_adservers.txt)

* [EasyList Germany](https://raw.githubusercontent.com/easylist/easylistgermany/master/easylistgermany/easylistgermany_adservers.txt)

* [EasyList Hebrew](https://raw.githubusercontent.com/easylist/EasyListHebrew/master/adguard_hosts.txt)

* [EasyList Italy](https://raw.githubusercontent.com/easylist/easylistitaly/master/easylistitaly/easylistitaly_adservers.txt)

* [EasyList China](https://raw.githubusercontent.com/easylist/easylistchina/master/easylistchina.txt)

* [EasyList Dutch](https://raw.githubusercontent.com/easylist/easylistdutch/master/easylistdutch/block_third_party_server.txt)

* [ABPindo](https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/adservers.txt)

* [ABPindo — third-party servers](https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/thirdparty.txt)

* [AdblockID](https://raw.githubusercontent.com/realodix/AdBlockID/master/src/adservers.adfl)

* [hostsVN](https://raw.githubusercontent.com/bigdargon/hostsVN/master/filters/adservers.txt)

* [hostsVN Threat](https://raw.githubusercontent.com/bigdargon/hostsVN/master/extensions/threat/filter.txt)

* [List-KR filter](https://cdn.jsdelivr.net/gh/List-KR/List-KR@latest/filters-share/1st_domains.txt)

* [List-KR filter - third-party servers](https://cdn.jsdelivr.net/gh/List-KR/List-KR@latest/filters-share/3rd_domains.txt)

### Tracking servers

#### These filter lists block domains that are used for tracking and analytics

* [AdGuard Tracking Protection filter — third-party trackers](https://adguardteam.github.io/AdguardFilters/SpywareFilter/sections/tracking_servers.txt)

* [AdGuard Tracking Protection filter — first-party trackers](https://adguardteam.github.io/AdguardFilters/SpywareFilter/sections/tracking_servers_firstparty.txt)

* [AdGuard Tracking Protection filter — mobile trackers](https://adguardteam.github.io/AdguardFilters/SpywareFilter/sections/mobile.txt)

* [EasyPrivacy](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_trackingservers.txt)

* [EasyPrivacy — third-party trackers](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_thirdparty.txt)

* [EasyPrivacy — international trackers](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_trackingservers_international.txt)

* [EasyPrivacy — third-party international](https://raw.githubusercontent.com/easylist/easylist/master/easyprivacy/easyprivacy_thirdparty_international.txt)

### Cryptominers

#### These filter lists are used against cryptominers

* [AdGuard Base filter cryptominers](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/cryptominers.txt)

### Exception

#### These lists are used to exclude domains that cause serious site breakages

* [Exclusion rules](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/Filters/exclusions.txt)
* [Exception rules](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/Filters/exceptions.txt)

### Regional lists

#### These filter lists block various types of advertising, tracking, scams and malware on sites of a specific language group

* [Frellwits Swedish Filter](https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt)
* [Persian Blocker Hosts](https://raw.githubusercontent.com/MasterKia/PersianBlocker/main/PersianBlockerHosts.txt)

### Others

* [Additional rules](https://github.com/AdguardTeam/AdGuardSDNSFilter/blob/master/Filters/rules.txt)

## AdGuard DNS Popup Hosts filter

DNS-level blocking is a crude method that makes a blocked website appear as if it were malfunctioning from the user's perspective. While this approach may suffice for blocking sub-requests to trackers, it is less effective when a user attempts to access a blocked domain directly.

This filter blocks domains that the users tend to open (more precisely, they are opened against the users' will) and it redirects them to a designated "blocked page", which provides explanations regarding the reasons for blocking.

Although redirecting to a different IP address is not the ideal solution, we are hopeful that the [Structured Errors proposal](https://datatracker.ietf.org/doc/draft-ietf-dnsop-structured-dns-error/) will gain momentum. This would allow us to implement a better solution.

## AdGuard DNS Popup Hosts filter structure

The AdGuard DNS Popup Hosts filter includes only rules that contain the modifiers `popup`, `all`, and `document` from the lists provided. This selection effectively means that these rules are directed at sites that open in the main frame.

* [AdGuard Base filter ad servers](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/adservers.txt)
* [AdGuard Base filter ad servers first-party](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/adservers_firstparty.txt)
* [AdGuard Base filter ad servers foreign](https://adguardteam.github.io/AdguardFilters/BaseFilter/sections/foreign.txt)
* [EasyList ad servers](https://raw.githubusercontent.com/easylist/easylist/master/easylist/easylist_adservers.txt)
* [EasyList adult ad servers popup](https://raw.githubusercontent.com/easylist/easylist/master/easylist_adult/adult_adservers_popup.txt)
* [AdGuard Mobile Ads filter ad servers](https://adguardteam.github.io/AdguardFilters/MobileFilter/sections/adservers.txt)
* [AdGuard common Cyrillic filters ad servers](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/common-sections/adservers.txt)
* [AdGuard Russian filter ad servers first-party](https://adguardteam.github.io/AdguardFilters/CyrillicFilters/RussianFilter/sections/adservers_firstparty.txt)
* [Liste FR](https://raw.githubusercontent.com/easylist/listefr/master/liste_fr.txt)
* [ABPindo ad servers](https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/adservers.txt)
* [ABPindo ad servers third-party](https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/src/advert/thirdparty.txt)
