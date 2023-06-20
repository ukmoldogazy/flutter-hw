class Country {
  const Country({required this.name, required this.domain});

  final String name;
  final String domain;
}

const Country uae = Country(name: 'United Arab Emirates', domain: 'ae');
const Country argentina = Country(name: 'Argentina', domain: 'ar');
const Country austria = Country(name: 'Austria', domain: 'at');
const Country australia = Country(name: 'Australia', domain: 'au');
const Country belgium = Country(name: 'Belgium', domain: 'be');
const Country bulgaria = Country(name: 'Bulgaria', domain: 'bg');
const Country brazil = Country(name: 'Brazil', domain: 'br');
const Country canada = Country(name: 'Canada', domain: 'ca');
const Country switzerland = Country(name: 'Switzerland', domain: 'ch');
const Country china = Country(name: 'China', domain: 'cn');
//
const Country colombia = Country(name: 'Colombia', domain: 'co');
const Country cuda = Country(name: 'Cuba', domain: 'cu');
const Country czechia = Country(name: 'Czechia', domain: 'cz');
const Country germany = Country(name: 'Germany', domain: 'de');
const Country egypt = Country(name: 'Egypt', domain: 'eg');
const Country france = Country(name: 'France', domain: 'fr');
const Country uk = Country(name: 'United Kingdom', domain: 'gb');
const Country greece = Country(name: 'Greece', domain: 'gr');
const Country hongKong = Country(name: 'Hong Kong', domain: 'hk');
//
const Country hungary = Country(name: 'Hungary', domain: 'hu');
const Country indonesia = Country(name: 'Indonesia', domain: 'id');
const Country ireland = Country(name: 'Ireland', domain: 'ie');
const Country israel = Country(name: 'Israel', domain: 'il');
const Country india = Country(name: 'India', domain: 'in');
const Country italy = Country(name: 'Italy', domain: 'it');
const Country japan = Country(name: 'Japan', domain: 'jp');
const Country southKorea = Country(name: 'South Korea', domain: 'kr');
const Country lithuania = Country(name: 'Lithuania', domain: 'lt');
//
const Country latvia = Country(name: 'Latvia', domain: 'lv');
const Country morocco = Country(name: 'Morocco', domain: 'ma');
const Country mexico = Country(name: 'Mexico', domain: 'mx');
const Country malaysia = Country(name: 'Malaysia', domain: 'my');
const Country nigeria = Country(name: 'Nigeria', domain: 'ng');
const Country netherlands = Country(name: 'Netherlands', domain: 'nl');
const Country norway = Country(name: 'Norway', domain: 'no');
const Country newZealand = Country(name: 'New Zealand', domain: 'nz');
const Country philippines = Country(name: 'Philippines', domain: 'ph');
//
const Country poland = Country(name: 'Poland', domain: 'pl');
const Country portugal = Country(name: 'Portugal', domain: 'pt');
const Country romania = Country(name: 'Romania', domain: 'ro');
const Country serbia = Country(name: 'Serbia', domain: 'rs');
const Country russia = Country(name: 'Russia', domain: 'ru');
const Country southAfrika = Country(name: 'South Africa', domain: 'sa');
const Country sweden = Country(name: 'Sweden', domain: 'se');
const Country singapore = Country(name: 'Singapore', domain: 'sg');
const Country slovenia = Country(name: 'Slovenia', domain: 'si');
//
const Country slovakia = Country(name: 'Slovakia', domain: 'sk');
const Country thailand = Country(name: 'Thailand', domain: 'th');
const Country turkey = Country(name: 'Türkiye', domain: 'tr');
const Country taiwan = Country(name: 'Taiwan', domain: 'tw');
const Country ukraine = Country(name: 'Ukraine', domain: 'ua');
const Country us = Country(name: 'United States', domain: 'us');
const Country venezuela = Country(name: 'Venezuela', domain: 've');

Set<Country> countriesSet = {
  uae,
  argentina,
  austria,
  australia,
  belgium,
  bulgaria,
  brazil,
  canada,
  switzerland,
  china,
  colombia,
  cuda,
  czechia,
  germany,
  egypt,
  france,
  uk,
  greece,
  hongKong,
  hungary,
  indonesia,
  ireland,
  israel,
  india,
  italy,
  japan,
  southKorea,
  lithuania,
  latvia,
  morocco,
  mexico,
  malaysia,
  nigeria,
  netherlands,
  norway,
  newZealand,
  philippines,
  poland,
  portugal,
  romania,
  serbia,
  russia,
  southAfrika,
  sweden,
  singapore,
  slovenia,
  slovakia,
  thailand,
  turkey,
  taiwan,
  ukraine,
  us,
  venezuela,
};

// Set<Country> countriesSet = {
//   Country(name: 'United Arab Emirates', domain: 'ae'),
//   Country(name: 'Argentina', domain: 'ar'),
//   Country(name: 'Austria', domain: 'at'),
//   Country(name: 'Australia', domain: 'au'),
//   Country(name: 'Belgium', domain: 'be'),
//   Country(name: 'Bulgaria', domain: 'bg'),
//   Country(name: 'Brazil', domain: 'br'),
//   Country(name: 'Canada', domain: 'ca'),
//   Country(name: 'Switzerland', domain: 'ch'),
//   Country(name: 'China', domain: 'cn'),
//   //
//   Country(name: 'Colombia', domain: 'co'),
//   Country(name: 'Cuba', domain: 'cu'),
//   Country(name: 'Czechia', domain: 'cz'),
//   Country(name: 'Germany', domain: 'de'),
//   Country(name: 'Egypt', domain: 'eg'),
//   Country(name: 'France', domain: 'fr'),
//   Country(name: 'United Kingdom', domain: 'gb'),
//   Country(name: 'Greece', domain: 'gr'),
//   Country(name: 'Hong Kong', domain: 'hk'),
//   //
//   Country(name: 'Hungary', domain: 'hu'),
//   Country(name: 'Indonesia', domain: 'id'),
//   Country(name: 'Ireland', domain: 'ie'),
//   Country(name: 'Israel', domain: 'il'),
//   Country(name: 'India', domain: 'in'),
//   Country(name: 'Italy', domain: 'it'),
//   Country(name: 'Japan', domain: 'jp'),
//   Country(name: 'South Korea', domain: 'kr'),
//   Country(name: 'Lithuania', domain: 'lt'),
//   //
//   Country(name: 'Latvia', domain: 'lv'),
//   Country(name: 'Morocco', domain: 'ma'),
//   Country(name: 'Mexico', domain: 'mx'),
//   Country(name: 'Malaysia', domain: 'my'),
//   Country(name: 'Nigeria', domain: 'ng'),
//   Country(name: 'Netherlands', domain: 'nl'),
//   Country(name: 'Norway', domain: 'no'),
//   Country(name: 'New Zealand', domain: 'nz'),
//   Country(name: 'Philippines', domain: 'ph'),
//   //
//   Country(name: 'Poland', domain: 'pl'),
//   Country(name: 'Portugal', domain: 'pt'),
//   Country(name: 'Romania', domain: 'ro'),
//   Country(name: 'Serbia', domain: 'rs'),
//   Country(name: 'Russia', domain: 'ru'),
//   Country(name: 'South Africa', domain: 'sa'),
//   Country(name: 'Sweden', domain: 'se'),
//   Country(name: 'Singapore', domain: 'sg'),
//   Country(name: 'Slovenia', domain: 'si'),
//   //
//   Country(name: 'Slovakia', domain: 'sk'),
//   Country(name: 'Thailand', domain: 'th'),
//   Country(name: 'Türkiye', domain: 'tr'),
//   Country(name: 'Taiwan', domain: 'tw'),
//   Country(name: 'Ukraine', domain: 'ua'),
//   Country(name: 'United States', domain: 'us'),
//   Country(name: 'Venezuela', domain: 've'),
//   // Country(name: 'South Africa', domain: 'za'),
// };
