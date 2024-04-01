import 'package:airoxal/features/payment/screens/buy_data.dart';
import 'package:airoxal/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentCountry extends StatelessWidget {
  const CurrentCountry(
      {super.key,
      required this.coverage,
      required this.remainingdata,
      required this.timeleft,
      required this.Price});

  final String coverage;
  final String remainingdata;
  final String timeleft;
  final String Price;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        height: 0.30 * height,
        width: 0.9 * width,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff082777),
                Color(0xff88A9FD),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/icons/antenna.png',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Kargi Mobile',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/world.svg',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Coverage',
                            style: whitemiddle,
                          )
                        ],
                      ),
                      Text(
                        '${countryNames[coverage]}',
                        style: whitemiddle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage(
                              'assets/icons/data.png',
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Data',
                            style: whitemiddle,
                          )
                        ],
                      ),
                      Text(
                        '$remainingdata GB',
                        style: whitemiddle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/symbols.svg',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Time left',
                            style: whitemiddle,
                          )
                        ],
                      ),
                      Text(
                        '$timeleft d',
                        style: whitemiddle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuyData(countrycode: coverage);
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 30,
                  width: 0.7 * width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      'BUY FOR $Price\$',
                      style: whitemiddle,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Map<String, String> countryNames = {
  'af': 'Afghanistan',
  'al': 'Albania',
  'dz': 'Algeria',
  'as': 'American Samoa',
  'ad': 'Andorra',
  'ao': 'Angola',
  'ai': 'Anguilla',
  'aq': 'Antarctica',
  'ag': 'Antigua and Barbuda',
  'ar': 'Argentina',
  'am': 'Armenia',
  'aw': 'Aruba',
  'au': 'Australia',
  'at': 'Austria',
  'az': 'Azerbaijan',
  'bs': 'Bahamas',
  'bh': 'Bahrain',
  'bd': 'Bangladesh',
  'bb': 'Barbados',
  'by': 'Belarus',
  'be': 'Belgium',
  'bz': 'Belize',
  'bj': 'Benin',
  'bm': 'Bermuda',
  'bt': 'Bhutan',
  'bo': 'Bolivia',
  'bq': 'Bonaire ',
  'ba': 'Bosnia ',
  'bw': 'Botswana',
  'bv': 'Bouvet Island',
  'br': 'Brazil',
  'io': 'British ',
  'bn': 'Brunei Darussalam',
  'bg': 'Bulgaria',
  'bf': 'Burkina Faso',
  'bi': 'Burundi',
  'cv': 'Cabo Verde',
  'kh': 'Cambodia',
  'cm': 'Cameroon',
  'ca': 'Canada',
  'ky': 'Cayman Islands',
  'cf': 'Central African Republic',
  'td': 'Chad',
  'cl': 'Chile',
  'cn': 'China',
  'cx': 'Christmas Island',
  'cc': 'Cocos (Keeling) Islands',
  'co': 'Colombia',
  'km': 'Comoros',
  'cd': 'Congo (DRC)',
  'cg': 'Congo',
  'ck': 'Cook Islands',
  'cr': 'Costa Rica',
  'hr': 'Croatia',
  'cu': 'Cuba',
  'cw': 'Curaçao',
  'cy': 'Cyprus',
  'cz': 'Czech Republic',
  'ci': "Côte d'Ivoire",
  'dk': 'Denmark',
  'dj': 'Djibouti',
  'dm': 'Dominica',
  'do': 'Dominican Republic',
  'ec': 'Ecuador',
  'eg': 'Egypt',
  'sv': 'El Salvador',
  'gq': 'Equatorial Guinea',
  'er': 'Eritrea',
  'ee': 'Estonia',
  'sz': 'Eswatini',
  'et': 'Ethiopia',
  'fk': 'Falkland Islands',
  'fo': 'Faroe Islands',
  'fj': 'Fiji',
  'fi': 'Finland',
  'fr': 'France',
  'gf': 'French Guiana',
  'pf': 'French Polynesia',
  'tf': 'French Sout Territories',
  'ga': 'Gabon',
  'gm': 'Gambia',
  'ge': 'Georgia',
  'de': 'Germany',
  'gh': 'Ghana',
  'gi': 'Gibraltar',
  'gr': 'Greece',
  'gl': 'Greenland',
  'gd': 'Grenada',
  'gp': 'Guadeloupe',
  'gu': 'Guam',
  'gt': 'Guatemala',
  'gg': 'Guernsey',
  'gn': 'Guinea',
  'gw': 'Guinea-Bissau',
  'gy': 'Guyana',
  'ht': 'Haiti',
  'hm': 'Heard  McDonald Islands',
  'va': 'Holy See',
  'hn': 'Honduras',
  'hk': 'Hong Kong',
  'hu': 'Hungary',
  'is': 'Iceland',
  'in': 'India',
  'id': 'Indonesia',
  'ir': 'Iran (Islamic Republic of)',
  'iq': 'Iraq',
  'ie': 'Ireland',
  'im': 'Isle of Man',
  'il': 'Israel',
  'it': 'Italy',
  'jm': 'Jamaica',
  'jp': 'Japan',
  'je': 'Jersey',
  'jo': 'Jordan',
  'kz': 'Kazakhstan',
  'ke': 'Kenya',
  'ki': 'Kiribati',
  'kp': 'Korea (DPR)',
  'kr': 'Korea (Republic of)',
  'kw': 'Kuwait',
  'kg': 'Kyrgyzstan',
  'la': 'Lao (PDR)',
  'lv': 'Latvia',
  'lb': 'Lebanon',
  'ls': 'Lesotho',
  'lr': 'Liberia',
  'ly': 'Libya',
  'li': 'Liechtenstein',
  'lt': 'Lithuania',
  'lu': 'Luxembourg',
  'mo': 'Macao',
  'mg': 'Madagascar',
  'mw': 'Malawi',
  'my': 'Malaysia',
  'mv': 'Maldives',
  'ml': 'Mali',
  'mt': 'Malta',
  'mh': 'Marshall Islands',
  'mq': 'Martinique',
  'mr': 'Mauritania',
  'mu': 'Mauritius',
  'yt': 'Mayotte',
  'mx': 'Mexico',
  'fm': 'Micronesia',
  'md': 'Moldova',
  'mc': 'Monaco',
  'mn': 'Mongolia',
  'me': 'Montenegro',
  'ms': 'Montserrat',
  'ma': 'Morocco',
  'mz': 'Mozambique',
  'mm': 'Myanmar',
  'na': 'Namibia',
  'nr': 'Nauru',
  'np': 'Nepal',
  'nl': 'Netherlands',
  'nc': 'New Caledonia',
  'nz': 'New Zealand',
  'ni': 'Nicaragua',
  'ne': 'Niger',
  'ng': 'Nigeria',
  'nu': 'Niue',
  'nf': 'Norfolk Island',
  'mp': 'Northern Mariana Islands',
  'no': 'Norway',
  'om': 'Oman',
  'pk': 'Pakistan',
  'pw': 'Palau',
  'ps': 'Palestine',
  'pa': 'Panama',
  'pg': 'Papua New Guinea',
  'py': 'Paraguay',
  'pe': 'Peru',
  'ph': 'Philippines',
  'pn': 'Pitcairn',
  'pl': 'Poland',
  'pt': 'Portugal',
  'pr': 'Puerto Rico',
  'qa': 'Qatar',
  'mk': 'North Macedonia',
  'ro': 'Romania',
  'ru': 'Russian Federation',
  'rw': 'Rwanda',
  're': 'Réunion',
  'bl': 'Saint Barthélemy',
  'sh': 'Saint Helena ',
  'kn': 'Saint Kitts and Nevis',
  'lc': 'Saint Lucia',
  'mf': 'Saint Martin ',
  'pm': 'Saint Pierre ',
  'vc': 'Saint Vincent',
  'ws': 'Samoa',
  'sm': 'San Marino',
  'st': 'Sao Tome and Principe',
  'sa': 'Saudi Arabia',
  'sn': 'Senegal',
  'rs': 'Serbia',
  'sc': 'Seychelles',
  'sl': 'Sierra Leone',
  'sg': 'Singapore',
  'sx': 'Sint Maarten ',
  'sk': 'Slovakia',
  'si': 'Slovenia',
  'sb': 'Solomon Islands',
  'so': 'Somalia',
  'za': 'South Africa',
  'gs': 'South Sandwich Islands',
  'ss': 'South Sudan',
  'es': 'Spain',
  'lk': 'Sri Lanka',
  'sd': 'Sudan',
  'sr': 'Suriname',
  'sj': 'Svalbard and Jan Mayen',
  'se': 'Sweden',
  'ch': 'Switzerland',
  'sy': 'Syrian Arab Republic',
  'tw': 'Taiwan',
  'tj': 'Tajikistan',
  'tz': 'Tanzania,Republic of',
  'th': 'Thailand',
  'tl': 'Timor-Leste',
  'tg': 'Togo',
  'tk': 'Tokelau',
  'to': 'Tonga',
  'tt': 'Trinidad and Tobago',
  'tn': 'Tunisia',
  'tr': 'Turkey',
  'tm': 'Turkmenistan',
  'tc': 'Turks and Caicos Islands',
  'tv': 'Tuvalu',
  'ug': 'Uganda',
  'ua': 'Ukraine',
  'ae': 'United Arab Emirates',
  'gb': 'United Kingdom',
  'um': 'United States Minor',
  'us': 'United States of America',
  'uy': 'Uruguay',
  'uz': 'Uzbekistan',
  'vu': 'Vanuatu',
  've': 'Venezuela',
  'vn': 'Viet Nam',
  'vg': 'Virgin Islands (British)',
  'vi': 'Virgin Islands (U.S.)',
  'wf': 'Wallis and Futuna',
  'eh': 'Western Sahara',
  'ye': 'Yemen',
  'zm': 'Zambia',
  'zw': 'Zimbabwe',
  'ax': 'Åland Islands',
};
