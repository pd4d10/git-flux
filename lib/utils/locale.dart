/// https://github.com/WeblateOrg/language-data/blob/b94a8f45e9eddb33a607ccb5b924c8bd9db1b64b/languages.csv
///
/// script: `replace(/(.*?);(.*?);.*/g, '"$1":"$2",')`
const localeNameMap = {
  "aa": "Afar",
  "ab": "Abkhazian",
  "ace": "Acehnese",
  "ach": "Acholi",
  "ada": "Adangme",
  "ady": "Adyghe",
  "ae": "Avestan",
  "af": "Afrikaans",
  "afh": "Afrihili",
  "aii": "Assyrian Neo-Aramaic",
  "ain": "Ainu (Japan)",
  "ak": "Akan",
  "akk": "Akkadian",
  "ale": "Aleut",
  "alt": "Altai (Southern)",
  "am": "Amharic",
  "an": "Aragonese",
  "ang": "English (Old)",
  "anp": "Angika",
  "ar": "Arabic",
  "ar_BH": "Arabic (Bahrain)",
  "ar_DZ": "Arabic (Algeria)",
  "ar_EG": "Arabic (Egypt)",
  "ar_KW": "Arabic (Kuwait)",
  "ar_LY": "Arabic (Libya)",
  "ar_MA": "Arabic (Morocco)",
  "ar_SA": "Arabic (Saudi Arabia)",
  "ar_XB": "Arabic (XB pseudolocale)",
  "ar_YE": "Arabic (Yemen)",
  "arc": "Aramaic",
  "arn": "Mapudungun",
  "arp": "Arapaho",
  "ars": "Arabic (Najdi)",
  "arw": "Arawak",
  "as": "Assamese",
  "asa": "Asu",
  "ast": "Asturian",
  "av": "Avaric",
  "awa": "Awadhi",
  "ay": "Aymará",
  "ayc": "Aymara (Southern)",
  "az": "Azerbaijani",
  "azb": "Azerbaijani, South",
  "ba": "Bashkir",
  "bal": "Baluchi",
  "ban": "Balinese",
  "bar": "Bavarian",
  "bas": "Basa (Cameroon)",
  "be": "Belarusian",
  "be_Latn": "Belarusian (latin)",
  "bej": "Beja",
  "bem": "Bemba",
  "ber": "Berber",
  "bez": "Bena",
  "bg": "Bulgarian",
  "bh": "Bihari",
  "bho": "Bhojpuri",
  "bi": "Bislama",
  "bik": "Bikol",
  "bin": "Bini",
  "bla": "Siksika",
  "bm": "Bambara",
  "bn": "Bengali",
  "bn_BD": "Bengali (Bangladesh)",
  "bn_IN": "Bengali (India)",
  "bnt": "Bantu (Other)",
  "bo": "Tibetan",
  "br": "Breton",
  "bra": "Braj",
  "brx": "Bodo",
  "bs": "Bosnian",
  "bs_Cyrl": "Bosnian (cyrillic)",
  "bs_Latn": "Bosnian (latin)",
  "bua": "Buriat",
  "bug": "Buginese",
  "byn": "Bilen",
  "ca": "Catalan",
  "ca@valencia": "Valencian",
  "cad": "Caddo",
  "cak": "Kaqchikel",
  "car": "Galibi Carib",
  "ce": "Chechen",
  "ceb": "Cebuano",
  "cgg": "Chiga",
  "ch": "Chamorro",
  "chb": "Chibcha",
  "chg": "Chagatai",
  "chk": "Chuukese",
  "chm": "Mari",
  "chn": "Chinook jargon",
  "cho": "Choctaw",
  "chp": "Chipewyan",
  "chr": "Cherokee",
  "chy": "Cheyenne",
  "ckb": "Kurdish (Central)",
  "ckb_IQ": "Kurdish (Central, Iraq)",
  "ckb_IR": "Kurdish (Central, Iran)",
  "co": "Corsican",
  "cop": "Coptic",
  "cpe": "Creoles and pidgins (English based)",
  "cpf": "Creoles and pidgins (French-based)",
  "cpp": "Creoles and pidgins (Portuguese-based)",
  "cr": "Cree",
  "crh": "Crimean Tatar",
  "crp": "Creoles and pidgins",
  "cs": "Czech",
  "csb": "Kashubian",
  "cu": "Slavonic (Old Church)",
  "cv": "Chuvash",
  "cy": "Welsh",
  "da": "Danish",
  "dak": "Dakota",
  "dar": "Dargwa",
  "de": "German",
  "de@formal": "German (formal)",
  "de@informal": "German (informal)",
  "de_1901": "German (old spelling)",
  "de_AT": "German (Austria)",
  "de_CH": "German (Switzerland)",
  "de_LU": "German (Luxembourg)",
  "del": "Delaware",
  "den": "Slave (Athapascan)",
  "dgo": "Dogri",
  "dgr": "Dogrib",
  "din": "Dinka",
  "doi": "Dogri",
  "dsb": "Lower Sorbian",
  "dua": "Duala",
  "dum": "Dutch (Middle)",
  "dv": "Dhivehi",
  "dyu": "Dyula",
  "dz": "Dzongkha",
  "ee": "Ewe",
  "efi": "Efik",
  "egy": "Egyptian (Ancient)",
  "eka": "Ekajuk",
  "el": "Greek",
  "elx": "Elamite",
  "en": "English",
  "en_AU": "English (Australia)",
  "en_CA": "English (Canada)",
  "en_GB": "English (United Kingdom)",
  "en_IE": "English (Ireland)",
  "en_IN": "English (India)",
  "en_NZ": "English (New Zealand)",
  "en_PH": "English (Philippines)",
  "en_US": "English (United States)",
  "en_XA": "English (XA pseudolocale)",
  "en_ZA": "English (South Africa)",
  "en_devel": "English (Developer)",
  "enm": "English (Middle)",
  "eo": "Esperanto",
  "es": "Spanish",
  "es_419": "Spanish (Latin America)",
  "es_AR": "Spanish (Argentina)",
  "es_BO": "Spanish (Bolivia)",
  "es_CL": "Spanish (Chile)",
  "es_CO": "Spanish (Colombia)",
  "es_CR": "Spanish (Costa Rica)",
  "es_DO": "Spanish (Dominican Republic)",
  "es_EC": "Spanish (Ecuador)",
  "es_MX": "Spanish (Mexico)",
  "es_NI": "Spanish (Nicaragua)",
  "es_PA": "Spanish (Panama)",
  "es_PE": "Spanish (Peru)",
  "es_PR": "Spanish (Puerto Rico)",
  "es_SV": "Spanish (El Salvador)",
  "es_US": "Spanish (American)",
  "es_UY": "Spanish (Uruguay)",
  "es_VE": "Spanish (Venezuela)",
  "et": "Estonian",
  "eu": "Basque",
  "ewo": "Ewondo",
  "ext": "Extremaduran",
  "fa": "Persian",
  "fa_AF": "Dari",
  "fan": "Fang (Equatorial Guinea)",
  "fat": "Fanti",
  "ff": "Fulah",
  "fi": "Finnish",
  "fil": "Filipino",
  "fj": "Fijian",
  "fo": "Faroese",
  "fon": "Fon",
  "fr": "French",
  "fr@formal": "French (formal)",
  "fr@informal": "French (informal)",
  "fr_AG": "French (Antigua and Barbuda)",
  "fr_BE": "French (Belgium)",
  "fr_CA": "French (Canada)",
  "fr_CH": "French (Switzerland)",
  "fr_LU": "French (Luxembourg)",
  "fr_SN": "French (Senegal)",
  "frm": "French (Middle)",
  "fro": "French (Old)",
  "frp": "Franco-Provençal",
  "frr": "Frisian (Northern)",
  "frs": "Frisian (Eastern)",
  "fur": "Friulian",
  "fy": "Frisian",
  "ga": "Irish",
  "gaa": "Ga",
  "gay": "Gayo",
  "gba": "Gbaya (Central African Republic)",
  "gbm": "Garhwali",
  "gd": "Gaelic",
  "gez": "Ge'ez",
  "gil": "Gilbertese",
  "gl": "Galician",
  "glk": "Gilaki",
  "gmh": "High German (Middle)",
  "gn": "Guarani",
  "goh": "High German (Old)",
  "gon": "Gondi",
  "gor": "Gorontalo",
  "got": "Gothic",
  "grb": "Grebo",
  "grc": "Greek (Ancient)",
  "gsw": "Alemannic",
  "gu": "Gujarati",
  "gu_IN": "Gujarati (India)",
  "gug": "Guaraní (Paraguayan)",
  "gun": "Guaraní (Mbyá)",
  "guw": "Gun",
  "gv": "Manx",
  "gwi": "Gwichʼin",
  "ha": "Hausa",
  "hai": "Haida",
  "haw": "Hawaiian",
  "he": "Hebrew",
  "he_IL": "Hebrew (Israel)",
  "hi": "Hindi",
  "hi_Latn": "Hindi (latin)",
  "hil": "Hiligaynon",
  "hit": "Hittite",
  "hmn": "Hmong",
  "hne": "Chhattisgarhi",
  "ho": "Hiri Motu",
  "hr": "Croatian",
  "hrx": "Hunsrik",
  "hsb": "Upper Sorbian",
  "ht": "Haitian",
  "hu": "Hungarian",
  "hup": "Hupa",
  "hus": "Huastec",
  "hy": "Armenian",
  "hz": "Herero",
  "ia": "Interlingua",
  "iba": "Iban",
  "id": "Indonesian",
  "ie": "Occidental",
  "ig": "Igbo",
  "ii": "Nuosu",
  "ik": "Inupiaq",
  "ilo": "Iloko",
  "inh": "Ingush",
  "io": "Ido",
  "is": "Icelandic",
  "it": "Italian",
  "it_CH": "Italian (Switzerland)",
  "iu": "Inuktitut",
  "ja": "Japanese",
  "ja_KS": "Japanese (Kansai)",
  "jam": "Jamaican Patois",
  "jbo": "Lojban",
  "jgo": "Ngomba",
  "jmc": "Machame",
  "jpr": "Judeo-Persian",
  "jrb": "Judeo-Arabic",
  "jv": "Javanese",
  "ka": "Georgian",
  "kaa": "Kara-Kalpak",
  "kab": "Kabyle",
  "kac": "Kachin",
  "kaj": "Jju",
  "kam": "Kamba (Kenya)",
  "kaw": "Kawi",
  "kbd": "Kabardian",
  "kcg": "Tyap",
  "kde": "Makonde",
  "kea": "Kabuverdianu",
  "kg": "Kongo",
  "kha": "Khasi",
  "kho": "Khotanese",
  "ki": "Gikuyu",
  "kj": "Kwanyama",
  "kk": "Kazakh",
  "kk_Latn": "Kazakh (latin)",
  "kkj": "Kako",
  "kl": "Greenlandic",
  "km": "Khmer (Central)",
  "kmb": "Kimbundu",
  "kmr": "Kurdish (Northern)",
  "kmr_Latn": "Kurdish (Northern, latin)",
  "kn": "Kannada",
  "ko": "Korean",
  "kok": "Konkani",
  "kos": "Kosraean",
  "kpe": "Kpelle",
  "kr": "Kanuri",
  "krc": "Karachay-Balkar",
  "krl": "Karelian",
  "kru": "Kurukh",
  "ks": "Kashmiri",
  "ksb": "Shambala",
  "ksh": "Colognian",
  "ku": "Kurdish",
  "kum": "Kumyk",
  "kut": "Kutenai",
  "kv": "Komi",
  "kw": "Cornish",
  "ky": "Kyrgyz",
  "la": "Latin",
  "lad": "Ladino",
  "lag": "Langi",
  "lah": "Lahnda",
  "lam": "Lamba",
  "lb": "Luxembourgish",
  "lez": "Lezghian",
  "lg": "Luganda",
  "li": "Limburgish",
  "lki": "Laki",
  "lkt": "Lakota",
  "ln": "Lingala",
  "lo": "Lao",
  "lol": "Mongo",
  "loz": "Lozi",
  "lt": "Lithuanian",
  "ltg": "Latgalian",
  "lu": "Luba-Katanga",
  "lua": "Luba-Lulua",
  "lui": "Luiseno",
  "lun": "Lunda",
  "luo": "Luo (Kenya and Tanzania)",
  "lus": "Lushai",
  "lv": "Latvian",
  "mad": "Madurese",
  "mag": "Magahi",
  "mai": "Maithili",
  "mak": "Makasar",
  "man": "Mandingo",
  "mas": "Masai",
  "mdf": "Moksha",
  "mdr": "Mandar",
  "me": "Montenegrin",
  "men": "Mende (Sierra Leone)",
  "mfe": "Morisyen",
  "mg": "Malagasy",
  "mga": "Irish (Middle)",
  "mgo": "Metaʼ",
  "mh": "Marshallese",
  "mhr": "Meadow Mari",
  "mi": "Maori",
  "mia": "Miami",
  "mic": "Mi'kmaq",
  "min": "Minangkabau",
  "mjw": "Karbi",
  "mk": "Macedonian",
  "ml": "Malayalam",
  "mn": "Mongolian",
  "mnc": "Manchu",
  "mni": "Manipuri",
  "mnk": "Mandinka",
  "moh": "Mohawk",
  "mos": "Mossi",
  "mr": "Marathi",
  "ms": "Malay",
  "ms_Arab": "Malay (Jawi)",
  "mt": "Maltese",
  "mus": "Creek",
  "mwl": "Mirandese",
  "mwr": "Marwari",
  "my": "Burmese",
  "myv": "Erzya",
  "na": "Nauru",
  "nah": "Nahuatl",
  "nan": "Chinese (Min Nan)",
  "nap": "Neapolitan",
  "naq": "Nama",
  "nb_NO": "Norwegian Bokmål",
  "nd": "Ndebele (Northern)",
  "nds": "German (Low)",
  "ne": "Nepali",
  "new": "Newari",
  "ng": "Ndonga",
  "nia": "Nias",
  "niu": "Niuean",
  "nl": "Dutch",
  "nl_BE": "Dutch (Belgium)",
  "nn": "Norwegian Nynorsk",
  "nnh": "Ngiemboon",
  "nog": "Nogai",
  "non": "Norse (Old)",
  "nqo": "N’Ko",
  "nr": "Ndebele (Southern)",
  "nso": "Pedi",
  "nv": "Navaho",
  "nwc": "Newari (Classical)",
  "ny": "Nyanja",
  "nym": "Nyamwezi",
  "nyn": "Nyankole",
  "nyo": "Nyoro",
  "nzi": "Nzima",
  "oc": "Occitan",
  "oj": "Ojibwe",
  "om": "Oromo",
  "or": "Odia",
  "os": "Ossetian",
  "osa": "Osage",
  "ota": "Turkish (Ottoman)",
  "otk": "Kokturk",
  "pa": "Punjabi",
  "pag": "Pangasinan",
  "pal": "Pahlavi",
  "pam": "Pampanga",
  "pap": "Papiamento",
  "pau": "Palauan",
  "peo": "Persian (Old)",
  "phn": "Phoenician",
  "pi": "Pali",
  "pl": "Polish",
  "pms": "Piemontese",
  "pon": "Pohnpeian",
  "pr": "Pirate",
  "prg": "Prussian",
  "pro": "Provençal (Old)",
  "ps": "Pashto",
  "pt": "Portuguese",
  "pt_AO": "Portuguese (Angola)",
  "pt_BR": "Portuguese (Brazil)",
  "pt_PT": "Portuguese (Portugal)",
  "qu": "Quechua",
  "quc": "K'iche'",
  "raj": "Rajasthani",
  "rap": "Rapanui",
  "rar": "Rarotongan",
  "rcf": "Réunion Creole",
  "rm": "Romansh",
  "rn": "Rundi",
  "ro": "Romanian",
  "ro_MD": "Moldavian",
  "rof": "Rombo",
  "rom": "Romany",
  "ru": "Russian",
  "ru_UA": "Russian (Ukraine)",
  "rue": "Rusyn",
  "rup": "Macedo-Romanian",
  "rw": "Kinyarwanda",
  "rwk": "Rwa",
  "sa": "Sanskrit",
  "sad": "Sandawe",
  "sah": "Yakut",
  "sai": "South American Indian (Other)",
  "sam": "Samaritan Aramaic",
  "saq": "Samburu",
  "sas": "Sasak",
  "sat": "Santali",
  "sc": "Sardinian",
  "scn": "Sicilian",
  "sco": "Scots",
  "sd": "Sindhi",
  "sdh": "Kurdish (Southern)",
  "se": "Sami (Northern)",
  "seh": "Sena",
  "sel": "Selkup",
  "ses": "Koyraboro Senni",
  "sg": "Sango",
  "sga": "Irish (Old)",
  "sgn": "Sign Languages",
  "shi": "Tachelhit",
  "shn": "Shan",
  "si": "Sinhala",
  "sid": "Sidamo",
  "sk": "Slovak",
  "sl": "Slovenian",
  "sm": "Samoan",
  "sma": "Sami (Southern)",
  "smi": "Sami",
  "smj": "Sami (Lule)",
  "sml": "Sama (Central)",
  "smn": "Sami (Inari)",
  "sms": "Sami (Skolt)",
  "sn": "Shona",
  "snk": "Soninke",
  "so": "Somali",
  "sog": "Sogdian",
  "son": "Songhai",
  "sq": "Albanian",
  "sr": "Serbian",
  "sr@ijekavian": "Serbian (Ijekavian)",
  "sr@ijekavian_Latn": "Serbian (Ijekavian, latin)",
  "sr_Cyrl": "Serbian (cyrillic)",
  "sr_Latn": "Serbian (latin)",
  "srn": "Sranan Tongo",
  "srr": "Serer",
  "ss": "Swati",
  "ssy": "Saho",
  "st": "Sotho (Southern)",
  "su": "Sundanese",
  "suk": "Sukuma",
  "sus": "Susu",
  "sux": "Sumerian",
  "sv": "Swedish",
  "sw": "Swahili",
  "sw_CD": "Swahili (Congo)",
  "sw_TZ": "Swahili (Tanzania)",
  "syc": "Syriac (Classical)",
  "syr": "Syriac",
  "szl": "Silesian",
  "ta": "Tamil",
  "ta_LK": "Tamil (Sri Lanka)",
  "te": "Telugu",
  "tem": "Timne",
  "teo": "Teso",
  "ter": "Tereno",
  "tet": "Tetum",
  "tg": "Tajik",
  "th": "Thai",
  "ti": "Tigrinya",
  "tig": "Tigre",
  "tiv": "Tiv",
  "tk": "Turkmen",
  "tkl": "Tokelau",
  "tl": "Tagalog",
  "tlh-qaak": "Klingon (pIqaD)",
  "tlh": "Klingon",
  "tli": "Tlingit",
  "tmh": "Tamashek",
  "tn": "Tswana",
  "to": "Tongan",
  "tog": "Tonga (Nyasa)",
  "tpi": "Tok Pisin",
  "tr": "Turkish",
  "trv": "Taroko",
  "ts": "Tsonga",
  "tsi": "Tsimshian",
  "tsj": "Tshangla",
  "tt": "Tatar",
  "tt@iqtelif": "Tatar (IQTElif)",
  "tum": "Tumbuka",
  "tvl": "Tuvalu",
  "tw": "Twi",
  "ty": "Tahitian",
  "tyv": "Tuvinian",
  "tzj": "Tz'utujil",
  "tzm": "Tamazight (Central Atlas)",
  "udm": "Udmurt",
  "ug": "Uyghur",
  "uga": "Ugaritic",
  "uk": "Ukrainian",
  "umb": "Umbundu",
  "und": "Undetermined",
  "ur": "Urdu",
  "ur_IN": "Urdu (India)",
  "ur_PK": "Urdu (Pakistan)",
  "uz": "Uzbek",
  "uz_Latn": "Uzbek (latin)",
  "vai": "Vai",
  "ve": "Venda",
  "vec": "Venetian",
  "vi": "Vietnamese",
  "vls": "Flemish (West)",
  "vo": "Volapük",
  "vot": "Votic",
  "vun": "Vunjo",
  "wa": "Walloon",
  "wae": "German (Walser)",
  "wal": "Wolaytta",
  "war": "Waray (Philippines)",
  "was": "Washo",
  "wen": "Sorbian",
  "wo": "Wolof",
  "xal": "Kalmyk",
  "xh": "Xhosa",
  "xog": "Soga",
  "yao": "Yao",
  "yap": "Yapese",
  "yi": "Yiddish",
  "yo": "Yoruba",
  "yue": "Yue",
  "za": "Zhuang",
  "zap": "Zapotec",
  "zbl": "Blissymbols",
  "zen": "Zenaga",
  "zgh": "Tamazight (Standard Moroccan)",
  "zh_Hans": "Chinese (Simplified)",
  "zh_Hans_SG": "Chinese (Simplified, Singapore)",
  "zh_Hant": "Chinese (Traditional)",
  "zh_Hant_HK": "Chinese (Traditional, Hong Kong)",
  "zh_Latn": "Chinese (Pinyin)",
  "zu": "Zulu",
  "zun": "Zuni",
  "zza": "Zaza",
};
