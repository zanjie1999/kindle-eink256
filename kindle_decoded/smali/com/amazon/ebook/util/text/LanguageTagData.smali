.class final Lcom/amazon/ebook/util/text/LanguageTagData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/LanguageTagData$LanguageTagDataHolder;
    }
.end annotation


# static fields
.field private static final DELIMITER:C = '|'

.field private static final LETTER_A:I = 0x61

.field private static final LETTER_Z:I = 0x7a

.field private static final LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

.field private static final REG_DATE:Ljava/lang/String; = "2010-02-10"


# instance fields
.field public final EXTLANG:[Ljava/lang/String;

.field public final GF:Ljava/lang/String;

.field private final LIKELY_SUBTAGS:Ljava/util/Hashtable;

.field public final MAPPINGS:Ljava/util/Hashtable;

.field final M_49CODES:[Ljava/lang/String;

.field final REGION_DATA:[Ljava/lang/String;

.field public final SCRIPT:[Ljava/lang/String;

.field public final VARIANT:[Ljava/lang/String;

.field private final likelySubtagData:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const-string/jumbo v1, "sh"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const-string/jumbo v1, "sr"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const-string/jumbo v1, "uz"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const-string/jumbo v1, "und"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 146

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "|art-lojban|cel-gaulish|en-GB-oed|i-ami|i-bnn|i-default|i-enochian|i-hak|i-klingon|i-lux|i-mingo|i-navajo|i-pwn|i-tao|i-tay|i-tsu|no-bok|no-nyn|sgn-BE-FR|sgn-BE-NL|sgn-CH-DE|zh-guoyu|zh-hakka|zh-min|zh-min-nan|zh-xiang|&|az-Arab|az-Cyrl|az-Latn|be-Latn|bs-Cyrl|bs-Latn|de-1901|de-1996|de-AT-1901|de-AT-1996|de-CH-1901|de-CH-1996|de-DE-1901|de-DE-1996|en-boont|en-scouse|es-419|iu-Cans|iu-Latn|mn-Cyrl|mn-Mong|sgn-BR|sgn-CO|sgn-DE|sgn-DK|sgn-ES|sgn-FR|sgn-GB|sgn-GR|sgn-IE|sgn-IT|sgn-JP|sgn-MX|sgn-NI|sgn-NL|sgn-NO|sgn-PT|sgn-SE|sgn-US|sgn-ZA|sl-nedis|sl-rozaj|sr-Cyrl|sr-Latn|tg-Arab|tg-Cyrl|uz-Cyrl|uz-Latn|yi-Latn|zh-cmn|zh-cmn-Hans|zh-cmn-Hant|zh-gan|zh-Hans|zh-Hans-CN|zh-Hans-HK|zh-Hans-MO|zh-Hans-SG|zh-Hans-TW|zh-Hant|zh-Hant-CN|zh-Hant-HK|zh-Hant-MO|zh-Hant-SG|zh-Hant-TW|zh-wuu|"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->GF:Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    const/16 v1, 0xdc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "aao"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "abh"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "abv"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "acm"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "acq"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "acw"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "acx"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "acy"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "adf"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "ads"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "aeb"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "aec"

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-string v5, "aed"

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-string v5, "aen"

    aput-object v5, v1, v2

    const/16 v2, 0xe

    const-string v5, "afb"

    aput-object v5, v1, v2

    const/16 v2, 0xf

    const-string v5, "afg"

    aput-object v5, v1, v2

    const/16 v2, 0x10

    const-string v5, "ajp"

    aput-object v5, v1, v2

    const/16 v2, 0x11

    const-string v5, "apc"

    aput-object v5, v1, v2

    const/16 v2, 0x12

    const-string v5, "apd"

    aput-object v5, v1, v2

    const/16 v2, 0x13

    const-string v5, "arb"

    aput-object v5, v1, v2

    const/16 v2, 0x14

    const-string v5, "arq"

    aput-object v5, v1, v2

    const/16 v2, 0x15

    const-string v5, "ars"

    aput-object v5, v1, v2

    const/16 v2, 0x16

    const-string v5, "ary"

    aput-object v5, v1, v2

    const/16 v2, 0x17

    const-string v5, "arz"

    aput-object v5, v1, v2

    const/16 v2, 0x18

    const-string v5, "ase"

    aput-object v5, v1, v2

    const/16 v2, 0x19

    const-string v5, "asf"

    aput-object v5, v1, v2

    const/16 v2, 0x1a

    const-string v5, "asp"

    aput-object v5, v1, v2

    const/16 v2, 0x1b

    const-string v5, "asq"

    aput-object v5, v1, v2

    const/16 v2, 0x1c

    const-string v5, "asw"

    aput-object v5, v1, v2

    const/16 v2, 0x1d

    const-string v5, "auz"

    aput-object v5, v1, v2

    const/16 v2, 0x1e

    const-string v5, "avl"

    aput-object v5, v1, v2

    const/16 v2, 0x1f

    const-string v5, "ayh"

    aput-object v5, v1, v2

    const/16 v2, 0x20

    const-string v5, "ayl"

    aput-object v5, v1, v2

    const/16 v2, 0x21

    const-string v5, "ayn"

    aput-object v5, v1, v2

    const/16 v2, 0x22

    const-string v5, "ayp"

    aput-object v5, v1, v2

    const/16 v2, 0x23

    const-string v5, "bbz"

    aput-object v5, v1, v2

    const/16 v2, 0x24

    const-string v5, "bfi"

    aput-object v5, v1, v2

    const/16 v2, 0x25

    const-string v5, "bfk"

    aput-object v5, v1, v2

    const/16 v2, 0x26

    const-string v5, "bjn"

    aput-object v5, v1, v2

    const/16 v2, 0x27

    const-string v5, "bog"

    aput-object v5, v1, v2

    const/16 v2, 0x28

    const-string v5, "bqn"

    aput-object v5, v1, v2

    const/16 v2, 0x29

    const-string v5, "bqy"

    aput-object v5, v1, v2

    const/16 v2, 0x2a

    const-string v5, "btj"

    aput-object v5, v1, v2

    const/16 v2, 0x2b

    const-string v5, "bve"

    aput-object v5, v1, v2

    const/16 v2, 0x2c

    const-string v5, "bvl"

    aput-object v5, v1, v2

    const/16 v2, 0x2d

    const-string v5, "bvu"

    aput-object v5, v1, v2

    const/16 v2, 0x2e

    const-string v5, "bzs"

    aput-object v5, v1, v2

    const/16 v2, 0x2f

    const-string v5, "cdo"

    aput-object v5, v1, v2

    const/16 v2, 0x30

    const-string v5, "cds"

    aput-object v5, v1, v2

    const/16 v2, 0x31

    const-string v5, "cjy"

    aput-object v5, v1, v2

    const-string v2, "cmn"

    const/16 v5, 0x32

    aput-object v2, v1, v5

    const/16 v5, 0x33

    const-string v6, "coa"

    aput-object v6, v1, v5

    const/16 v5, 0x34

    const-string v6, "cpx"

    aput-object v6, v1, v5

    const/16 v5, 0x35

    const-string v6, "csc"

    aput-object v6, v1, v5

    const/16 v5, 0x36

    const-string v6, "csd"

    aput-object v6, v1, v5

    const/16 v5, 0x37

    const-string v6, "cse"

    aput-object v6, v1, v5

    const/16 v5, 0x38

    const-string v6, "csf"

    aput-object v6, v1, v5

    const/16 v5, 0x39

    const-string v6, "csg"

    aput-object v6, v1, v5

    const/16 v5, 0x3a

    const-string v6, "csl"

    aput-object v6, v1, v5

    const/16 v5, 0x3b

    const-string v6, "csn"

    aput-object v6, v1, v5

    const/16 v5, 0x3c

    const-string v6, "csq"

    aput-object v6, v1, v5

    const/16 v5, 0x3d

    const-string v6, "csr"

    aput-object v6, v1, v5

    const/16 v5, 0x3e

    const-string v6, "czh"

    aput-object v6, v1, v5

    const/16 v5, 0x3f

    const-string v6, "czo"

    aput-object v6, v1, v5

    const/16 v5, 0x40

    const-string v6, "doq"

    aput-object v6, v1, v5

    const/16 v5, 0x41

    const-string v6, "dse"

    aput-object v6, v1, v5

    const/16 v5, 0x42

    const-string v6, "dsl"

    aput-object v6, v1, v5

    const/16 v5, 0x43

    const-string v6, "dup"

    aput-object v6, v1, v5

    const/16 v5, 0x44

    const-string v6, "ecs"

    aput-object v6, v1, v5

    const/16 v5, 0x45

    const-string v6, "esl"

    aput-object v6, v1, v5

    const/16 v5, 0x46

    const-string v6, "esn"

    aput-object v6, v1, v5

    const/16 v5, 0x47

    const-string v6, "eso"

    aput-object v6, v1, v5

    const/16 v5, 0x48

    const-string v6, "eth"

    aput-object v6, v1, v5

    const/16 v5, 0x49

    const-string v6, "fcs"

    aput-object v6, v1, v5

    const/16 v5, 0x4a

    const-string v6, "fse"

    aput-object v6, v1, v5

    const/16 v5, 0x4b

    const-string v6, "fsl"

    aput-object v6, v1, v5

    const/16 v5, 0x4c

    const-string v6, "fss"

    aput-object v6, v1, v5

    const/16 v5, 0x4d

    const-string v6, "gan"

    aput-object v6, v1, v5

    const/16 v5, 0x4e

    const-string v6, "gom"

    aput-object v6, v1, v5

    const/16 v5, 0x4f

    const-string v6, "gse"

    aput-object v6, v1, v5

    const/16 v5, 0x50

    const-string v6, "gsg"

    aput-object v6, v1, v5

    const/16 v5, 0x51

    const-string v6, "gsm"

    aput-object v6, v1, v5

    const/16 v5, 0x52

    const-string v6, "gss"

    aput-object v6, v1, v5

    const/16 v5, 0x53

    const-string v6, "gus"

    aput-object v6, v1, v5

    const/16 v5, 0x54

    const-string v6, "hab"

    aput-object v6, v1, v5

    const/16 v5, 0x55

    const-string v6, "haf"

    aput-object v6, v1, v5

    const-string v5, "hak"

    const/16 v6, 0x56

    aput-object v5, v1, v6

    const/16 v6, 0x57

    const-string v7, "hds"

    aput-object v7, v1, v6

    const/16 v6, 0x58

    const-string v7, "hji"

    aput-object v7, v1, v6

    const/16 v6, 0x59

    const-string v7, "hks"

    aput-object v7, v1, v6

    const/16 v6, 0x5a

    const-string v7, "hos"

    aput-object v7, v1, v6

    const/16 v6, 0x5b

    const-string v7, "hps"

    aput-object v7, v1, v6

    const/16 v6, 0x5c

    const-string v7, "hsh"

    aput-object v7, v1, v6

    const/16 v6, 0x5d

    const-string v7, "hsl"

    aput-object v7, v1, v6

    const/16 v6, 0x5e

    const-string v7, "hsn"

    aput-object v7, v1, v6

    const/16 v6, 0x5f

    const-string v7, "icl"

    aput-object v7, v1, v6

    const/16 v6, 0x60

    const-string v7, "ils"

    aput-object v7, v1, v6

    const/16 v6, 0x61

    const-string v7, "inl"

    aput-object v7, v1, v6

    const/16 v6, 0x62

    const-string v7, "ins"

    aput-object v7, v1, v6

    const/16 v6, 0x63

    const-string v7, "ise"

    aput-object v7, v1, v6

    const/16 v6, 0x64

    const-string v7, "isg"

    aput-object v7, v1, v6

    const/16 v6, 0x65

    const-string v7, "isr"

    aput-object v7, v1, v6

    const/16 v6, 0x66

    const-string v7, "jak"

    aput-object v7, v1, v6

    const/16 v6, 0x67

    const-string v7, "jax"

    aput-object v7, v1, v6

    const/16 v6, 0x68

    const-string v7, "jcs"

    aput-object v7, v1, v6

    const/16 v6, 0x69

    const-string v7, "jhs"

    aput-object v7, v1, v6

    const/16 v6, 0x6a

    const-string v7, "jos"

    aput-object v7, v1, v6

    const/16 v6, 0x6b

    const-string v7, "jsl"

    aput-object v7, v1, v6

    const/16 v6, 0x6c

    const-string v7, "jus"

    aput-object v7, v1, v6

    const/16 v6, 0x6d

    const-string v7, "kgi"

    aput-object v7, v1, v6

    const/16 v6, 0x6e

    const-string v7, "knn"

    aput-object v7, v1, v6

    const/16 v6, 0x6f

    const-string v7, "kvb"

    aput-object v7, v1, v6

    const/16 v6, 0x70

    const-string v7, "kvk"

    aput-object v7, v1, v6

    const/16 v6, 0x71

    const-string v7, "kvr"

    aput-object v7, v1, v6

    const/16 v6, 0x72

    const-string v7, "kxd"

    aput-object v7, v1, v6

    const/16 v6, 0x73

    const-string v7, "lbs"

    aput-object v7, v1, v6

    const/16 v6, 0x74

    const-string v7, "lce"

    aput-object v7, v1, v6

    const/16 v6, 0x75

    const-string v7, "lcf"

    aput-object v7, v1, v6

    const/16 v6, 0x76

    const-string v7, "liw"

    aput-object v7, v1, v6

    const/16 v6, 0x77

    const-string v7, "lls"

    aput-object v7, v1, v6

    const/16 v6, 0x78

    const-string/jumbo v7, "lsg"

    aput-object v7, v1, v6

    const/16 v6, 0x79

    const-string/jumbo v7, "lsl"

    aput-object v7, v1, v6

    const/16 v6, 0x7a

    const-string/jumbo v7, "lso"

    aput-object v7, v1, v6

    const/16 v6, 0x7b

    const-string/jumbo v7, "lsp"

    aput-object v7, v1, v6

    const/16 v6, 0x7c

    const-string/jumbo v7, "lst"

    aput-object v7, v1, v6

    const/16 v6, 0x7d

    const-string/jumbo v7, "lzh"

    aput-object v7, v1, v6

    const/16 v6, 0x7e

    const-string/jumbo v7, "max"

    aput-object v7, v1, v6

    const/16 v6, 0x7f

    const-string/jumbo v7, "mdl"

    aput-object v7, v1, v6

    const/16 v6, 0x80

    const-string/jumbo v7, "meo"

    aput-object v7, v1, v6

    const/16 v6, 0x81

    const-string/jumbo v7, "mfa"

    aput-object v7, v1, v6

    const/16 v6, 0x82

    const-string/jumbo v7, "mfb"

    aput-object v7, v1, v6

    const/16 v6, 0x83

    const-string/jumbo v7, "mfs"

    aput-object v7, v1, v6

    const/16 v6, 0x84

    const-string/jumbo v7, "min"

    aput-object v7, v1, v6

    const/16 v6, 0x85

    const-string/jumbo v7, "mnp"

    aput-object v7, v1, v6

    const/16 v6, 0x86

    const-string/jumbo v7, "mqg"

    aput-object v7, v1, v6

    const/16 v6, 0x87

    const-string/jumbo v7, "mre"

    aput-object v7, v1, v6

    const/16 v6, 0x88

    const-string/jumbo v7, "msd"

    aput-object v7, v1, v6

    const/16 v6, 0x89

    const-string/jumbo v7, "msi"

    aput-object v7, v1, v6

    const/16 v6, 0x8a

    const-string/jumbo v7, "msr"

    aput-object v7, v1, v6

    const/16 v6, 0x8b

    const-string/jumbo v7, "mui"

    aput-object v7, v1, v6

    const/16 v6, 0x8c

    const-string/jumbo v7, "mzc"

    aput-object v7, v1, v6

    const/16 v6, 0x8d

    const-string/jumbo v7, "mzg"

    aput-object v7, v1, v6

    const/16 v6, 0x8e

    const-string/jumbo v7, "mzy"

    aput-object v7, v1, v6

    const/16 v6, 0x8f

    const-string/jumbo v7, "nan"

    aput-object v7, v1, v6

    const/16 v6, 0x90

    const-string/jumbo v7, "nbs"

    aput-object v7, v1, v6

    const/16 v6, 0x91

    const-string/jumbo v7, "ncs"

    aput-object v7, v1, v6

    const/16 v6, 0x92

    const-string/jumbo v7, "nsi"

    aput-object v7, v1, v6

    const/16 v6, 0x93

    const-string/jumbo v7, "nsl"

    aput-object v7, v1, v6

    const/16 v6, 0x94

    const-string/jumbo v7, "nsp"

    aput-object v7, v1, v6

    const/16 v6, 0x95

    const-string/jumbo v7, "nsr"

    aput-object v7, v1, v6

    const/16 v6, 0x96

    const-string/jumbo v7, "nzs"

    aput-object v7, v1, v6

    const/16 v6, 0x97

    const-string/jumbo v7, "okl"

    aput-object v7, v1, v6

    const/16 v6, 0x98

    const-string/jumbo v7, "orn"

    aput-object v7, v1, v6

    const/16 v6, 0x99

    const-string/jumbo v7, "ors"

    aput-object v7, v1, v6

    const/16 v6, 0x9a

    const-string/jumbo v7, "pel"

    aput-object v7, v1, v6

    const/16 v6, 0x9b

    const-string/jumbo v7, "pga"

    aput-object v7, v1, v6

    const/16 v6, 0x9c

    const-string/jumbo v7, "pks"

    aput-object v7, v1, v6

    const/16 v6, 0x9d

    const-string/jumbo v7, "prl"

    aput-object v7, v1, v6

    const/16 v6, 0x9e

    const-string/jumbo v7, "prz"

    aput-object v7, v1, v6

    const/16 v6, 0x9f

    const-string/jumbo v7, "psc"

    aput-object v7, v1, v6

    const/16 v6, 0xa0

    const-string/jumbo v7, "psd"

    aput-object v7, v1, v6

    const/16 v6, 0xa1

    const-string/jumbo v7, "pse"

    aput-object v7, v1, v6

    const/16 v6, 0xa2

    const-string/jumbo v7, "psg"

    aput-object v7, v1, v6

    const/16 v6, 0xa3

    const-string/jumbo v7, "psl"

    aput-object v7, v1, v6

    const/16 v6, 0xa4

    const-string/jumbo v7, "pso"

    aput-object v7, v1, v6

    const/16 v6, 0xa5

    const-string/jumbo v7, "psp"

    aput-object v7, v1, v6

    const/16 v6, 0xa6

    const-string/jumbo v7, "psr"

    aput-object v7, v1, v6

    const/16 v6, 0xa7

    const-string/jumbo v7, "rms"

    aput-object v7, v1, v6

    const/16 v6, 0xa8

    const-string/jumbo v7, "rsi"

    aput-object v7, v1, v6

    const/16 v6, 0xa9

    const-string/jumbo v7, "rsl"

    aput-object v7, v1, v6

    const/16 v6, 0xaa

    const-string/jumbo v7, "sdl"

    aput-object v7, v1, v6

    const/16 v6, 0xab

    const-string/jumbo v7, "sfb"

    aput-object v7, v1, v6

    const/16 v6, 0xac

    const-string/jumbo v7, "sfs"

    aput-object v7, v1, v6

    const/16 v6, 0xad

    const-string/jumbo v7, "sgg"

    aput-object v7, v1, v6

    const/16 v6, 0xae

    const-string/jumbo v7, "sgx"

    aput-object v7, v1, v6

    const/16 v6, 0xaf

    const-string/jumbo v7, "shu"

    aput-object v7, v1, v6

    const/16 v6, 0xb0

    const-string/jumbo v7, "slf"

    aput-object v7, v1, v6

    const/16 v6, 0xb1

    const-string/jumbo v7, "sls"

    aput-object v7, v1, v6

    const/16 v6, 0xb2

    const-string/jumbo v7, "sqs"

    aput-object v7, v1, v6

    const/16 v6, 0xb3

    const-string/jumbo v7, "ssh"

    aput-object v7, v1, v6

    const/16 v6, 0xb4

    const-string/jumbo v7, "ssp"

    aput-object v7, v1, v6

    const/16 v6, 0xb5

    const-string/jumbo v7, "ssr"

    aput-object v7, v1, v6

    const/16 v6, 0xb6

    const-string/jumbo v7, "svk"

    aput-object v7, v1, v6

    const/16 v6, 0xb7

    const-string/jumbo v7, "swc"

    aput-object v7, v1, v6

    const/16 v6, 0xb8

    const-string/jumbo v7, "swh"

    aput-object v7, v1, v6

    const/16 v6, 0xb9

    const-string/jumbo v7, "swl"

    aput-object v7, v1, v6

    const/16 v6, 0xba

    const-string/jumbo v7, "syy"

    aput-object v7, v1, v6

    const/16 v6, 0xbb

    const-string/jumbo v7, "tmw"

    aput-object v7, v1, v6

    const/16 v6, 0xbc

    const-string/jumbo v7, "tse"

    aput-object v7, v1, v6

    const/16 v6, 0xbd

    const-string/jumbo v7, "tsm"

    aput-object v7, v1, v6

    const/16 v6, 0xbe

    const-string/jumbo v7, "tsq"

    aput-object v7, v1, v6

    const/16 v6, 0xbf

    const-string/jumbo v7, "tss"

    aput-object v7, v1, v6

    const/16 v6, 0xc0

    const-string/jumbo v7, "tsy"

    aput-object v7, v1, v6

    const/16 v6, 0xc1

    const-string/jumbo v7, "tza"

    aput-object v7, v1, v6

    const/16 v6, 0xc2

    const-string/jumbo v7, "ugn"

    aput-object v7, v1, v6

    const/16 v6, 0xc3

    const-string/jumbo v7, "ugy"

    aput-object v7, v1, v6

    const/16 v6, 0xc4

    const-string/jumbo v7, "ukl"

    aput-object v7, v1, v6

    const/16 v6, 0xc5

    const-string/jumbo v7, "uks"

    aput-object v7, v1, v6

    const/16 v6, 0xc6

    const-string/jumbo v7, "urk"

    aput-object v7, v1, v6

    const/16 v6, 0xc7

    const-string/jumbo v7, "uzn"

    aput-object v7, v1, v6

    const/16 v6, 0xc8

    const-string/jumbo v7, "uzs"

    aput-object v7, v1, v6

    const/16 v6, 0xc9

    const-string/jumbo v7, "vgt"

    aput-object v7, v1, v6

    const/16 v6, 0xca

    const-string/jumbo v7, "vkk"

    aput-object v7, v1, v6

    const/16 v6, 0xcb

    const-string/jumbo v7, "vkt"

    aput-object v7, v1, v6

    const/16 v6, 0xcc

    const-string/jumbo v7, "vsi"

    aput-object v7, v1, v6

    const/16 v6, 0xcd

    const-string/jumbo v7, "vsl"

    aput-object v7, v1, v6

    const/16 v6, 0xce

    const-string/jumbo v7, "vsv"

    aput-object v7, v1, v6

    const/16 v6, 0xcf

    const-string/jumbo v7, "wuu"

    aput-object v7, v1, v6

    const/16 v6, 0xd0

    const-string/jumbo v7, "xki"

    aput-object v7, v1, v6

    const/16 v6, 0xd1

    const-string/jumbo v7, "xml"

    aput-object v7, v1, v6

    const/16 v6, 0xd2

    const-string/jumbo v7, "xmm"

    aput-object v7, v1, v6

    const/16 v6, 0xd3

    const-string/jumbo v7, "xms"

    aput-object v7, v1, v6

    const/16 v6, 0xd4

    const-string/jumbo v7, "yds"

    aput-object v7, v1, v6

    const/16 v6, 0xd5

    const-string/jumbo v7, "ysl"

    aput-object v7, v1, v6

    const/16 v6, 0xd6

    const-string/jumbo v7, "yue"

    aput-object v7, v1, v6

    const/16 v6, 0xd7

    const-string/jumbo v7, "zib"

    aput-object v7, v1, v6

    const/16 v6, 0xd8

    const-string/jumbo v7, "zlm"

    aput-object v7, v1, v6

    const/16 v6, 0xd9

    const-string/jumbo v7, "zmi"

    aput-object v7, v1, v6

    const/16 v6, 0xda

    const-string/jumbo v7, "zsl"

    aput-object v7, v1, v6

    const/16 v6, 0xdb

    const-string/jumbo v7, "zsm"

    aput-object v7, v1, v6

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->EXTLANG:[Ljava/lang/String;

    const-string v8, "Arab"

    const-string v9, "Armi"

    const-string v10, "Armn"

    const-string v11, "Avst"

    const-string v12, "Bali"

    const-string v13, "Bamu"

    const-string v14, "Batk"

    const-string v15, "Beng"

    const-string v16, "Blis"

    const-string v17, "Bopo"

    const-string v18, "Brah"

    const-string v19, "Brai"

    const-string v20, "Bugi"

    const-string v21, "Buhd"

    const-string v22, "Cakm"

    const-string v23, "Cans"

    const-string v24, "Cari"

    const-string v25, "Cham"

    const-string v26, "Cher"

    const-string v27, "Cirt"

    const-string v28, "Copt"

    const-string v29, "Cprt"

    const-string v30, "Cyrl"

    const-string v31, "Cyrs"

    const-string v32, "Deva"

    const-string v33, "Dsrt"

    const-string v34, "Egyd"

    const-string v35, "Egyh"

    const-string v36, "Egyp"

    const-string v37, "Ethi"

    const-string v38, "Geok"

    const-string v39, "Geor"

    const-string v40, "Glag"

    const-string v41, "Goth"

    const-string v42, "Gran"

    const-string v43, "Grek"

    const-string v44, "Gujr"

    const-string v45, "Guru"

    const-string v46, "Hang"

    const-string v47, "Hani"

    const-string v48, "Hano"

    const-string v49, "Hans"

    const-string v50, "Hant"

    const-string v51, "Hebr"

    const-string v52, "Hira"

    const-string v53, "Hmng"

    const-string v54, "Hrkt"

    const-string v55, "Hung"

    const-string v56, "Inds"

    const-string v57, "Ital"

    const-string v58, "Java"

    const-string v59, "Jpan"

    const-string v60, "Kali"

    const-string v61, "Kana"

    const-string v62, "Khar"

    const-string v63, "Khmr"

    const-string v64, "Knda"

    const-string v65, "Kore"

    const-string v66, "Kthi"

    const-string v67, "Lana"

    const-string v68, "Laoo"

    const-string v69, "Latf"

    const-string v70, "Latg"

    const-string v71, "Latn"

    const-string v72, "Lepc"

    const-string v73, "Limb"

    const-string v74, "Lina"

    const-string v75, "Linb"

    const-string v76, "Lisu"

    const-string v77, "Lyci"

    const-string v78, "Lydi"

    const-string v79, "Mand"

    const-string v80, "Mani"

    const-string v81, "Maya"

    const-string v82, "Merc"

    const-string v83, "Mero"

    const-string v84, "Mlym"

    const-string v85, "Mong"

    const-string v86, "Moon"

    const-string v87, "Mtei"

    const-string v88, "Mymr"

    const-string v89, "Nkgb"

    const-string v90, "Nkoo"

    const-string v91, "Ogam"

    const-string v92, "Olck"

    const-string v93, "Orkh"

    const-string v94, "Orya"

    const-string v95, "Osma"

    const-string v96, "Perm"

    const-string v97, "Phag"

    const-string v98, "Phli"

    const-string v99, "Phlp"

    const-string v100, "Phlv"

    const-string v101, "Phnx"

    const-string v102, "Plrd"

    const-string v103, "Prti"

    const-string v104, "Qaaa..Qabx"

    const-string v105, "Rjng"

    const-string v106, "Roro"

    const-string v107, "Runr"

    const-string v108, "Samr"

    const-string v109, "Sara"

    const-string v110, "Sarb"

    const-string v111, "Saur"

    const-string v112, "Sgnw"

    const-string v113, "Shaw"

    const-string v114, "Sinh"

    const-string v115, "Sund"

    const-string v116, "Sylo"

    const-string v117, "Syrc"

    const-string v118, "Syre"

    const-string v119, "Syrj"

    const-string v120, "Syrn"

    const-string v121, "Tagb"

    const-string v122, "Tale"

    const-string v123, "Talu"

    const-string v124, "Taml"

    const-string v125, "Tavt"

    const-string v126, "Telu"

    const-string v127, "Teng"

    const-string v128, "Tfng"

    const-string v129, "Tglg"

    const-string v130, "Thaa"

    const-string v131, "Thai"

    const-string v132, "Tibt"

    const-string v133, "Ugar"

    const-string v134, "Vaii"

    const-string v135, "Visp"

    const-string v136, "Wara"

    const-string v137, "Xpeo"

    const-string v138, "Xsux"

    const-string v139, "Yiii"

    const-string v140, "Zinh"

    const-string v141, "Zmth"

    const-string v142, "Zsym"

    const-string v143, "Zxxx"

    const-string v144, "Zyyy"

    const-string v145, "Zzzz"

    filled-new-array/range {v8 .. v145}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->SCRIPT:[Ljava/lang/String;

    const-string v6, "acdefgilmnoqrstuwxz"

    const-string v7, "abdefghijlmnorstuvwyz"

    const-string v8, "acdfghiklmnoprsuvxyz"

    const-string v9, "degjkmoz"

    const-string v10, "aceghrstu"

    const-string v11, "ijkmorx"

    const-string v12, "abdefghilmnpqrstuwy"

    const-string v13, "kmnrtu"

    const-string v14, "cdelmnoqrst"

    const-string v15, "emop"

    const-string v16, "eghimnprwyz"

    const-string v17, "abcikrstuvy"

    const-string v18, "acdefghklmnopqrstuvwxyz"

    const-string v19, "acefgiloprtuz"

    const-string/jumbo v20, "m"

    const-string v21, "aefghklmnrstwy"

    const-string v22, "am"

    const-string v23, "eosuw"

    const-string v24, "abcdeghijklmnortuvyz"

    const-string v25, "acdfghjklmnoprtvwz"

    const-string v26, "agmsyz"

    const-string v27, "aceginu"

    const-string v28, "fs"

    const-string v29, "abcdefghijklmnopqrstuvwxyz"

    const-string v30, "detu"

    const-string v31, "amrwz"

    filled-new-array/range {v6 .. v31}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->REGION_DATA:[Ljava/lang/String;

    const-string v6, "001"

    const-string v7, "002"

    const-string v8, "005"

    const-string v9, "009"

    const-string v10, "011"

    const-string v11, "013"

    const-string v12, "014"

    const-string v13, "015"

    const-string v14, "017"

    const-string v15, "018"

    const-string v16, "019"

    const-string v17, "021"

    const-string v18, "029"

    const-string v19, "030"

    const-string v20, "034"

    const-string v21, "035"

    const-string v22, "039"

    const-string v23, "053"

    const-string v24, "054"

    const-string v25, "057"

    const-string v26, "061"

    const-string v27, "142"

    const-string v28, "143"

    const-string v29, "145"

    const-string v30, "150"

    const-string v31, "151"

    const-string v32, "154"

    const-string v33, "155"

    const-string v34, "419"

    filled-new-array/range {v6 .. v34}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->M_49CODES:[Ljava/lang/String;

    const-string v6, "1606nict"

    const-string v7, "1694acad"

    const-string v8, "1901"

    const-string v9, "1959acad"

    const-string v10, "1994"

    const-string v11, "1996"

    const-string v12, "alalc97"

    const-string v13, "aluku"

    const-string v14, "arevela"

    const-string v15, "arevmda"

    const-string v16, "baku1926"

    const-string v17, "biske"

    const-string v18, "boont"

    const-string v19, "fonipa"

    const-string v20, "fonupa"

    const-string v21, "hepburn"

    const-string v22, "heploc"

    const-string v23, "hognorsk"

    const-string v24, "kkcor"

    const-string v25, "lipaw"

    const-string/jumbo v26, "monoton"

    const-string/jumbo v27, "ndyuka"

    const-string/jumbo v28, "nedis"

    const-string/jumbo v29, "njiva"

    const-string/jumbo v30, "osojs"

    const-string/jumbo v31, "pamaka"

    const-string/jumbo v32, "pinyin"

    const-string/jumbo v33, "polyton"

    const-string/jumbo v34, "rozaj"

    const-string/jumbo v35, "scotland"

    const-string/jumbo v36, "scouse"

    const-string/jumbo v37, "solba"

    const-string/jumbo v38, "tarask"

    const-string/jumbo v39, "uccor"

    const-string/jumbo v40, "ucrcor"

    const-string/jumbo v41, "valencia"

    const-string/jumbo v42, "wadegile"

    filled-new-array/range {v6 .. v42}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->VARIANT:[Ljava/lang/String;

    const/16 v1, 0x1ff

    new-array v1, v1, [[Ljava/lang/String;

    const-string v6, "aa"

    const-string v7, "aa-Latn-ET"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    const-string v6, "ab"

    const-string v7, "ab-Cyrl-GE"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "ady"

    const-string v7, "ady-Cyrl-RU"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v6, "af"

    const-string v7, "af-Latn-ZA"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const-string v6, "ak"

    const-string v7, "ak-Latn-GH"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const-string v6, "am"

    const-string v7, "am-Ethi-ET"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v1, v7

    const-string v6, "ar-Arab-EG"

    const-string v7, "ar"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v1, v8

    const-string v7, "as"

    const-string v8, "as-Beng-IN"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v1, v8

    const-string v7, "asa"

    const-string v8, "asa-Latn-TZ"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v1, v8

    const-string v7, "ast"

    const-string v8, "ast-Latn-ES"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v1, v8

    const-string v7, "av"

    const-string v8, "av-Cyrl-RU"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v1, v8

    const-string v7, "ay"

    const-string v8, "ay-Latn-BO"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v1, v8

    const-string v7, "az"

    const-string v8, "az-Latn-AZ"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    aput-object v7, v1, v8

    const-string v7, "az-Arab"

    const-string v8, "az-Arab-IR"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v1, v8

    const-string v7, "az-IR"

    const-string v8, "az-Arab-IR"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v1, v8

    const-string v7, "ba"

    const-string v8, "ba-Cyrl-RU"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v1, v8

    const-string v7, "be"

    const-string v8, "be-Cyrl-BY"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v1, v8

    const-string v7, "bem"

    const-string v8, "bem-Latn-ZM"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v1, v8

    const-string v7, "bez"

    const-string v8, "bez-Latn-TZ"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v1, v8

    const-string v7, "bg"

    const-string v8, "bg-Cyrl-BG"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v1, v8

    const-string v7, "bi"

    const-string v8, "bi-Latn-VU"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v1, v8

    const-string v7, "bm"

    const-string v8, "bm-Latn-ML"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x15

    aput-object v7, v1, v8

    const-string v7, "bn-Beng-BD"

    const-string v8, "bn"

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x16

    aput-object v8, v1, v9

    const-string v8, "bo"

    const-string v9, "bo-Tibt-CN"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x17

    aput-object v8, v1, v9

    const-string v8, "br"

    const-string v9, "br-Latn-FR"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x18

    aput-object v8, v1, v9

    const-string v8, "brx"

    const-string v9, "brx-Deva-IN"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x19

    aput-object v8, v1, v9

    const-string v8, "bs"

    const-string v9, "bs-Latn-BA"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a

    aput-object v8, v1, v9

    const-string v8, "byn"

    const-string v9, "byn-Ethi-ER"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b

    aput-object v8, v1, v9

    const-string v8, "ca"

    const-string v9, "ca-Latn-ES"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1c

    aput-object v8, v1, v9

    const-string v8, "cch"

    const-string v9, "cch-Latn-NG"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1d

    aput-object v8, v1, v9

    const-string v8, "ce"

    const-string v9, "ce-Cyrl-RU"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1e

    aput-object v8, v1, v9

    const-string v8, "ceb"

    const-string v9, "ceb-Latn-PH"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f

    aput-object v8, v1, v9

    const-string v8, "cgg"

    const-string v9, "cgg-Latn-UG"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    aput-object v8, v1, v9

    const-string v8, "ch"

    const-string v9, "ch-Latn-GU"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x21

    aput-object v8, v1, v9

    const-string v8, "chk"

    const-string v9, "chk-Latn-FM"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x22

    aput-object v8, v1, v9

    const-string v8, "chr"

    const-string v9, "chr-Cher-US"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x23

    aput-object v8, v1, v9

    const-string v8, "cs"

    const-string v9, "cs-Latn-CZ"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x24

    aput-object v8, v1, v9

    const-string v8, "cy"

    const-string v9, "cy-Latn-GB"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x25

    aput-object v8, v1, v9

    const-string v8, "da"

    const-string v9, "da-Latn-DK"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x26

    aput-object v8, v1, v9

    const-string v8, "dav"

    const-string v9, "dav-Latn-KE"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x27

    aput-object v8, v1, v9

    const-string v8, "de"

    const-string v9, "de-Latn-DE"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x28

    aput-object v8, v1, v9

    const-string v8, "dv-Thaa-MV"

    const-string v9, "dv"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x29

    aput-object v9, v1, v10

    const-string v9, "dz"

    const-string v10, "dz-Tibt-BT"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2a

    aput-object v9, v1, v10

    const-string v9, "ebu"

    const-string v10, "ebu-Latn-KE"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2b

    aput-object v9, v1, v10

    const-string v9, "ee"

    const-string v10, "ee-Latn-GH"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    aput-object v9, v1, v10

    const-string v9, "efi"

    const-string v10, "efi-Latn-NG"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2d

    aput-object v9, v1, v10

    const-string v9, "el-Grek-GR"

    const-string v10, "el"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2e

    aput-object v10, v1, v11

    const-string v10, "en"

    const-string v11, "en-Latn-US"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2f

    aput-object v10, v1, v11

    const-string v10, "es"

    const-string v11, "es-Latn-ES"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x30

    aput-object v10, v1, v11

    const-string v10, "et"

    const-string v11, "et-Latn-EE"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x31

    aput-object v10, v1, v11

    const-string v10, "eu"

    const-string v11, "eu-Latn-ES"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x32

    aput-object v10, v1, v11

    const-string v10, "fa"

    const-string v11, "fa-Arab-IR"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x33

    aput-object v10, v1, v11

    const-string v10, "ff"

    const-string v11, "ff-Latn-SN"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x34

    aput-object v10, v1, v11

    const-string v10, "fi"

    const-string v11, "fi-Latn-FI"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x35

    aput-object v10, v1, v11

    const-string v10, "fil"

    const-string v11, "fil-Latn-PH"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x36

    aput-object v10, v1, v11

    const-string v10, "fj"

    const-string v11, "fj-Latn-FJ"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x37

    aput-object v10, v1, v11

    const-string v10, "fo"

    const-string v11, "fo-Latn-FO"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x38

    aput-object v10, v1, v11

    const-string v10, "fr"

    const-string v11, "fr-Latn-FR"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x39

    aput-object v10, v1, v11

    const-string v10, "fur"

    const-string v11, "fur-Latn-IT"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3a

    aput-object v10, v1, v11

    const-string v10, "fy"

    const-string v11, "fy-Latn-NL"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3b

    aput-object v10, v1, v11

    const-string v10, "ga"

    const-string v11, "ga-Latn-IE"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3c

    aput-object v10, v1, v11

    const-string v10, "gaa"

    const-string v11, "gaa-Latn-GH"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3d

    aput-object v10, v1, v11

    const-string v10, "gag"

    const-string v11, "gag-Latn-MD"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3e

    aput-object v10, v1, v11

    const-string v10, "gd"

    const-string v11, "gd-Latn-GB"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3f

    aput-object v10, v1, v11

    const-string v10, "gez"

    const-string v11, "gez-Ethi-ET"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    aput-object v10, v1, v11

    const-string v10, "gil"

    const-string v11, "gil-Latn-KI"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x41

    aput-object v10, v1, v11

    const-string v10, "gl"

    const-string v11, "gl-Latn-ES"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    aput-object v10, v1, v11

    const-string v10, "gn"

    const-string v11, "gn-Latn-PY"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x43

    aput-object v10, v1, v11

    const-string v10, "gsw"

    const-string v11, "gsw-Latn-CH"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x44

    aput-object v10, v1, v11

    const-string v10, "gu"

    const-string v11, "gu-Gujr-IN"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x45

    aput-object v10, v1, v11

    const-string v10, "guz"

    const-string v11, "guz-Latn-KE"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x46

    aput-object v10, v1, v11

    const-string v10, "gv"

    const-string v11, "gv-Latn-GB"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x47

    aput-object v10, v1, v11

    const-string v10, "ha"

    const-string v11, "ha-Latn-NG"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x48

    aput-object v10, v1, v11

    const-string v10, "ha-Arab"

    const-string v11, "ha-Arab-SD"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x49

    aput-object v10, v1, v11

    const-string v10, "ha-SD"

    const-string v11, "ha-Arab-SD"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4a

    aput-object v10, v1, v11

    const-string v10, "haw"

    const-string v11, "haw-Latn-US"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4b

    aput-object v10, v1, v11

    const-string v10, "he-Hebr-IL"

    const-string v11, "he"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x4c

    aput-object v11, v1, v12

    const-string v11, "hi-Deva-IN"

    const-string v12, "hi"

    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x4d

    aput-object v12, v1, v13

    const-string v12, "hil"

    const-string v13, "hil-Latn-PH"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x4e

    aput-object v12, v1, v13

    const-string v12, "ho"

    const-string v13, "ho-Latn-PG"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x4f

    aput-object v12, v1, v13

    const-string v12, "hr"

    const-string v13, "hr-Latn-HR"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x50

    aput-object v12, v1, v13

    const-string v12, "ht"

    const-string v13, "ht-Latn-HT"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x51

    aput-object v12, v1, v13

    const-string v12, "hu"

    const-string v13, "hu-Latn-HU"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x52

    aput-object v12, v1, v13

    const-string v12, "hy-Armn-AM"

    const-string v13, "hy"

    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x53

    aput-object v13, v1, v14

    const-string v13, "id"

    const-string v14, "id-Latn-ID"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x54

    aput-object v13, v1, v14

    const-string v13, "ig"

    const-string v14, "ig-Latn-NG"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x55

    aput-object v13, v1, v14

    const-string v13, "ii"

    const-string v14, "ii-Yiii-CN"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x56

    aput-object v13, v1, v14

    const-string v13, "ilo"

    const-string v14, "ilo-Latn-PH"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x57

    aput-object v13, v1, v14

    const-string v13, "in"

    const-string v14, "in-Latn-ID"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x58

    aput-object v13, v1, v14

    const-string v13, "inh"

    const-string v14, "inh-Cyrl-RU"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x59

    aput-object v13, v1, v14

    const-string v13, "is"

    const-string v14, "is-Latn-IS"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5a

    aput-object v13, v1, v14

    const-string v13, "it"

    const-string v14, "it-Latn-IT"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5b

    aput-object v13, v1, v14

    const-string v13, "iw"

    const-string v14, "iw-Hebr-IL"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5c

    aput-object v13, v1, v14

    const-string v13, "ja-Jpan-JP"

    const-string v14, "ja"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x5d

    aput-object v14, v1, v15

    const-string v14, "jmc"

    const-string v15, "jmc-Latn-TZ"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x5e

    aput-object v14, v1, v15

    const-string v14, "jv"

    const-string v15, "jv-Latn-ID"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x5f

    aput-object v14, v1, v15

    const-string v14, "ka-Geor-GE"

    const-string v15, "ka"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x60

    aput-object v15, v1, v16

    const-string v15, "kab"

    const-string v4, "kab-Latn-DZ"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x61

    aput-object v4, v1, v15

    const-string v4, "kaj"

    const-string v15, "kaj-Latn-NG"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x62

    aput-object v4, v1, v15

    const-string v4, "kam"

    const-string v15, "kam-Latn-KE"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x63

    aput-object v4, v1, v15

    const-string v4, "kbd"

    const-string v15, "kbd-Cyrl-RU"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x64

    aput-object v4, v1, v15

    const-string v4, "kcg"

    const-string v15, "kcg-Latn-NG"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x65

    aput-object v4, v1, v15

    const-string v4, "kde"

    const-string v15, "kde-Latn-TZ"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x66

    aput-object v4, v1, v15

    const-string v4, "kea"

    const-string v15, "kea-Latn-CV"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x67

    aput-object v4, v1, v15

    const-string v4, "kfo"

    const-string v15, "kfo-Latn-CI"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x68

    aput-object v4, v1, v15

    const-string v4, "kg"

    const-string v15, "kg-Latn-CD"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x69

    aput-object v4, v1, v15

    const-string v4, "kha"

    const-string v15, "kha-Latn-IN"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x6a

    aput-object v4, v1, v15

    const-string v4, "khq"

    const-string v15, "khq-Latn-ML"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x6b

    aput-object v4, v1, v15

    const-string v4, "ki"

    const-string v15, "ki-Latn-KE"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x6c

    aput-object v4, v1, v15

    const-string v4, "kj"

    const-string v15, "kj-Latn-NA"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x6d

    aput-object v4, v1, v15

    const-string v4, "kk"

    const-string v15, "kk-Cyrl-KZ"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x6e

    aput-object v4, v1, v15

    const-string v4, "kl"

    const-string v15, "kl-Latn-GL"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x6f

    aput-object v4, v1, v15

    const-string v4, "kln"

    const-string v15, "kln-Latn-KE"

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0x70

    aput-object v4, v1, v15

    const-string v4, "km-Khmr-KH"

    const-string v15, "km"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x71

    aput-object v15, v1, v17

    const-string v15, "kn"

    const-string v3, "kn-Knda-IN"

    filled-new-array {v15, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x72

    aput-object v3, v1, v15

    const-string v3, "ko-Kore-KR"

    const-string v15, "ko"

    filled-new-array {v15, v3}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x73

    aput-object v15, v1, v18

    const-string v15, "koi"

    move-object/from16 v18, v2

    const-string v2, "koi-Cyrl-RU"

    filled-new-array {v15, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x74

    aput-object v2, v1, v15

    const-string v2, "kok"

    const-string v15, "kok-Deva-IN"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x75

    aput-object v2, v1, v15

    const-string v2, "kos"

    const-string v15, "kos-Latn-FM"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x76

    aput-object v2, v1, v15

    const-string v2, "kpe"

    const-string v15, "kpe-Latn-LR"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x77

    aput-object v2, v1, v15

    const-string v2, "kpv"

    const-string v15, "kpv-Cyrl-RU"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x78

    aput-object v2, v1, v15

    const-string v2, "krc"

    const-string v15, "krc-Cyrl-RU"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x79

    aput-object v2, v1, v15

    const-string v2, "ks"

    const-string v15, "ks-Arab-IN"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x7a

    aput-object v2, v1, v15

    const-string v2, "ksb"

    const-string v15, "ksb-Latn-TZ"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x7b

    aput-object v2, v1, v15

    const-string v2, "ksh"

    const-string v15, "ksh-Latn-DE"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x7c

    aput-object v2, v1, v15

    const-string v2, "ku"

    const-string v15, "ku-Arab-IQ"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x7d

    aput-object v2, v1, v15

    const-string v2, "ku-Latn"

    const-string v15, "ku-Latn-TR"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x7e

    aput-object v2, v1, v15

    const-string v2, "ku-SY"

    const-string v15, "ku-Latn-SY"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x7f

    aput-object v2, v1, v15

    const-string v2, "ku-TR"

    const-string v15, "ku-Latn-TR"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x80

    aput-object v2, v1, v15

    const-string v2, "kum"

    const-string v15, "kum-Cyrl-RU"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x81

    aput-object v2, v1, v15

    const-string v2, "kw"

    const-string v15, "kw-Latn-GB"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x82

    aput-object v2, v1, v15

    const-string v2, "ky"

    const-string v15, "ky-Cyrl-KG"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x83

    aput-object v2, v1, v15

    const-string v2, "la"

    const-string v15, "la-Latn-VA"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x84

    aput-object v2, v1, v15

    const-string v2, "lag"

    const-string v15, "lag-Latn-TZ"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x85

    aput-object v2, v1, v15

    const-string v2, "lah"

    const-string v15, "lah-Arab-PK"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x86

    aput-object v2, v1, v15

    const-string v2, "lb"

    const-string v15, "lb-Latn-LU"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x87

    aput-object v2, v1, v15

    const-string v2, "lbe"

    const-string v15, "lbe-Cyrl-RU"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x88

    aput-object v2, v1, v15

    const-string v2, "lez"

    const-string v15, "lez-Cyrl-RU"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x89

    aput-object v2, v1, v15

    const-string v2, "lg"

    const-string v15, "lg-Latn-UG"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x8a

    aput-object v2, v1, v15

    const-string v2, "ln"

    const-string v15, "ln-Latn-CD"

    filled-new-array {v2, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x8b

    aput-object v2, v1, v15

    const-string v2, "lo-Laoo-LA"

    const-string v15, "lo"

    filled-new-array {v15, v2}, [Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x8c

    aput-object v15, v1, v19

    const-string/jumbo v15, "lt"

    move-object/from16 v19, v5

    const-string/jumbo v5, "lt-Latn-LT"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x8d

    aput-object v5, v1, v15

    const-string/jumbo v5, "lua"

    const-string/jumbo v15, "lua-Latn-CD"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x8e

    aput-object v5, v1, v15

    const-string/jumbo v5, "luo"

    const-string/jumbo v15, "luo-Latn-KE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x8f

    aput-object v5, v1, v15

    const-string/jumbo v5, "luy"

    const-string/jumbo v15, "luy-Latn-KE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x90

    aput-object v5, v1, v15

    const-string/jumbo v5, "lv"

    const-string/jumbo v15, "lv-Latn-LV"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x91

    aput-object v5, v1, v15

    const-string/jumbo v5, "mai"

    const-string/jumbo v15, "mai-Deva-IN"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x92

    aput-object v5, v1, v15

    const-string/jumbo v5, "mas"

    const-string/jumbo v15, "mas-Latn-KE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x93

    aput-object v5, v1, v15

    const-string/jumbo v5, "mdf"

    const-string/jumbo v15, "mdf-Cyrl-RU"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x94

    aput-object v5, v1, v15

    const-string/jumbo v5, "mdh"

    const-string/jumbo v15, "mdh-Latn-PH"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x95

    aput-object v5, v1, v15

    const-string/jumbo v5, "mer"

    const-string/jumbo v15, "mer-Latn-KE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x96

    aput-object v5, v1, v15

    const-string/jumbo v5, "mfe"

    const-string/jumbo v15, "mfe-Latn-MU"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x97

    aput-object v5, v1, v15

    const-string/jumbo v5, "mg"

    const-string/jumbo v15, "mg-Latn-MG"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x98

    aput-object v5, v1, v15

    const-string/jumbo v5, "mh"

    const-string/jumbo v15, "mh-Latn-MH"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x99

    aput-object v5, v1, v15

    const-string/jumbo v5, "mi"

    const-string/jumbo v15, "mi-Latn-NZ"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x9a

    aput-object v5, v1, v15

    const-string/jumbo v5, "mk"

    const-string/jumbo v15, "mk-Cyrl-MK"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x9b

    aput-object v5, v1, v15

    const-string/jumbo v5, "ml"

    const-string/jumbo v15, "ml-Mlym-IN"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x9c

    aput-object v5, v1, v15

    const-string/jumbo v5, "mn"

    const-string/jumbo v15, "mn-Cyrl-MN"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0x9d

    aput-object v5, v1, v15

    const-string/jumbo v5, "mn-Mong-CN"

    const-string/jumbo v15, "mn-CN"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x9e

    aput-object v15, v1, v20

    const-string/jumbo v15, "mn-Mong"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x9f

    aput-object v15, v1, v20

    const-string/jumbo v15, "mr"

    const-string/jumbo v0, "mr-Deva-IN"

    filled-new-array {v15, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xa0

    aput-object v0, v1, v15

    const-string/jumbo v0, "ms"

    const-string/jumbo v15, "ms-Latn-MY"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xa1

    aput-object v0, v1, v15

    const-string/jumbo v0, "mt"

    const-string/jumbo v15, "mt-Latn-MT"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xa2

    aput-object v0, v1, v15

    const-string/jumbo v0, "my-Mymr-MM"

    const-string/jumbo v15, "my"

    filled-new-array {v15, v0}, [Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0xa3

    aput-object v15, v1, v20

    const-string/jumbo v15, "myv"

    move-object/from16 v20, v5

    const-string/jumbo v5, "myv-Cyrl-RU"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa4

    aput-object v5, v1, v15

    const-string/jumbo v5, "na"

    const-string/jumbo v15, "na-Latn-NR"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa5

    aput-object v5, v1, v15

    const-string/jumbo v5, "naq"

    const-string/jumbo v15, "naq-Latn-NA"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa6

    aput-object v5, v1, v15

    const-string/jumbo v5, "nb"

    const-string/jumbo v15, "nb-Latn-NO"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa7

    aput-object v5, v1, v15

    const-string/jumbo v5, "nd"

    const-string/jumbo v15, "nd-Latn-ZW"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa8

    aput-object v5, v1, v15

    const-string/jumbo v5, "nds"

    const-string/jumbo v15, "nds-Latn-DE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xa9

    aput-object v5, v1, v15

    const-string/jumbo v5, "ne"

    const-string/jumbo v15, "ne-Deva-NP"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xaa

    aput-object v5, v1, v15

    const-string/jumbo v5, "niu"

    const-string/jumbo v15, "niu-Latn-NU"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xab

    aput-object v5, v1, v15

    const-string/jumbo v5, "nl"

    const-string/jumbo v15, "nl-Latn-NL"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xac

    aput-object v5, v1, v15

    const-string/jumbo v5, "nn"

    const-string/jumbo v15, "nn-Latn-NO"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xad

    aput-object v5, v1, v15

    const-string/jumbo v5, "nr"

    const-string/jumbo v15, "nr-Latn-ZA"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xae

    aput-object v5, v1, v15

    const-string/jumbo v5, "nso"

    const-string/jumbo v15, "nso-Latn-ZA"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xaf

    aput-object v5, v1, v15

    const-string/jumbo v5, "ny"

    const-string/jumbo v15, "ny-Latn-MW"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb0

    aput-object v5, v1, v15

    const-string/jumbo v5, "nyn"

    const-string/jumbo v15, "nyn-Latn-UG"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb1

    aput-object v5, v1, v15

    const-string/jumbo v5, "oc"

    const-string/jumbo v15, "oc-Latn-FR"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb2

    aput-object v5, v1, v15

    const-string/jumbo v5, "om"

    const-string/jumbo v15, "om-Latn-ET"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb3

    aput-object v5, v1, v15

    const-string/jumbo v5, "or"

    const-string/jumbo v15, "or-Orya-IN"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb4

    aput-object v5, v1, v15

    const-string/jumbo v5, "os"

    const-string/jumbo v15, "os-Cyrl-GE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb5

    aput-object v5, v1, v15

    const-string/jumbo v5, "pa"

    const-string/jumbo v15, "pa-Guru-IN"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb6

    aput-object v5, v1, v15

    const-string/jumbo v5, "pa-Arab"

    const-string/jumbo v15, "pa-Arab-PK"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb7

    aput-object v5, v1, v15

    const-string/jumbo v5, "pa-PK"

    const-string/jumbo v15, "pa-Arab-PK"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb8

    aput-object v5, v1, v15

    const-string/jumbo v5, "pag"

    const-string/jumbo v15, "pag-Latn-PH"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xb9

    aput-object v5, v1, v15

    const-string/jumbo v5, "pap"

    const-string/jumbo v15, "pap-Latn-AN"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xba

    aput-object v5, v1, v15

    const-string/jumbo v5, "pau"

    const-string/jumbo v15, "pau-Latn-PW"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xbb

    aput-object v5, v1, v15

    const-string/jumbo v5, "pl"

    const-string/jumbo v15, "pl-Latn-PL"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xbc

    aput-object v5, v1, v15

    const-string/jumbo v5, "pon"

    const-string/jumbo v15, "pon-Latn-FM"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xbd

    aput-object v5, v1, v15

    const-string/jumbo v5, "ps"

    const-string/jumbo v15, "ps-Arab-AF"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xbe

    aput-object v5, v1, v15

    const-string/jumbo v5, "pt"

    const-string/jumbo v15, "pt-Latn-BR"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xbf

    aput-object v5, v1, v15

    const-string/jumbo v5, "qu"

    const-string/jumbo v15, "qu-Latn-PE"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xc0

    aput-object v5, v1, v15

    const-string/jumbo v5, "rm"

    const-string/jumbo v15, "rm-Latn-CH"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xc1

    aput-object v5, v1, v15

    const-string/jumbo v5, "rn"

    const-string/jumbo v15, "rn-Latn-BI"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xc2

    aput-object v5, v1, v15

    const-string/jumbo v5, "ro"

    const-string/jumbo v15, "ro-Latn-RO"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xc3

    aput-object v5, v1, v15

    const-string/jumbo v5, "rof"

    const-string/jumbo v15, "rof-Latn-TZ"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    const/16 v15, 0xc4

    aput-object v5, v1, v15

    const-string/jumbo v5, "ru-Cyrl-RU"

    const-string/jumbo v15, "ru"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0xc5

    aput-object v15, v1, v21

    const-string/jumbo v15, "rw"

    move-object/from16 v21, v8

    const-string/jumbo v8, "rw-Latn-RW"

    filled-new-array {v15, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xc6

    aput-object v8, v1, v15

    const-string/jumbo v8, "rwk"

    const-string/jumbo v15, "rwk-Latn-TZ"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xc7

    aput-object v8, v1, v15

    const-string/jumbo v8, "sa"

    const-string/jumbo v15, "sa-Deva-IN"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xc8

    aput-object v8, v1, v15

    const-string/jumbo v8, "sah"

    const-string/jumbo v15, "sah-Cyrl-RU"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xc9

    aput-object v8, v1, v15

    const-string/jumbo v8, "saq"

    const-string/jumbo v15, "saq-Latn-KE"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xca

    aput-object v8, v1, v15

    const-string/jumbo v8, "sat"

    const-string/jumbo v15, "sat-Latn-IN"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xcb

    aput-object v8, v1, v15

    const-string/jumbo v8, "sd"

    const-string/jumbo v15, "sd-Arab-IN"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xcc

    aput-object v8, v1, v15

    const-string/jumbo v8, "se"

    const-string/jumbo v15, "se-Latn-NO"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xcd

    aput-object v8, v1, v15

    const-string/jumbo v8, "seh"

    const-string/jumbo v15, "seh-Latn-MZ"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xce

    aput-object v8, v1, v15

    const-string/jumbo v8, "ses"

    const-string/jumbo v15, "ses-Latn-ML"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xcf

    aput-object v8, v1, v15

    const-string/jumbo v8, "sg"

    const-string/jumbo v15, "sg-Latn-CF"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xd0

    aput-object v8, v1, v15

    const-string/jumbo v8, "shi"

    const-string/jumbo v15, "shi-Latn-MA"

    filled-new-array {v8, v15}, [Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xd1

    aput-object v8, v1, v15

    const-string/jumbo v8, "si-Sinh-LK"

    const-string/jumbo v15, "si"

    filled-new-array {v15, v8}, [Ljava/lang/String;

    move-result-object v15

    const/16 v22, 0xd2

    aput-object v15, v1, v22

    const-string/jumbo v15, "sid"

    move-object/from16 v22, v0

    const-string/jumbo v0, "sid-Latn-ET"

    filled-new-array {v15, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd3

    aput-object v0, v1, v15

    const-string/jumbo v0, "sk"

    const-string/jumbo v15, "sk-Latn-SK"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd4

    aput-object v0, v1, v15

    const-string/jumbo v0, "sl"

    const-string/jumbo v15, "sl-Latn-SI"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd5

    aput-object v0, v1, v15

    const-string/jumbo v0, "sm"

    const-string/jumbo v15, "sm-Latn-WS"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd6

    aput-object v0, v1, v15

    const-string/jumbo v0, "sn"

    const-string/jumbo v15, "sn-Latn-ZW"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd7

    aput-object v0, v1, v15

    const-string/jumbo v0, "so"

    const-string/jumbo v15, "so-Latn-SO"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd8

    aput-object v0, v1, v15

    const-string/jumbo v0, "sq"

    const-string/jumbo v15, "sq-Latn-AL"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xd9

    aput-object v0, v1, v15

    const-string/jumbo v0, "sr"

    const-string/jumbo v15, "sr-Cyrl-RS"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xda

    aput-object v0, v1, v15

    const-string/jumbo v0, "sr-ME"

    const-string/jumbo v15, "sr-Latn-ME"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xdb

    aput-object v0, v1, v15

    const-string/jumbo v0, "ss"

    const-string/jumbo v15, "ss-Latn-ZA"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xdc

    aput-object v0, v1, v15

    const-string/jumbo v0, "ssy"

    const-string/jumbo v15, "ssy-Latn-ER"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xdd

    aput-object v0, v1, v15

    const-string/jumbo v0, "st"

    const-string/jumbo v15, "st-Latn-ZA"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xde

    aput-object v0, v1, v15

    const-string/jumbo v0, "su"

    const-string/jumbo v15, "su-Latn-ID"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xdf

    aput-object v0, v1, v15

    const-string/jumbo v0, "sv"

    const-string/jumbo v15, "sv-Latn-SE"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe0

    aput-object v0, v1, v15

    const-string/jumbo v0, "sw"

    const-string/jumbo v15, "sw-Latn-TZ"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe1

    aput-object v0, v1, v15

    const-string/jumbo v0, "swb"

    const-string/jumbo v15, "swb-Arab-KM"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe2

    aput-object v0, v1, v15

    const-string/jumbo v0, "syr"

    const-string/jumbo v15, "syr-Syri-SY"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe3

    aput-object v0, v1, v15

    const-string/jumbo v0, "ta"

    const-string/jumbo v15, "ta-Taml-IN"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe4

    aput-object v0, v1, v15

    const-string/jumbo v0, "te"

    const-string/jumbo v15, "te-Telu-IN"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe5

    aput-object v0, v1, v15

    const-string/jumbo v0, "teo"

    const-string/jumbo v15, "teo-Latn-UG"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe6

    aput-object v0, v1, v15

    const-string/jumbo v0, "tet"

    const-string/jumbo v15, "tet-Latn-TL"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe7

    aput-object v0, v1, v15

    const-string/jumbo v0, "tg"

    const-string/jumbo v15, "tg-Cyrl-TJ"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe8

    aput-object v0, v1, v15

    const-string/jumbo v0, "th"

    const-string/jumbo v15, "th-Thai-TH"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xe9

    aput-object v0, v1, v15

    const-string/jumbo v0, "ti"

    const-string/jumbo v15, "ti-Ethi-ET"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xea

    aput-object v0, v1, v15

    const-string/jumbo v0, "tig"

    const-string/jumbo v15, "tig-Ethi-ER"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xeb

    aput-object v0, v1, v15

    const-string/jumbo v0, "tk"

    const-string/jumbo v15, "tk-Latn-TM"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xec

    aput-object v0, v1, v15

    const-string/jumbo v0, "tkl"

    const-string/jumbo v15, "tkl-Latn-TK"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xed

    aput-object v0, v1, v15

    const-string/jumbo v0, "tl"

    const-string/jumbo v15, "tl-Latn-PH"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xee

    aput-object v0, v1, v15

    const-string/jumbo v0, "tn"

    const-string/jumbo v15, "tn-Latn-ZA"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xef

    aput-object v0, v1, v15

    const-string/jumbo v0, "to"

    const-string/jumbo v15, "to-Latn-TO"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf0

    aput-object v0, v1, v15

    const-string/jumbo v0, "tpi"

    const-string/jumbo v15, "tpi-Latn-PG"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf1

    aput-object v0, v1, v15

    const-string/jumbo v0, "tr"

    const-string/jumbo v15, "tr-Latn-TR"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf2

    aput-object v0, v1, v15

    const-string/jumbo v0, "trv"

    const-string/jumbo v15, "trv-Latn-TW"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf3

    aput-object v0, v1, v15

    const-string/jumbo v0, "ts"

    const-string/jumbo v15, "ts-Latn-ZA"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf4

    aput-object v0, v1, v15

    const-string/jumbo v0, "tsg"

    const-string/jumbo v15, "tsg-Latn-PH"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf5

    aput-object v0, v1, v15

    const-string/jumbo v0, "tt"

    const-string/jumbo v15, "tt-Cyrl-RU"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf6

    aput-object v0, v1, v15

    const-string/jumbo v0, "tts"

    const-string/jumbo v15, "tts-Thai-TH"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf7

    aput-object v0, v1, v15

    const-string/jumbo v0, "tvl"

    const-string/jumbo v15, "tvl-Latn-TV"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf8

    aput-object v0, v1, v15

    const-string/jumbo v0, "ty"

    const-string/jumbo v15, "ty-Latn-PF"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xf9

    aput-object v0, v1, v15

    const-string/jumbo v0, "tyv"

    const-string/jumbo v15, "tyv-Cyrl-RU"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xfa

    aput-object v0, v1, v15

    const-string/jumbo v0, "tzm"

    const-string/jumbo v15, "tzm-Latn-MA"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xfb

    aput-object v0, v1, v15

    const-string/jumbo v0, "udm"

    const-string/jumbo v15, "udm-Cyrl-RU"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xfc

    aput-object v0, v1, v15

    const-string/jumbo v0, "ug"

    const-string/jumbo v15, "ug-Arab-CN"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xfd

    aput-object v0, v1, v15

    const-string/jumbo v0, "uk"

    const-string/jumbo v15, "uk-Cyrl-UA"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xfe

    aput-object v0, v1, v15

    const-string/jumbo v0, "uli"

    const-string/jumbo v15, "uli-Latn-FM"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0xff

    aput-object v0, v1, v15

    const-string/jumbo v0, "und"

    const-string v15, "en-Latn-US"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x100

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AD"

    const-string v15, "ca-Latn-AD"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x101

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AE"

    const-string v15, "ar-Arab-AE"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x102

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AF"

    const-string v15, "fa-Arab-AF"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x103

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AL"

    const-string/jumbo v15, "sq-Latn-AL"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x104

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AM"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x105

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AN"

    const-string/jumbo v15, "pap-Latn-AN"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x106

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AO"

    const-string/jumbo v15, "pt-Latn-AO"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x107

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AR"

    const-string v15, "es-Latn-AR"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x108

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AS"

    const-string/jumbo v15, "sm-Latn-AS"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x109

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AT"

    const-string v15, "de-Latn-AT"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10a

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AW"

    const-string/jumbo v15, "nl-Latn-AW"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10b

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AX"

    const-string/jumbo v15, "sv-Latn-AX"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10c

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-AZ"

    const-string v15, "az-Latn-AZ"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10d

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-Arab"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10e

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-Arab-CN"

    const-string/jumbo v15, "ug-Arab-CN"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x10f

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-Arab-IN"

    const-string/jumbo v15, "ur-Arab-IN"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x110

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-Arab-NG"

    const-string v15, "ha-Arab-NG"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x111

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-Arab-PK"

    const-string/jumbo v15, "ur-Arab-PK"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x112

    aput-object v0, v1, v15

    const-string/jumbo v0, "und-Armn"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x113

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BA"

    const-string v12, "bs-Latn-BA"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x114

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BD"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x115

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BE"

    const-string/jumbo v12, "nl-Latn-BE"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x116

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BF"

    const-string v12, "fr-Latn-BF"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x117

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BG"

    const-string v12, "bg-Cyrl-BG"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x118

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BH"

    const-string v12, "ar-Arab-BH"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x119

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BI"

    const-string/jumbo v12, "rn-Latn-BI"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x11a

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BJ"

    const-string v12, "fr-Latn-BJ"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x11b

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BL"

    const-string v12, "fr-Latn-BL"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x11c

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BN"

    const-string/jumbo v12, "ms-Latn-BN"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x11d

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BO"

    const-string v12, "es-Latn-BO"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x11e

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BR"

    const-string/jumbo v12, "pt-Latn-BR"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x11f

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BT"

    const-string v12, "dz-Tibt-BT"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x120

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-BY"

    const-string v12, "be-Cyrl-BY"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x121

    aput-object v0, v1, v12

    const-string/jumbo v0, "und-Beng"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x122

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CD"

    const-string/jumbo v7, "sw-Latn-CD"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x123

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CF"

    const-string v7, "fr-Latn-CF"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x124

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CG"

    const-string v7, "fr-Latn-CG"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x125

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CH"

    const-string v7, "de-Latn-CH"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x126

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CI"

    const-string v7, "fr-Latn-CI"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x127

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CL"

    const-string v7, "es-Latn-CL"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x128

    aput-object v0, v1, v7

    const-string/jumbo v0, "und-CM"

    const-string v7, "fr-Latn-CM"

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x129

    aput-object v0, v1, v7

    const-string/jumbo v0, "zh-Hans-CN"

    const-string/jumbo v7, "und-CN"

    filled-new-array {v7, v0}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x12a

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CO"

    const-string v12, "es-Latn-CO"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x12b

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CP"

    const-string v12, "fr-Latn-CP"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x12c

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CR"

    const-string v12, "es-Latn-CR"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x12d

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CU"

    const-string v12, "es-Latn-CU"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x12e

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CV"

    const-string/jumbo v12, "pt-Latn-CV"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x12f

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CY"

    const-string v12, "el-Grek-CY"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x130

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-CZ"

    const-string v12, "cs-Latn-CZ"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x131

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-Cher"

    const-string v12, "chr-Cher-US"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x132

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-Cyrl"

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x133

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-Cyrl-BA"

    const-string/jumbo v12, "sr-Cyrl-BA"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x134

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-Cyrl-GE"

    const-string v12, "ab-Cyrl-GE"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x135

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-DE"

    const-string v12, "de-Latn-DE"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x136

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-DJ"

    const-string v12, "aa-Latn-DJ"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x137

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-DK"

    const-string v12, "da-Latn-DK"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x138

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-DO"

    const-string v12, "es-Latn-DO"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x139

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-DZ"

    const-string v12, "ar-Arab-DZ"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x13a

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-Deva"

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x13b

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-EA"

    const-string v12, "es-Latn-EA"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x13c

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-EC"

    const-string v12, "es-Latn-EC"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x13d

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-EE"

    const-string v12, "et-Latn-EE"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x13e

    aput-object v7, v1, v12

    const-string/jumbo v7, "und-EG"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13f

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-EH"

    const-string v7, "ar-Arab-EH"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x140

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-ER"

    const-string/jumbo v7, "ti-Ethi-ER"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x141

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-ES"

    const-string v7, "es-Latn-ES"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x142

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Ethi"

    const-string v7, "am-Ethi-ET"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x143

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-FI"

    const-string v7, "fi-Latn-FI"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x144

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-FM"

    const-string v7, "chk-Latn-FM"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x145

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-FO"

    const-string v7, "fo-Latn-FO"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x146

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-FR"

    const-string v7, "fr-Latn-FR"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x147

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GA"

    const-string v7, "fr-Latn-GA"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x148

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GE"

    filled-new-array {v6, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x149

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GF"

    const-string v7, "fr-Latn-GF"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14a

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GH"

    const-string v7, "ak-Latn-GH"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14b

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GL"

    const-string v7, "kl-Latn-GL"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14c

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GN"

    const-string v7, "fr-Latn-GN"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14d

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GP"

    const-string v7, "fr-Latn-GP"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14e

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GQ"

    const-string v7, "es-Latn-GQ"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14f

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GR"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x150

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GT"

    const-string v7, "es-Latn-GT"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x151

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-GW"

    const-string/jumbo v7, "pt-Latn-GW"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x152

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Geor"

    filled-new-array {v6, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x153

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Grek"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x154

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Gujr"

    const-string v7, "gu-Gujr-IN"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x155

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Guru"

    const-string/jumbo v7, "pa-Guru-IN"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x156

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-HK"

    const-string/jumbo v7, "zh-Hant-HK"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x157

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-HN"

    const-string v7, "es-Latn-HN"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x158

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-HR"

    const-string v7, "hr-Latn-HR"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x159

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-HT"

    const-string v7, "ht-Latn-HT"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15a

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-HU"

    const-string v7, "hu-Latn-HU"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15b

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Hani"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15c

    aput-object v6, v1, v7

    const-string/jumbo v6, "und-Hans"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15d

    aput-object v6, v1, v7

    const-string/jumbo v6, "zh-Hant-TW"

    const-string/jumbo v7, "und-Hant"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x15e

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-Hebr"

    filled-new-array {v7, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x15f

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IC"

    const-string v9, "es-Latn-IC"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x160

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-ID"

    const-string v9, "id-Latn-ID"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x161

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IL"

    filled-new-array {v7, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x162

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IN"

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x163

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IQ"

    const-string v9, "ar-Arab-IQ"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x164

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IR"

    const-string v9, "fa-Arab-IR"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x165

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IS"

    const-string v9, "is-Latn-IS"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x166

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-IT"

    const-string v9, "it-Latn-IT"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x167

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-JO"

    const-string v9, "ar-Arab-JO"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x168

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-JP"

    filled-new-array {v7, v13}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x169

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-Jpan"

    filled-new-array {v7, v13}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16a

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KG"

    const-string v9, "ky-Cyrl-KG"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16b

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KH"

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16c

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KM"

    const-string v9, "ar-Arab-KM"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16d

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KP"

    const-string v9, "ko-Kore-KP"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16e

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KR"

    filled-new-array {v7, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16f

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KW"

    const-string v9, "ar-Arab-KW"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x170

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-KZ"

    const-string/jumbo v9, "ru-Cyrl-KZ"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x171

    aput-object v7, v1, v9

    const-string/jumbo v7, "und-Khmr"

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x172

    aput-object v4, v1, v7

    const-string/jumbo v4, "und-Knda"

    const-string v7, "kn-Knda-IN"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x173

    aput-object v4, v1, v7

    const-string/jumbo v4, "und-Kore"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x174

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LA"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x175

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LB"

    const-string v4, "ar-Arab-LB"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x176

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LI"

    const-string v4, "de-Latn-LI"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x177

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LK"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x178

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LS"

    const-string/jumbo v4, "st-Latn-LS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x179

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LT"

    const-string/jumbo v4, "lt-Latn-LT"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17a

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LU"

    const-string v4, "fr-Latn-LU"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17b

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LV"

    const-string/jumbo v4, "lv-Latn-LV"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17c

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-LY"

    const-string v4, "ar-Arab-LY"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17d

    aput-object v3, v1, v4

    const-string/jumbo v3, "und-Laoo"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17e

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-CN"

    const-string/jumbo v3, "za-Latn-CN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17f

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-CY"

    const-string/jumbo v3, "tr-Latn-CY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x180

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-DZ"

    const-string v3, "fr-Latn-DZ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x181

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-ER"

    const-string v3, "aa-Latn-ER"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x182

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-KM"

    const-string v3, "fr-Latn-KM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x183

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-MA"

    const-string v3, "fr-Latn-MA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x184

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-MK"

    const-string/jumbo v3, "sq-Latn-MK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x185

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-SY"

    const-string v3, "fr-Latn-SY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x186

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Latn-TN"

    const-string v3, "fr-Latn-TN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x187

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MA"

    const-string v3, "ar-Arab-MA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x188

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MC"

    const-string v3, "fr-Latn-MC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x189

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MD"

    const-string/jumbo v3, "ro-Latn-MD"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18a

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-ME"

    const-string/jumbo v3, "sr-Latn-ME"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18b

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MF"

    const-string v3, "fr-Latn-MF"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18c

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MG"

    const-string/jumbo v3, "mg-Latn-MG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18d

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MK"

    const-string/jumbo v3, "mk-Cyrl-MK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18e

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-ML"

    const-string v3, "bm-Latn-ML"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18f

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-MM"

    move-object/from16 v3, v22

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x190

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MN"

    const-string/jumbo v4, "mn-Cyrl-MN"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x191

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MO"

    const-string/jumbo v4, "zh-Hant-MO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x192

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MQ"

    const-string v4, "fr-Latn-MQ"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x193

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MR"

    const-string v4, "ar-Arab-MR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x194

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MT"

    const-string/jumbo v4, "mt-Latn-MT"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x195

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MU"

    const-string/jumbo v4, "mfe-Latn-MU"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x196

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-MV"

    move-object/from16 v4, v21

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x197

    aput-object v2, v1, v7

    const-string/jumbo v2, "und-MX"

    const-string v7, "es-Latn-MX"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x198

    aput-object v2, v1, v7

    const-string/jumbo v2, "und-MY"

    const-string/jumbo v7, "ms-Latn-MY"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x199

    aput-object v2, v1, v7

    const-string/jumbo v2, "und-MZ"

    const-string/jumbo v7, "pt-Latn-MZ"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x19a

    aput-object v2, v1, v7

    const-string/jumbo v2, "und-Mlym"

    const-string/jumbo v7, "ml-Mlym-IN"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x19b

    aput-object v2, v1, v7

    const-string/jumbo v2, "und-Mong"

    move-object/from16 v7, v20

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x19c

    aput-object v2, v1, v7

    const-string/jumbo v2, "und-Mymr"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19d

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NA"

    const-string v3, "kj-Latn-NA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19e

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NC"

    const-string v3, "fr-Latn-NC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19f

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NE"

    const-string v3, "ha-Latn-NE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a0

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NI"

    const-string v3, "es-Latn-NI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a1

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NL"

    const-string/jumbo v3, "nl-Latn-NL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a2

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NO"

    const-string/jumbo v3, "nb-Latn-NO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a3

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-NP"

    const-string/jumbo v3, "ne-Deva-NP"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a4

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-OM"

    const-string v3, "ar-Arab-OM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a5

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Orya"

    const-string/jumbo v3, "or-Orya-IN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a6

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PA"

    const-string v3, "es-Latn-PA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a7

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PE"

    const-string v3, "es-Latn-PE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a8

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PF"

    const-string v3, "fr-Latn-PF"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a9

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PG"

    const-string/jumbo v3, "tpi-Latn-PG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1aa

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PH"

    const-string v3, "fil-Latn-PH"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ab

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PK"

    const-string/jumbo v3, "ur-Arab-PK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ac

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PL"

    const-string/jumbo v3, "pl-Latn-PL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ad

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PM"

    const-string v3, "fr-Latn-PM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ae

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PR"

    const-string v3, "es-Latn-PR"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1af

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PS"

    const-string v3, "ar-Arab-PS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b0

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PT"

    const-string/jumbo v3, "pt-Latn-PT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b1

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PW"

    const-string/jumbo v3, "pau-Latn-PW"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b2

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-PY"

    const-string v3, "gn-Latn-PY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b3

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-QA"

    const-string v3, "ar-Arab-QA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b4

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-RE"

    const-string v3, "fr-Latn-RE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b5

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-RO"

    const-string/jumbo v3, "ro-Latn-RO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b6

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-RS"

    const-string/jumbo v3, "sr-Cyrl-RS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b7

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-RU"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b8

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-RW"

    const-string/jumbo v3, "rw-Latn-RW"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b9

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SA"

    const-string v3, "ar-Arab-SA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ba

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SC"

    const-string v3, "fr-Latn-SC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1bb

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SD"

    const-string v3, "ar-Arab-SD"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1bc

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SE"

    const-string/jumbo v3, "sv-Latn-SE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1bd

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SI"

    const-string/jumbo v3, "sl-Latn-SI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1be

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SJ"

    const-string/jumbo v3, "nb-Latn-SJ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1bf

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SK"

    const-string/jumbo v3, "sk-Latn-SK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c0

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SM"

    const-string v3, "it-Latn-SM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c1

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SN"

    const-string v3, "fr-Latn-SN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c2

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SO"

    const-string/jumbo v3, "so-Latn-SO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c3

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SR"

    const-string/jumbo v3, "nl-Latn-SR"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c4

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-ST"

    const-string/jumbo v3, "pt-Latn-ST"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c5

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SV"

    const-string v3, "es-Latn-SV"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c6

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-SY"

    const-string v3, "ar-Arab-SY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c7

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Sinh"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c8

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TD"

    const-string v3, "fr-Latn-TD"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c9

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TG"

    const-string v3, "fr-Latn-TG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ca

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TH"

    const-string/jumbo v3, "th-Thai-TH"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1cb

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TJ"

    const-string/jumbo v3, "tg-Cyrl-TJ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1cc

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TK"

    const-string/jumbo v3, "tkl-Latn-TK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1cd

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TL"

    const-string/jumbo v3, "pt-Latn-TL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ce

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TM"

    const-string/jumbo v3, "tk-Latn-TM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1cf

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TN"

    const-string v3, "ar-Arab-TN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d0

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TO"

    const-string/jumbo v3, "to-Latn-TO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d1

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TR"

    const-string/jumbo v3, "tr-Latn-TR"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d2

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TV"

    const-string/jumbo v3, "tvl-Latn-TV"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d3

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TW"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d4

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-TZ"

    const-string/jumbo v3, "sw-Latn-TZ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d5

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Taml"

    const-string/jumbo v3, "ta-Taml-IN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d6

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Telu"

    const-string/jumbo v3, "te-Telu-IN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d7

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Tfng"

    const-string/jumbo v3, "shi-Tfng-MA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d8

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Thaa"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d9

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Thai"

    const-string/jumbo v3, "th-Thai-TH"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1da

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Tibt"

    const-string v3, "bo-Tibt-CN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1db

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-UA"

    const-string/jumbo v3, "uk-Cyrl-UA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1dc

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-UG"

    const-string/jumbo v3, "sw-Latn-UG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1dd

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-UY"

    const-string v3, "es-Latn-UY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1de

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-UZ"

    const-string/jumbo v3, "uz-Cyrl-UZ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1df

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-VA"

    const-string v3, "la-Latn-VA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e0

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-VE"

    const-string v3, "es-Latn-VE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e1

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-VN"

    const-string/jumbo v3, "vi-Latn-VN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e2

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-VU"

    const-string v3, "fr-Latn-VU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e3

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-WF"

    const-string v3, "fr-Latn-WF"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e4

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-WS"

    const-string/jumbo v3, "sm-Latn-WS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e5

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-YE"

    const-string v3, "ar-Arab-YE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e6

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-YT"

    const-string v3, "fr-Latn-YT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e7

    aput-object v2, v1, v3

    const-string/jumbo v2, "und-Yiii"

    const-string v3, "ii-Yiii-CN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e8

    aput-object v2, v1, v3

    const-string/jumbo v2, "ur"

    const-string/jumbo v3, "ur-Arab-PK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e9

    aput-object v2, v1, v3

    const-string/jumbo v2, "uz"

    const-string/jumbo v3, "uz-Cyrl-UZ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ea

    aput-object v2, v1, v3

    const-string/jumbo v2, "uz-AF"

    const-string/jumbo v3, "uz-Arab-AF"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1eb

    aput-object v2, v1, v3

    const-string/jumbo v2, "uz-Arab"

    const-string/jumbo v3, "uz-Arab-AF"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ec

    aput-object v2, v1, v3

    const-string/jumbo v2, "ve"

    const-string/jumbo v3, "ve-Latn-ZA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ed

    aput-object v2, v1, v3

    const-string/jumbo v2, "vi"

    const-string/jumbo v3, "vi-Latn-VN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ee

    aput-object v2, v1, v3

    const-string/jumbo v2, "vun"

    const-string/jumbo v3, "vun-Latn-TZ"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ef

    aput-object v2, v1, v3

    const-string/jumbo v2, "wal"

    const-string/jumbo v3, "wal-Ethi-ET"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f0

    aput-object v2, v1, v3

    const-string/jumbo v2, "war"

    const-string/jumbo v3, "war-Latn-PH"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f1

    aput-object v2, v1, v3

    const-string/jumbo v2, "wo"

    const-string/jumbo v3, "wo-Latn-SN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f2

    aput-object v2, v1, v3

    const-string/jumbo v2, "xh"

    const-string/jumbo v3, "xh-Latn-ZA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f3

    aput-object v2, v1, v3

    const-string/jumbo v2, "xog"

    const-string/jumbo v3, "xog-Latn-UG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f4

    aput-object v2, v1, v3

    const-string/jumbo v2, "yap"

    const-string/jumbo v3, "yap-Latn-FM"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f5

    aput-object v2, v1, v3

    const-string/jumbo v2, "yo"

    const-string/jumbo v3, "yo-Latn-NG"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f6

    aput-object v2, v1, v3

    const-string/jumbo v2, "za"

    const-string/jumbo v3, "za-Latn-CN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f7

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f8

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh-HK"

    const-string/jumbo v3, "zh-Hant-HK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh-Hani"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fa

    aput-object v0, v1, v2

    const-string/jumbo v0, "zh-Hant"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fb

    aput-object v0, v1, v2

    const-string/jumbo v0, "zh-MO"

    const-string/jumbo v2, "zh-Hant-MO"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fc

    aput-object v0, v1, v2

    const-string/jumbo v0, "zh-TW"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fd

    aput-object v0, v1, v2

    const-string/jumbo v0, "zu"

    const-string/jumbo v2, "zu-Latn-ZA"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fe

    aput-object v0, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->likelySubtagData:[[Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "in"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "iw"

    const-string v3, "he"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ji"

    const-string/jumbo v3, "yi"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "jw"

    const-string v3, "jv"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "mo"

    const-string/jumbo v3, "ro"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    const-string v3, "language"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "bu"

    const-string/jumbo v3, "mm"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dd"

    const-string v3, "de"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fx"

    const-string v3, "fr"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "tp"

    const-string/jumbo v3, "tl"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "yd"

    const-string/jumbo v3, "ye"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zr"

    const-string v3, "cd"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    const-string/jumbo v3, "region"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "heploc"

    const-string v3, "alalc97"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    const-string/jumbo v3, "variant"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "art-lojban"

    const-string v3, "jbo"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-ami"

    const-string v3, "ami"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-bnn"

    const-string v3, "bnn"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-hak"

    move-object/from16 v3, v19

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-klingon"

    const-string/jumbo v4, "tlh"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-lux"

    const-string v4, "lb"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-navajo"

    const-string/jumbo v4, "nv"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-pwn"

    const-string/jumbo v4, "pwn"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-tao"

    const-string/jumbo v4, "tao"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-tay"

    const-string/jumbo v4, "tay"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i-tsu"

    const-string/jumbo v4, "tsu"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "no-bok"

    const-string/jumbo v4, "nb"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "no-nyn"

    const-string/jumbo v4, "nn"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-be-fr"

    const-string/jumbo v4, "sfb"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-be-nl"

    const-string/jumbo v4, "vgt"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-ch-de"

    const-string/jumbo v4, "sgg"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-guoyu"

    move-object/from16 v4, v18

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-hakka"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-min-nan"

    const-string/jumbo v3, "nan"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-xiang"

    const-string v3, "hsn"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-br"

    const-string v3, "bzs"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-co"

    const-string v3, "csn"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-de"

    const-string v3, "gsg"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-dk"

    const-string v3, "dsl"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-es"

    const-string/jumbo v3, "ssp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-fr"

    const-string v3, "fsl"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-gb"

    const-string v3, "bfi"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-gr"

    const-string v3, "gss"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-ie"

    const-string v3, "isg"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-it"

    const-string v3, "ise"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-jp"

    const-string v3, "jsl"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-mx"

    const-string/jumbo v3, "mfs"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-ni"

    const-string/jumbo v3, "ncs"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-nl"

    const-string v3, "dse"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-no"

    const-string/jumbo v3, "nsl"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-pt"

    const-string/jumbo v3, "psr"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-se"

    const-string/jumbo v3, "swl"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-us"

    const-string v3, "ase"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sgn-za"

    const-string/jumbo v3, "sfs"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-cmn"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-cmn-hans"

    const-string v3, "cmn-hans"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-cmn-hant"

    const-string v3, "cmn-hant"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-gan"

    const-string v3, "gan"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "zh-wuu"

    const-string/jumbo v3, "wuu"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    const-string v3, "grandfathered"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAGS:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->likelySubtagData:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAGS:Ljava/util/Hashtable;

    aget-object v4, v2, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v2, v2, v1

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;
    .locals 1

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTagData$LanguageTagDataHolder;->singleton:Lcom/amazon/ebook/util/text/LanguageTagData;

    return-object v0
.end method


# virtual methods
.method public getLikelySubtags(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    sget-object p2, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAG_RESTRICTIONS:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/amazon/ebook/util/text/LanguageTag;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAGS:Ljava/util/Hashtable;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->LIKELY_SUBTAGS:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->truncate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->MAPPINGS:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasGrandfathered(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->GF:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->GF:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ge p2, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isLanguageValid(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageSubtagTrie;->valid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRegionValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->M_49CODES:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_4

    const/16 v4, 0x7a

    if-le v1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->REGION_DATA:[Ljava/lang/String;

    sub-int/2addr v1, v2

    aget-object v1, v4, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method
