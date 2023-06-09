UPDATE `performers`
SET `country` = CASE
  WHEN LENGTH(TRIM(`country`)) == 2 THEN TRIM(`country`)
  ELSE CASE `country`
		WHEN 'Afghanistan' THEN 'AF'
		WHEN 'Albania' THEN 'AL'
		WHEN 'Algeria' THEN 'DZ'
		WHEN 'America' THEN 'US'
		WHEN 'American' THEN 'US'
		WHEN 'American Samoa' THEN 'AS'
		WHEN 'Andorra' THEN 'AD'
		WHEN 'Angola' THEN 'AO'
		WHEN 'Anguilla' THEN 'AI'
		WHEN 'Antarctica' THEN 'AQ'
		WHEN 'Antigua and Barbuda' THEN 'AG'
		WHEN 'Argentina' THEN 'AR'
		WHEN 'Armenia' THEN 'AM'
		WHEN 'Aruba' THEN 'AW'
		WHEN 'Australia' THEN 'AU'
		WHEN 'Austria' THEN 'AT'
		WHEN 'Azerbaijan' THEN 'AZ'
		WHEN 'Bahamas' THEN 'BS'
		WHEN 'Bahrain' THEN 'BH'
		WHEN 'Bangladesh' THEN 'BD'
		WHEN 'Barbados' THEN 'BB'
		WHEN 'Belarus' THEN 'BY'
		WHEN 'Belgium' THEN 'BE'
		WHEN 'Belize' THEN 'BZ'
		WHEN 'Benin' THEN 'BJ'
		WHEN 'Bermuda' THEN 'BM'
		WHEN 'Bhutan' THEN 'BT'
		WHEN 'Bolivia' THEN 'BO'
		WHEN 'Bosnia and Herzegovina' THEN 'BA'
		WHEN 'Botswana' THEN 'BW'
		WHEN 'Bouvet Island' THEN 'BV'
		WHEN 'Brazil' THEN 'BR'
		WHEN 'British Indian Ocean Territory' THEN 'IO'
		WHEN 'Brunei Darussalam' THEN 'BN'
		WHEN 'Bulgaria' THEN 'BG'
		WHEN 'Burkina Faso' THEN 'BF'
		WHEN 'Burundi' THEN 'BI'
		WHEN 'Cambodia' THEN 'KH'
		WHEN 'Cameroon' THEN 'CM'
		WHEN 'Canada' THEN 'CA'
		WHEN 'Cape Verde' THEN 'CV'
		WHEN 'Cayman Islands' THEN 'KY'
		WHEN 'Central African Republic' THEN 'CF'
		WHEN 'Chad' THEN 'TD'
		WHEN 'Chile' THEN 'CL'
		WHEN 'China' THEN 'CN'
		WHEN 'Christmas Island' THEN 'CX'
		WHEN 'Cocos (Keeling) Islands' THEN 'CC'
		WHEN 'Colombia' THEN 'CO'
		WHEN 'Comoros' THEN 'KM'
		WHEN 'Congo' THEN 'CG'
		WHEN 'Congo the Democratic Republic of the' THEN 'CD'
		WHEN 'Cook Islands' THEN 'CK'
		WHEN 'Costa Rica' THEN 'CR'
		WHEN 'Cote D''Ivoire' THEN 'CI'
		WHEN 'Croatia' THEN 'HR'
		WHEN 'Cuba' THEN 'CU'
		WHEN 'Cyprus' THEN 'CY'
		WHEN 'Czech Republic' THEN 'CZ'
		WHEN 'Czechia' THEN 'CZ'
		WHEN 'Denmark' THEN 'DK'
		WHEN 'Djibouti' THEN 'DJ'
		WHEN 'Dominica' THEN 'DM'
		WHEN 'Dominican Republic' THEN 'DO'
		WHEN 'Ecuador' THEN 'EC'
		WHEN 'Egypt' THEN 'EG'
		WHEN 'El Salvador' THEN 'SV'
		WHEN 'Equatorial Guinea' THEN 'GQ'
		WHEN 'Eritrea' THEN 'ER'
		WHEN 'Estonia' THEN 'EE'
		WHEN 'Ethiopia' THEN 'ET'
		WHEN 'Falkland Islands (Malvinas)' THEN 'FK'
		WHEN 'Faroe Islands' THEN 'FO'
		WHEN 'Fiji' THEN 'FJ'
		WHEN 'Finland' THEN 'FI'
		WHEN 'France' THEN 'FR'
		WHEN 'French Guiana' THEN 'GF'
		WHEN 'French Polynesia' THEN 'PF'
		WHEN 'French Southern Territories' THEN 'TF'
		WHEN 'Gabon' THEN 'GA'
		WHEN 'Gambia' THEN 'GM'
		WHEN 'Georgia' THEN 'GE'
		WHEN 'Germany' THEN 'DE'
		WHEN 'Ghana' THEN 'GH'
		WHEN 'Gibraltar' THEN 'GI'
		WHEN 'Greece' THEN 'GR'
		WHEN 'Greenland' THEN 'GL'
		WHEN 'Grenada' THEN 'GD'
		WHEN 'Guadeloupe' THEN 'GP'
		WHEN 'Guam' THEN 'GU'
		WHEN 'Guatemala' THEN 'GT'
		WHEN 'Guinea' THEN 'GN'
		WHEN 'Guinea-Bissau' THEN 'GW'
		WHEN 'Guyana' THEN 'GY'
		WHEN 'Haiti' THEN 'HT'
		WHEN 'Heard Island and McDonald Islands' THEN 'HM'
		WHEN 'Holy See (Vatican City State)' THEN 'VA'
		WHEN 'Honduras' THEN 'HN'
		WHEN 'Hong Kong' THEN 'HK'
		WHEN 'Hungary' THEN 'HU'
		WHEN 'Iceland' THEN 'IS'
		WHEN 'India' THEN 'IN'
		WHEN 'Indonesia' THEN 'ID'
		WHEN 'Iran' THEN 'IR'
		WHEN 'Iran Islamic Republic of' THEN 'IR'
		WHEN 'Iraq' THEN 'IQ'
		WHEN 'Ireland' THEN 'IE'
		WHEN 'Israel' THEN 'IL'
		WHEN 'Italy' THEN 'IT'
		WHEN 'Jamaica' THEN 'JM'
		WHEN 'Japan' THEN 'JP'
		WHEN 'Jordan' THEN 'JO'
		WHEN 'Kazakhstan' THEN 'KZ'
		WHEN 'Kenya' THEN 'KE'
		WHEN 'Kiribati' THEN 'KI'
		WHEN 'North Korea' THEN 'KP'
		WHEN 'South Korea' THEN 'KR'
		WHEN 'Kuwait' THEN 'KW'
		WHEN 'Kyrgyzstan' THEN 'KG'
		WHEN 'Lao People''s Democratic Republic' THEN 'LA'
		WHEN 'Latvia' THEN 'LV'
		WHEN 'Lebanon' THEN 'LB'
		WHEN 'Lesotho' THEN 'LS'
		WHEN 'Liberia' THEN 'LR'
		WHEN 'Libya' THEN 'LY'
		WHEN 'Liechtenstein' THEN 'LI'
		WHEN 'Lithuania' THEN 'LT'
		WHEN 'Luxembourg' THEN 'LU'
		WHEN 'Macao' THEN 'MO'
		WHEN 'Madagascar' THEN 'MG'
		WHEN 'Malawi' THEN 'MW'
		WHEN 'Malaysia' THEN 'MY'
		WHEN 'Maldives' THEN 'MV'
		WHEN 'Mali' THEN 'ML'
		WHEN 'Malta' THEN 'MT'
		WHEN 'Marshall Islands' THEN 'MH'
		WHEN 'Martinique' THEN 'MQ'
		WHEN 'Mauritania' THEN 'MR'
		WHEN 'Mauritius' THEN 'MU'
		WHEN 'Mayotte' THEN 'YT'
		WHEN 'Mexico' THEN 'MX'
		WHEN 'Micronesia Federated States of' THEN 'FM'
		WHEN 'Moldova' THEN 'MD'
		WHEN 'Moldova Republic of' THEN 'MD'
		WHEN 'Moldova, Republic of' THEN 'MD'
		WHEN 'Monaco' THEN 'MC'
		WHEN 'Mongolia' THEN 'MN'
		WHEN 'Montserrat' THEN 'MS'
		WHEN 'Morocco' THEN 'MA'
		WHEN 'Mozambique' THEN 'MZ'
		WHEN 'Myanmar' THEN 'MM'
		WHEN 'Namibia' THEN 'NA'
		WHEN 'Nauru' THEN 'NR'
		WHEN 'Nepal' THEN 'NP'
		WHEN 'Netherlands' THEN 'NL'
		WHEN 'New Caledonia' THEN 'NC'
		WHEN 'New Zealand' THEN 'NZ'
		WHEN 'Nicaragua' THEN 'NI'
		WHEN 'Niger' THEN 'NE'
		WHEN 'Nigeria' THEN 'NG'
		WHEN 'Niue' THEN 'NU'
		WHEN 'Norfolk Island' THEN 'NF'
		WHEN 'North Macedonia Republic of' THEN 'MK'
		WHEN 'Northern Mariana Islands' THEN 'MP'
		WHEN 'Norway' THEN 'NO'
		WHEN 'Oman' THEN 'OM'
		WHEN 'Pakistan' THEN 'PK'
		WHEN 'Palau' THEN 'PW'
		WHEN 'Palestinian Territory Occupied' THEN 'PS'
		WHEN 'Panama' THEN 'PA'
		WHEN 'Papua New Guinea' THEN 'PG'
		WHEN 'Paraguay' THEN 'PY'
		WHEN 'Peru' THEN 'PE'
		WHEN 'Philippines' THEN 'PH'
		WHEN 'Pitcairn' THEN 'PN'
		WHEN 'Poland' THEN 'PL'
		WHEN 'Portugal' THEN 'PT'
		WHEN 'Puerto Rico' THEN 'PR'
		WHEN 'Qatar' THEN 'QA'
		WHEN 'Reunion' THEN 'RE'
		WHEN 'Romania' THEN 'RO'
		WHEN 'Russia' THEN 'RU'
		WHEN 'Russian Federation' THEN 'RU'
		WHEN 'Rwanda' THEN 'RW'
		WHEN 'Saint Helena' THEN 'SH'
		WHEN 'Saint Kitts and Nevis' THEN 'KN'
		WHEN 'Saint Lucia' THEN 'LC'
		WHEN 'Saint Pierre and Miquelon' THEN 'PM'
		WHEN 'Saint Vincent and the Grenadines' THEN 'VC'
		WHEN 'Samoa' THEN 'WS'
		WHEN 'San Marino' THEN 'SM'
		WHEN 'Sao Tome and Principe' THEN 'ST'
		WHEN 'Saudi Arabia' THEN 'SA'
		WHEN 'Senegal' THEN 'SN'
		WHEN 'Seychelles' THEN 'SC'
		WHEN 'Sierra Leone' THEN 'SL'
		WHEN 'Singapore' THEN 'SG'
		WHEN 'Slovakia' THEN 'SK'
		WHEN 'Slovak Republic' THEN 'SK'
		WHEN 'Slovenia' THEN 'SI'
		WHEN 'Solomon Islands' THEN 'SB'
		WHEN 'Somalia' THEN 'SO'
		WHEN 'South Africa' THEN 'ZA'
		WHEN 'South Georgia and the South Sandwich Islands' THEN 'GS'
		WHEN 'Spain' THEN 'ES'
		WHEN 'Sri Lanka' THEN 'LK'
		WHEN 'Sudan' THEN 'SD'
		WHEN 'Suriname' THEN 'SR'
		WHEN 'Svalbard and Jan Mayen' THEN 'SJ'
		WHEN 'Eswatini' THEN 'SZ'
		WHEN 'Sweden' THEN 'SE'
		WHEN 'Switzerland' THEN 'CH'
		WHEN 'Syrian Arab Republic' THEN 'SY'
		WHEN 'Taiwan' THEN 'TW'
		WHEN 'Tajikistan' THEN 'TJ'
		WHEN 'Tanzania United Republic of' THEN 'TZ'
		WHEN 'Thailand' THEN 'TH'
		WHEN 'Timor-Leste' THEN 'TL'
		WHEN 'Togo' THEN 'TG'
		WHEN 'Tokelau' THEN 'TK'
		WHEN 'Tonga' THEN 'TO'
		WHEN 'Trinidad and Tobago' THEN 'TT'
		WHEN 'Tunisia' THEN 'TN'
		WHEN 'Turkey' THEN 'TR'
		WHEN 'Turkmenistan' THEN 'TM'
		WHEN 'Turks and Caicos Islands' THEN 'TC'
		WHEN 'Tuvalu' THEN 'TV'
		WHEN 'Uganda' THEN 'UG'
		WHEN 'Ukraine' THEN 'UA'
		WHEN 'United Arab Emirates' THEN 'AE'
		WHEN 'England' THEN 'GB'
		WHEN 'Great Britain' THEN 'GB'
		WHEN 'United Kingdom' THEN 'GB'
		WHEN 'USA' THEN 'US'
		WHEN 'United States' THEN 'US'
		WHEN 'United States of America' THEN 'US'
		WHEN 'United States Minor Outlying Islands' THEN 'UM'
		WHEN 'Uruguay' THEN 'UY'
		WHEN 'Uzbekistan' THEN 'UZ'
		WHEN 'Vanuatu' THEN 'VU'
		WHEN 'Venezuela' THEN 'VE'
		WHEN 'Vietnam' THEN 'VN'
		WHEN 'Virgin Islands British' THEN 'VG'
		WHEN 'Virgin Islands U.S.' THEN 'VI'
		WHEN 'Wallis and Futuna' THEN 'WF'
		WHEN 'Western Sahara' THEN 'EH'
		WHEN 'Yemen' THEN 'YE'
		WHEN 'Zambia' THEN 'ZM'
		WHEN 'Zimbabwe' THEN 'ZW'
		WHEN 'Åland Islands' THEN 'AX'
		WHEN 'Bonaire Sint Eustatius and Saba' THEN 'BQ'
		WHEN 'Curaçao' THEN 'CW'
		WHEN 'Guernsey' THEN 'GG'
		WHEN 'Isle of Man' THEN 'IM'
		WHEN 'Jersey' THEN 'JE'
		WHEN 'Montenegro' THEN 'ME'
		WHEN 'Saint Barthélemy' THEN 'BL'
		WHEN 'Saint Martin (French part)' THEN 'MF'
		WHEN 'Serbia' THEN 'RS'
		WHEN 'Sint Maarten (Dutch part)' THEN 'SX'
		WHEN 'South Sudan' THEN 'SS'
		WHEN 'Kosovo' THEN 'XK'
		ELSE `country`
	END
END;
