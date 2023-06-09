package scraper

import (
	"strings"

	"github.com/stashapp/stash/pkg/logger"
)

var countryNameMapping = map[string]string{
	"afghanistan":                          "AF",
	"albania":                              "AL",
	"algeria":                              "DZ",
	"america":                              "US",
	"american":                             "US",
	"american samoa":                       "AS",
	"andorra":                              "AD",
	"angola":                               "AO",
	"anguilla":                             "AI",
	"antarctica":                           "AQ",
	"antigua and barbuda":                  "AG",
	"argentina":                            "AR",
	"armenia":                              "AM",
	"aruba":                                "AW",
	"australia":                            "AU",
	"austria":                              "AT",
	"azerbaijan":                           "AZ",
	"bahamas":                              "BS",
	"bahrain":                              "BH",
	"bangladesh":                           "BD",
	"barbados":                             "BB",
	"belarus":                              "BY",
	"belgium":                              "BE",
	"belize":                               "BZ",
	"benin":                                "BJ",
	"bermuda":                              "BM",
	"bhutan":                               "BT",
	"bolivia":                              "BO",
	"bosnia and herzegovina":               "BA",
	"botswana":                             "BW",
	"bouvet island":                        "BV",
	"brazil":                               "BR",
	"british indian ocean territory":       "IO",
	"brunei darussalam":                    "BN",
	"bulgaria":                             "BG",
	"burkina faso":                         "BF",
	"burundi":                              "BI",
	"cambodia":                             "KH",
	"cameroon":                             "CM",
	"canada":                               "CA",
	"cape verde":                           "CV",
	"cayman islands":                       "KY",
	"central african republic":             "CF",
	"chad":                                 "TD",
	"chile":                                "CL",
	"china":                                "CN",
	"christmas island":                     "CX",
	"cocos (keeling) islands":              "CC",
	"colombia":                             "CO",
	"comoros":                              "KM",
	"congo":                                "CG",
	"congo the democratic republic of the": "CD",
	"cook islands":                         "CK",
	"costa rica":                           "CR",
	"cote d'ivoire":                        "CI",
	"croatia":                              "HR",
	"cuba":                                 "CU",
	"cyprus":                               "CY",
	"czech republic":                       "CZ",
	"czechia":                              "CZ",
	"denmark":                              "DK",
	"djibouti":                             "DJ",
	"dominica":                             "DM",
	"dominican republic":                   "DO",
	"ecuador":                              "EC",
	"egypt":                                "EG",
	"el salvador":                          "SV",
	"equatorial guinea":                    "GQ",
	"eritrea":                              "ER",
	"estonia":                              "EE",
	"ethiopia":                             "ET",
	"falkland islands (malvinas)":          "FK",
	"faroe islands":                        "FO",
	"fiji":                                 "FJ",
	"finland":                              "FI",
	"france":                               "FR",
	"french guiana":                        "GF",
	"french polynesia":                     "PF",
	"french southern territories":          "TF",
	"gabon":                                "GA",
	"gambia":                               "GM",
	"georgia":                              "GE",
	"germany":                              "DE",
	"ghana":                                "GH",
	"gibraltar":                            "GI",
	"greece":                               "GR",
	"greenland":                            "GL",
	"grenada":                              "GD",
	"guadeloupe":                           "GP",
	"guam":                                 "GU",
	"guatemala":                            "GT",
	"guinea":                               "GN",
	"guinea-bissau":                        "GW",
	"guyana":                               "GY",
	"haiti":                                "HT",
	"heard island and mcdonald islands":    "HM",
	"holy see (vatican city state)":        "VA",
	"honduras":                             "HN",
	"hong kong":                            "HK",
	"hungary":                              "HU",
	"iceland":                              "IS",
	"india":                                "IN",
	"indonesia":                            "ID",
	"iran":                                 "IR",
	"iran islamic republic of":             "IR",
	"iraq":                                 "IQ",
	"ireland":                              "IE",
	"israel":                               "IL",
	"italy":                                "IT",
	"jamaica":                              "JM",
	"japan":                                "JP",
	"jordan":                               "JO",
	"kazakhstan":                           "KZ",
	"kenya":                                "KE",
	"kiribati":                             "KI",
	"north korea":                          "KP",
	"south korea":                          "KR",
	"kuwait":                               "KW",
	"kyrgyzstan":                           "KG",
	"lao people's democratic republic":     "LA",
	"latvia":                               "LV",
	"lebanon":                              "LB",
	"lesotho":                              "LS",
	"liberia":                              "LR",
	"libya":                                "LY",
	"liechtenstein":                        "LI",
	"lithuania":                            "LT",
	"luxembourg":                           "LU",
	"macao":                                "MO",
	"madagascar":                           "MG",
	"malawi":                               "MW",
	"malaysia":                             "MY",
	"maldives":                             "MV",
	"mali":                                 "ML",
	"malta":                                "MT",
	"marshall islands":                     "MH",
	"martinique":                           "MQ",
	"mauritania":                           "MR",
	"mauritius":                            "MU",
	"mayotte":                              "YT",
	"mexico":                               "MX",
	"micronesia federated states of":       "FM",
	"moldova":                              "MD",
	"moldova republic of":                  "MD",
	"moldova, republic of":                 "MD",
	"monaco":                               "MC",
	"mongolia":                             "MN",
	"montserrat":                           "MS",
	"morocco":                              "MA",
	"mozambique":                           "MZ",
	"myanmar":                              "MM",
	"namibia":                              "NA",
	"nauru":                                "NR",
	"nepal":                                "NP",
	"netherlands":                          "NL",
	"new caledonia":                        "NC",
	"new zealand":                          "NZ",
	"nicaragua":                            "NI",
	"niger":                                "NE",
	"nigeria":                              "NG",
	"niue":                                 "NU",
	"norfolk island":                       "NF",
	"north macedonia republic of":          "MK",
	"northern mariana islands":             "MP",
	"norway":                               "NO",
	"oman":                                 "OM",
	"pakistan":                             "PK",
	"palau":                                "PW",
	"palestinian territory occupied":       "PS",
	"panama":                               "PA",
	"papua new guinea":                     "PG",
	"paraguay":                             "PY",
	"peru":                                 "PE",
	"philippines":                          "PH",
	"pitcairn":                             "PN",
	"poland":                               "PL",
	"portugal":                             "PT",
	"puerto rico":                          "PR",
	"qatar":                                "QA",
	"reunion":                              "RE",
	"romania":                              "RO",
	"russia":                               "RU",
	"russian federation":                   "RU",
	"rwanda":                               "RW",
	"saint helena":                         "SH",
	"saint kitts and nevis":                "KN",
	"saint lucia":                          "LC",
	"saint pierre and miquelon":            "PM",
	"saint vincent and the grenadines":     "VC",
	"samoa":                                "WS",
	"san marino":                           "SM",
	"sao tome and principe":                "ST",
	"saudi arabia":                         "SA",
	"senegal":                              "SN",
	"seychelles":                           "SC",
	"sierra leone":                         "SL",
	"singapore":                            "SG",
	"slovakia":                             "SK",
	"slovak republic":                      "SK",
	"slovenia":                             "SI",
	"solomon islands":                      "SB",
	"somalia":                              "SO",
	"south africa":                         "ZA",
	"south georgia and the south sandwich islands": "GS",
	"spain":                                "ES",
	"sri lanka":                            "LK",
	"sudan":                                "SD",
	"suriname":                             "SR",
	"svalbard and jan mayen":               "SJ",
	"eswatini":                             "SZ",
	"sweden":                               "SE",
	"switzerland":                          "CH",
	"syrian arab republic":                 "SY",
	"taiwan":                               "TW",
	"tajikistan":                           "TJ",
	"tanzania united republic of":          "TZ",
	"thailand":                             "TH",
	"timor-leste":                          "TL",
	"togo":                                 "TG",
	"tokelau":                              "TK",
	"tonga":                                "TO",
	"trinidad and tobago":                  "TT",
	"tunisia":                              "TN",
	"turkey":                               "TR",
	"turkmenistan":                         "TM",
	"turks and caicos islands":             "TC",
	"tuvalu":                               "TV",
	"uganda":                               "UG",
	"ukraine":                              "UA",
	"united arab emirates":                 "AE",
	"england":                              "GB",
	"great britain":                        "GB",
	"united kingdom":                       "GB",
	"usa":                                  "US",
	"united states":                        "US",
	"united states of america":             "US",
	"united states minor outlying islands": "UM",
	"uruguay":                              "UY",
	"uzbekistan":                           "UZ",
	"vanuatu":                              "VU",
	"venezuela":                            "VE",
	"vietnam":                              "VN",
	"virgin islands british":               "VG",
	"virgin islands u.s.":                  "VI",
	"wallis and futuna":                    "WF",
	"western sahara":                       "EH",
	"yemen":                                "YE",
	"zambia":                               "ZM",
	"zimbabwe":                             "ZW",
	"åland islands":                        "AX",
	"bonaire sint eustatius and saba":      "BQ",
	"curaçao":                              "CW",
	"guernsey":                             "GG",
	"isle of man":                          "IM",
	"jersey":                               "JE",
	"montenegro":                           "ME",
	"saint barthélemy":                     "BL",
	"saint martin (french part)":           "MF",
	"serbia":                               "RS",
	"sint maarten (dutch part)":            "SX",
	"south sudan":                          "SS",
	"kosovo":                               "XK",
}

func resolveCountryName(name *string) *string {
	if name == nil {
		return nil
	}

	trimmedName := strings.TrimSpace(*name)
	if len(trimmedName) == 2 {
		// If name is two characters it's likely already an ISO value
		return &trimmedName
	} else if len(trimmedName) == 0 {
		return nil
	}

	v, exists := countryNameMapping[strings.ToLower(trimmedName)]
	if exists {
		return &v
	}

	logger.Debugf("Scraped country was not recognized: %s", trimmedName)

	// return original name
	return &trimmedName
}
