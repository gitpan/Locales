{"delimiters":{"quotation_start":"â","quotation_end":"â","alternate_quotation_start":"â","alternate_quotation_end":"â"},"orientation":{"lines":"top-to-bottom","characters":"left-to-right"},"posix":{"nostr":"no:n","yesstr":"yes:y"},"plural_forms":{"category_list":["one","few","many","other"],"category_rules_function":null,"category_rules":{"one":"n mod 10 is 1 and n mod 100 is not 11","few":"n mod 10 in 2..4 and n mod 100 not in 12..14","many":"n mod 10 is 0 or n mod 10 in 5..9 or n mod 100 in 11..14"},"category_rules_compiled":{"one":function (n) {if ( (( ( parseInt(n) % 10) == 1) && ( ( parseInt(n) % 100) != 11))) { return 'one'; } return;},"few":function (n) {if ( (( parseInt(n) == n && ( parseInt(n) % 10) >= 2 && ( parseInt(n) % 10) <= 4 ) && ( parseInt(n) != n || ( parseInt(n) % 100) < 12 || ( parseInt(n) % 100) > 14 ))) { return 'few'; } return;},"many":function (n) {if ( (( ( parseInt(n) % 10) == 0)) ||  (( parseInt(n) == n && ( parseInt(n) % 10) >= 5 && ( parseInt(n) % 10) <= 9 )) ||  (( parseInt(n) == n && ( parseInt(n) % 100) >= 11 && ( parseInt(n) % 100) <= 14 ))) { return 'many'; } return;}}},"cldr_formats":{"territory":"Region: {0}","_decimal_format_decimal":".","language":"Language: {0}","percent":"#,##0%","locale":"{0} ({1})","_decimal_format_group":",","_percent_format_percent":"%","decimal":"#,##0.###","ellipsis":{"medial":"{0}…{1}","final":"{0}…","initial":"…{0}"},"list":{"middle":"{0}, {1}","2":"{0} and {1}","start":"{0}, {1}","end":"{0}, and {1}"}},"fallback":[],"characters":{"more_information":"?"}}