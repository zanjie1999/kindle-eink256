.class public Lcom/amazon/kindle/util/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field private static final AELIG_LC:C = '\u00e6'

.field private static final AELIG_UC:C = '\u00c6'

.field private static final A_KANA_LONG_VOW:C = '\u3095'

.field private static final A_LC_LIGATURE:C = '\u0004'

.field private static final A_UC_LIGATURE:C = '\u0003'

.field private static final E_KANA_LONG_VOW:C = '\u3098'

.field private static final HW_A_KANA_LONG_VOW:C = '\u0010'

.field private static final HW_E_KANA_LONG_VOW:C = '\u0013'

.field private static final HW_I_KANA_LONG_VOW:C = '\u0011'

.field private static final HW_KANA_LONG_VOWEL:C = '\uff70'

.field private static final HW_O_KANA_LONG_VOW:C = '\u0014'

.field private static final HW_U_KANA_LONG_VOW:C = '\u0012'

.field private static final I_KANA_LONG_VOW:C = '\u3096'

.field private static final KANA_LONG_VOWEL:C = '\u30fc'

.field private static final MAX_LIGATURE_PARTS:I = 0x2

.field private static final MAX_UTF16_SIZE:I = 0x2

.field private static final MAX_UTF8_SIZE:I = 0x6

.field private static final OELIG_LC:C = '\u0153'

.field private static final OELIG_UC:C = '\u0152'

.field private static final O_KANA_LONG_VOW:C = '\u309f'

.field private static final O_LC_LIGATURE:C = '\u0002'

.field private static final O_UC_LIGATURE:C = '\u0001'

.field private static final SIZE_UNICODE_ALT_WIDTH_SORTORDER:I = 0xa0

.field private static final SIZE_UNICODE_ARABIC_SORTORDER:I = 0xff

.field private static final SIZE_UNICODE_FULL_WIDTH_LATIN_SORTORDER:I = 0x60

.field private static final SIZE_UNICODE_HALF_WIDTH_KANA_SORTORDER:I = 0x40

.field private static final SIZE_UNICODE_HANGUL_COMPAJAMO_SORTORDER:I = 0x5e

.field private static final SIZE_UNICODE_HANGUL_JAMO_SORTORDER:I = 0xfa

.field private static final SIZE_UNICODE_HANGUL_SYLLABLES_SORTORDER:I = 0x2ba4

.field private static final SIZE_UNICODE_KANA_SORTORDER:I = 0x100

.field private static final SIZE_UNICODE_LATIN_SORTORDER:I = 0x300

.field private static final SORTORDER_unicode_alt_width_latin_and_kana:[C

.field private static final SORTORDER_unicode_arabic:[C

.field private static final SORTORDER_unicode_hangul_compajamo:[C

.field private static final SORTORDER_unicode_hangul_jamo:[C

.field private static final SORTORDER_unicode_japanese_kana:[C

.field private static final SORTORDER_unicode_latin:[C

.field private static final START_UNICODE_ALT_WIDTH_SORTORDER:I = 0xff00

.field private static final START_UNICODE_ARABIC_BLOCK:I = 0x600

.field private static final START_UNICODE_FULL_WIDTH_LATIN_SORTORDER:I = 0xff00

.field private static final START_UNICODE_HALF_WIDTH_KANA_SORTORDER:I = 0xff60

.field private static final START_UNICODE_HANGUL_COMPAJAMO_SORTORDER:I = 0x3131

.field private static final START_UNICODE_HANGUL_JAMO_SORTORDER:I = 0x1100

.field private static final START_UNICODE_HANGUL_SYLLABLES_SORTORDER:I = 0xac00

.field private static final START_UNICODE_KANA_SORTORDER:I = 0x3000

.field private static final START_UNICODE_LATIN_SORTORDER:I = 0x0

.field private static final SZETLIG_LC:C = '\u00df'

.field private static final S_LC_LIGATURE:C = '\u0005'

.field private static final TAG:Ljava/lang/String;

.field private static final U_KANA_LONG_VOW:C = '\u3097'

.field static final VOWEL_japanese_half_width_kana:[C

.field private static final VOWEL_japanese_half_width_kana_start:I = 0xff66

.field private static final VOWEL_japanese_kana:[C

.field private static final VOWEL_japanese_kana_start:I = 0x3041

.field private static ligatureTable:[[C

.field private static mobipocketSpecialCodesLigatureTable:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    const-class v0, Lcom/amazon/kindle/util/UnicodeUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->TAG:Ljava/lang/String;

    const/16 v0, 0xba

    new-array v0, v0, [C

    .line 170
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->VOWEL_japanese_kana:[C

    const/16 v0, 0x38

    new-array v0, v0, [C

    .line 373
    fill-array-data v0, :array_1

    sput-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->VOWEL_japanese_half_width_kana:[C

    const/16 v0, 0x300

    new-array v0, v0, [C

    .line 471
    fill-array-data v0, :array_2

    sput-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_latin:[C

    const/16 v0, 0x100

    new-array v1, v0, [C

    .line 1300
    fill-array-data v1, :array_3

    sput-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_japanese_kana:[C

    const/16 v1, 0xa0

    new-array v1, v1, [C

    .line 1580
    fill-array-data v1, :array_4

    sput-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_alt_width_latin_and_kana:[C

    const/16 v1, 0xfa

    new-array v1, v1, [C

    .line 1753
    fill-array-data v1, :array_5

    sput-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_hangul_jamo:[C

    const/16 v1, 0x5e

    new-array v1, v1, [C

    .line 2038
    fill-array-data v1, :array_6

    sput-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_hangul_compajamo:[C

    new-array v0, v0, [C

    .line 2152
    fill-array-data v0, :array_7

    sput-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_arabic:[C

    const/4 v0, 0x5

    new-array v1, v0, [[C

    const/4 v2, 0x3

    new-array v3, v2, [C

    .line 2595
    fill-array-data v3, :array_8

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [C

    fill-array-data v3, :array_9

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [C

    fill-array-data v3, :array_a

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [C

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    new-array v3, v2, [C

    fill-array-data v3, :array_c

    const/4 v7, 0x4

    aput-object v3, v1, v7

    sput-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->mobipocketSpecialCodesLigatureTable:[[C

    new-array v0, v0, [[C

    new-array v1, v2, [C

    .line 2603
    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v2, [C

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    new-array v1, v2, [C

    fill-array-data v1, :array_f

    aput-object v1, v0, v6

    new-array v1, v2, [C

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    new-array v1, v2, [C

    fill-array-data v1, :array_11

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->ligatureTable:[[C

    return-void

    nop

    :array_0
    .array-data 2
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x42s
        0x42s
        0x44s
        0x44s
        0x44s
        0x46s
        0x46s
        0x46s
        0x48s
        0x48s
        0x48s
        0x4as
        0x4as
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x42s
        0x46s
        0x46s
        0x4as
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x42s
        0x44s
        0x48s
        0x4as
        0x0s
        0x46s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x42s
        0x44s
        0x44s
        0x46s
        0x46s
        0x46s
        0x48s
        0x48s
        0x4as
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x42s
        0x42s
        0x44s
        0x44s
        0x44s
        0x46s
        0x46s
        0x46s
        0x48s
        0x48s
        0x48s
        0x4as
        0x4as
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x42s
        0x46s
        0x46s
        0x4as
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x42s
        0x44s
        0x48s
        0x4as
        0x0s
        0x46s
        0x42s
        0x48s
        0x42s
        0x44s
        0x48s
        0x4as
    .end array-data

    :array_1
    .array-data 2
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x46s
        0x4as
        0x46s
        0x0s
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x46s
        0x4as
        0x42s
        0x44s
        0x46s
        0x48s
        0x4as
        0x42s
        0x0s
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x6fs
        0x6fs
        0x61s
        0x61s
        0x73s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3042s
        0x3044s
        0x3046s
        0x3048s
        0x304as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x20s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x20s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x32s
        0x33s
        0x0s
        0x6ds
        0x0s
        0x0s
        0x0s
        0x31s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x0s
        0x63s
        0x65s
        0x65s
        0x65s
        0x65s
        0x69s
        0x69s
        0x69s
        0x69s
        0x64s
        0x6es
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x0s
        0x6fs
        0x75s
        0x75s
        0x75s
        0x75s
        0x79s
        0x74s
        0x0s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x0s
        0x63s
        0x65s
        0x65s
        0x65s
        0x65s
        0x69s
        0x69s
        0x69s
        0x69s
        0x64s
        0x6es
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x0s
        0x6fs
        0x75s
        0x75s
        0x75s
        0x75s
        0x79s
        0x74s
        0x79s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x63s
        0x63s
        0x63s
        0x63s
        0x63s
        0x63s
        0x63s
        0x63s
        0x64s
        0x64s
        0x64s
        0x64s
        0x65s
        0x65s
        0x65s
        0x65s
        0x65s
        0x65s
        0x65s
        0x65s
        0x65s
        0x65s
        0x67s
        0x67s
        0x67s
        0x67s
        0x67s
        0x67s
        0x67s
        0x67s
        0x68s
        0x68s
        0x68s
        0x68s
        0x69s
        0x69s
        0x69s
        0x69s
        0x69s
        0x69s
        0x69s
        0x69s
        0x69s
        0x69s
        0x0s
        0x0s
        0x6as
        0x6as
        0x6bs
        0x6bs
        0x6bs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6cs
        0x6es
        0x6es
        0x6es
        0x6es
        0x6es
        0x6es
        0x6es
        0x6es
        0x6es
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x0s
        0x0s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x73s
        0x73s
        0x73s
        0x73s
        0x73s
        0x73s
        0x73s
        0x73s
        0x74s
        0x74s
        0x74s
        0x74s
        0x74s
        0x74s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x77s
        0x77s
        0x79s
        0x79s
        0x79s
        0x7as
        0x7as
        0x7as
        0x7as
        0x7as
        0x7as
        0x73s
        0x62s
        0x62s
        0x62s
        0x62s
        0x0s
        0x0s
        0x6fs
        0x63s
        0x63s
        0x64s
        0x64s
        0x64s
        0x64s
        0x0s
        0x65s
        0x65s
        0x65s
        0x66s
        0x66s
        0x67s
        0x67s
        0x0s
        0x0s
        0x69s
        0x6bs
        0x6bs
        0x6cs
        0x0s
        0x6ds
        0x6es
        0x6es
        0x6fs
        0x6fs
        0x6fs
        0x0s
        0x0s
        0x70s
        0x70s
        0x72s
        0x0s
        0x0s
        0x0s
        0x0s
        0x74s
        0x74s
        0x74s
        0x74s
        0x75s
        0x75s
        0x0s
        0x76s
        0x79s
        0x79s
        0x7as
        0x7as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x61s
        0x69s
        0x69s
        0x6fs
        0x6fs
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x75s
        0x65s
        0x61s
        0x61s
        0x61s
        0x61s
        0x0s
        0x0s
        0x67s
        0x67s
        0x67s
        0x67s
        0x6bs
        0x6bs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x0s
        0x0s
        0x6as
        0x0s
        0x0s
        0x0s
        0x67s
        0x67s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x61s
        0x61s
        0x0s
        0x6fs
        0x6fs
        0x61s
        0x61s
        0x61s
        0x61s
        0x65s
        0x65s
        0x65s
        0x65s
        0x69s
        0x69s
        0x69s
        0x69s
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x72s
        0x72s
        0x72s
        0x72s
        0x75s
        0x75s
        0x75s
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x0s
        0x0s
        0x62s
        0x6fs
        0x63s
        0x64s
        0x64s
        0x65s
        0x65s
        0x65s
        0x0s
        0x0s
        0x0s
        0x0s
        0x6as
        0x67s
        0x67s
        0x67s
        0x0s
        0x0s
        0x68s
        0x68s
        0x68s
        0x69s
        0x0s
        0x69s
        0x6cs
        0x6cs
        0x6cs
        0x0s
        0x6ds
        0x6ds
        0x6ds
        0x6es
        0x6es
        0x6es
        0x6fs
        0x0s
        0x0s
        0x0s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x72s
        0x73s
        0x0s
        0x6as
        0x0s
        0x0s
        0x74s
        0x74s
        0x75s
        0x0s
        0x76s
        0x76s
        0x77s
        0x79s
        0x79s
        0x7as
        0x7as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x63s
        0x0s
        0x62s
        0x0s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x71s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    :array_3
    .array-data 2
        0x20s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3041s
        0x3042s
        0x3043s
        0x3044s
        0x3045s
        0x3046s
        0x3047s
        0x3048s
        0x3049s
        0x304as
        0x304bs
        0x304cs
        0x304ds
        0x304es
        0x304fs
        0x3050s
        0x3051s
        0x3052s
        0x3053s
        0x3054s
        0x3055s
        0x3056s
        0x3057s
        0x3058s
        0x3059s
        0x305as
        0x305bs
        0x305cs
        0x305ds
        0x305es
        0x305fs
        0x3060s
        0x3061s
        0x3062s
        0x3063s
        0x3064s
        0x3065s
        0x3066s
        0x3067s
        0x3068s
        0x3069s
        0x306as
        0x306bs
        0x306cs
        0x306ds
        0x306es
        0x306fs
        0x3070s
        0x3071s
        0x3072s
        0x3073s
        0x3074s
        0x3075s
        0x3076s
        0x3077s
        0x3078s
        0x3079s
        0x307as
        0x307bs
        0x307cs
        0x307ds
        0x307es
        0x307fs
        0x3080s
        0x3081s
        0x3082s
        0x3083s
        0x3084s
        0x3085s
        0x3086s
        0x3087s
        0x3088s
        0x3089s
        0x308as
        0x308bs
        0x308cs
        0x308ds
        0x308es
        0x308fs
        0x3090s
        0x3091s
        0x3092s
        0x3093s
        0x3046s
        0x3042s
        0x3044s
        0x3046s
        0x3048s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x304as
        0x0s
        0x3041s
        0x3042s
        0x3043s
        0x3044s
        0x3045s
        0x3046s
        0x3047s
        0x3048s
        0x3049s
        0x304as
        0x304bs
        0x304cs
        0x304ds
        0x304es
        0x304fs
        0x3050s
        0x3051s
        0x3052s
        0x3053s
        0x3054s
        0x3055s
        0x3056s
        0x3057s
        0x3058s
        0x3059s
        0x305as
        0x305bs
        0x305cs
        0x305ds
        0x305es
        0x305fs
        0x3060s
        0x3061s
        0x3062s
        0x3063s
        0x3064s
        0x3065s
        0x3066s
        0x3067s
        0x3068s
        0x3069s
        0x306as
        0x306bs
        0x306cs
        0x306ds
        0x306es
        0x306fs
        0x3070s
        0x3071s
        0x3072s
        0x3073s
        0x3074s
        0x3075s
        0x3076s
        0x3077s
        0x3078s
        0x3079s
        0x307as
        0x307bs
        0x307cs
        0x307ds
        0x307es
        0x307fs
        0x3080s
        0x3081s
        0x3082s
        0x3083s
        0x3084s
        0x3085s
        0x3086s
        0x3087s
        0x3088s
        0x3089s
        0x308as
        0x308bs
        0x308cs
        0x308ds
        0x308es
        0x308fs
        0x3090s
        0x3091s
        0x3092s
        0x3093s
        0x3046s
        0x304bs
        0x3051s
        0x308fs
        0x3090s
        0x3091s
        0x3092s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    :array_4
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3092s
        0x3041s
        0x3043s
        0x3045s
        0x3047s
        0x3049s
        0x3083s
        0x3085s
        0x3087s
        0x3063s
        0x0s
        0x3042s
        0x3044s
        0x3046s
        0x3048s
        0x304as
        0x304bs
        0x304ds
        0x304fs
        0x3051s
        0x3053s
        0x3055s
        0x3057s
        0x3059s
        0x305bs
        0x305ds
        0x305fs
        0x3061s
        0x3064s
        0x3066s
        0x3068s
        0x306as
        0x306bs
        0x306cs
        0x306ds
        0x306es
        0x306fs
        0x3072s
        0x3075s
        0x3078s
        0x307bs
        0x307es
        0x307fs
        0x3080s
        0x3081s
        0x3082s
        0x3084s
        0x3086s
        0x3088s
        0x3089s
        0x308as
        0x308bs
        0x308cs
        0x308ds
        0x308fs
        0x3093s
        0x0s
        0x0s
    .end array-data

    :array_5
    .array-data 2
        -0x5400s
        -0x51b2s
        -0x4f60s
        -0x4d08s
        -0x4ab8s
        -0x4868s
        -0x4602s
        -0x43a9s
        -0x4156s
        -0x3ef8s
        -0x3ca1s
        -0x3a42s
        -0x37e4s
        -0x3594s
        -0x3341s
        -0x30eds
        -0x2e9fs
        -0x2c51s
        -0x29ffs
        -0x4d12s
        -0x4d11s
        -0x4d10s
        -0x4d0fs
        -0x4abas
        -0x4618s
        -0x4615s
        -0x4606s
        -0x460as
        -0x43b2s
        -0x43aes
        -0x415bs
        -0x415as
        -0x4159s
        -0x3f07s
        -0x3f06s
        -0x3f05s
        -0x3f04s
        -0x3f03s
        -0x3f02s
        -0x3f00s
        -0x3effs
        -0x3efes
        -0x3efds
        -0x3f01s
        -0x3f08s
        -0x3caas
        -0x3ca9s
        -0x3ca8s
        -0x3ca7s
        -0x3ca6s
        -0x3ca5s
        -0x3ca4s
        -0x3a53s
        -0x3a52s
        -0x3a51s
        -0x3a50s
        -0x3a4fs
        -0x3a4es
        -0x3a4ds
        -0x3a4cs
        -0x3a49s
        -0x3a48s
        -0x3a47s
        -0x3a46s
        -0x3a44s
        -0x37f4s
        -0x37f2s
        -0x37f1s
        -0x37f0s
        -0x37efs
        -0x37ees
        -0x37eds
        -0x37ecs
        -0x37ebs
        -0x37e9s
        -0x37e8s
        -0x3a42s
        -0x3596s
        -0x3346s
        -0x3345s
        -0x3344s
        -0x3343s
        -0x30f3s
        -0x30f2s
        -0x30f0s
        -0x30efs
        -0x2a02s
        -0x2a01s
        -0x27ads
        -0x27abs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        -0x5400s
        -0x51b2s
        -0x4f64s
        -0x4f60s
        -0x4d0ds
        -0x4d0bs
        -0x4d08s
        -0x4868s
        -0x461as
        -0x4614s
        -0x4611s
        -0x460ds
        -0x4608s
        -0x4607s
        -0x4606s
        -0x4602s
        -0x43a9s
        -0x3f07s
        -0x3ef8s
        -0x3ca1s
        -0x3a42s
        -0x37e4s
        -0x3341s
        -0x30eds
        -0x2e9fs
        -0x2c51s
        -0x29ffs
        -0x4f63s
        -0x4f62s
        -0x4d12s
        -0x4d10s
        -0x4d0es
        -0x4d0as
        -0x4d0cs
        -0x4abas
        -0x486as
        -0x4619s
        -0x4618s
        -0x4617s
        -0x4616s
        -0x4615s
        -0x4613s
        -0x4612s
        -0x4610s
        -0x460fs
        -0x460es
        -0x460cs
        -0x460bs
        -0x4609s
        -0x4605s
        -0x43b4s
        -0x43b3s
        -0x43b2s
        -0x43b1s
        -0x43b0s
        -0x43afs
        -0x43ads
        -0x43acs
        -0x43aes
        -0x4158s
        -0x3efds
        -0x3efcs
        -0x3f01s
        -0x3caas
        -0x3ca8s
        -0x3ca7s
        -0x3ca5s
        -0x3a44s
        -0x37f4s
        -0x37f3s
        -0x37eds
        -0x37eas
        -0x3a42s
        -0x37efs
        -0x37ees
        -0x2a02s
        -0x2a01s
        -0x27b1s
        -0x27b0s
        -0x27afs
        -0x27aes
        -0x27abs
    .end array-data

    :array_6
    .array-data 2
        -0x5400s
        -0x51b2s
        -0x4f64s
        -0x4f60s
        -0x4d0ds
        -0x4d0bs
        -0x4d08s
        -0x4ab8s
        -0x4868s
        -0x461as
        -0x4614s
        -0x4611s
        -0x460ds
        -0x4608s
        -0x4607s
        -0x4606s
        -0x4602s
        -0x43a9s
        -0x4156s
        -0x3f07s
        -0x3ef8s
        -0x3ca1s
        -0x3a42s
        -0x37e4s
        -0x3594s
        -0x3341s
        -0x30eds
        -0x2e9fs
        -0x2c51s
        -0x29ffs
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        0x0s
        -0x4d11s
        -0x4d10s
        -0x4d0es
        -0x4d0as
        -0x4619s
        -0x4617s
        -0x4610s
        -0x460bs
        -0x4605s
        -0x43b2s
        -0x43b1s
        -0x43afs
        -0x43aes
        -0x415bs
        -0x4159s
        -0x3f06s
        -0x3f05s
        -0x3f00s
        -0x3efes
        -0x3f01s
        -0x3f08s
        -0x3caas
        -0x3ca9s
        -0x3ca8s
        -0x3ca5s
        -0x3a51s
        -0x3a44s
        -0x37eds
        -0x3a42s
        -0x37efs
        -0x37ees
        -0x2a01s
        -0x27ads
        -0x27abs
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
        -0x27a9s
    .end array-data

    :array_7
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x61cs
        0x0s
        0x0s
        0x0s
        0x620s
        0x621s
        0x627s
        0x627s
        0x648s
        0x627s
        0x64as
        0x627s
        0x628s
        0x62as
        0x62as
        0x62bs
        0x62cs
        0x62ds
        0x62es
        0x62fs
        0x630s
        0x631s
        0x632s
        0x633s
        0x634s
        0x635s
        0x636s
        0x637s
        0x638s
        0x639s
        0x63as
        0x6a9s
        0x6a9s
        0x6ccs
        0x6ccs
        0x6ccs
        0x0s
        0x641s
        0x642s
        0x643s
        0x644s
        0x645s
        0x646s
        0x647s
        0x648s
        0x649s
        0x64as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x66es
        0x66fs
        0x670s
        0x671s
        0x627s
        0x627s
        0x674s
        0x675s
        0x676s
        0x6c7s
        0x678s
        0x679s
        0x67as
        0x67bs
        0x62as
        0x62as
        0x67es
        0x67fs
        0x680s
        0x62ds
        0x62ds
        0x683s
        0x684s
        0x62ds
        0x686s
        0x687s
        0x688s
        0x62fs
        0x62fs
        0x62fs
        0x68cs
        0x68ds
        0x68es
        0x62fs
        0x62fs
        0x691s
        0x631s
        0x631s
        0x631s
        0x631s
        0x631s
        0x631s
        0x698s
        0x631s
        0x633s
        0x633s
        0x633s
        0x635s
        0x635s
        0x637s
        0x639s
        0x6a1s
        0x641s
        0x641s
        0x6cbs
        0x641s
        0x6a6s
        0x642s
        0x642s
        0x6a9s
        0x6aas
        0x643s
        0x643s
        0x6ads
        0x643s
        0x6afs
        0x6afs
        0x6b1s
        0x6afs
        0x6b3s
        0x6afs
        0x644s
        0x644s
        0x644s
        0x644s
        0x646s
        0x6bas
        0x6bbs
        0x646s
        0x646s
        0x6bes
        0x686s
        0x647s
        0x6c1s
        0x6c1s
        0x6c3s
        0x648s
        0x6c5s
        0x6c6s
        0x6c7s
        0x6c8s
        0x6c9s
        0x648s
        0x6cbs
        0x6ccs
        0x64as
        0x64as
        0x648s
        0x6d0s
        0x64as
        0x6d2s
        0x6d2s
        0x0s
        0x6d5s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x648s
        0x64as
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x62fs
        0x631s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x634s
        0x636s
        0x63as
        0x0s
        0x0s
        0x647s
    .end array-data

    :array_8
    .array-data 2
        0x2s
        0x65s
        0x153s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x1s
        0x45s
        0x152s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x4s
        0x65s
        0xe6s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x3s
        0x45s
        0xc6s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x5s
        0x73s
        0xdfs
    .end array-data

    nop

    :array_d
    .array-data 2
        0x6fs
        0x65s
        0x153s
    .end array-data

    nop

    :array_e
    .array-data 2
        0x4fs
        0x45s
        0x152s
    .end array-data

    nop

    :array_f
    .array-data 2
        0x61s
        0x65s
        0xe6s
    .end array-data

    nop

    :array_10
    .array-data 2
        0x41s
        0x45s
        0xc6s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x73s
        0x73s
        0xdfs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToUnicodeIndexEncoding(Ljava/lang/String;Z[C)[C
    .locals 13

    .line 3042
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 3046
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3051
    :goto_0
    array-length v7, p0

    if-ge v2, v7, :cond_7

    .line 3056
    aget-char v7, p0, v2

    if-lez v7, :cond_6

    .line 3064
    invoke-static {v5}, Lcom/amazon/kindle/util/UnicodeUtils;->kanaVowel(C)C

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    const/4 v6, 0x1

    .line 3070
    invoke-static {v7, v5, v6}, Lcom/amazon/kindle/util/UnicodeUtils;->kanaFromLongVowelMark(CCZ)C

    move-result v7

    .line 3073
    invoke-static {v7, v6}, Lcom/amazon/kindle/util/UnicodeUtils;->unicodeUnligature(CZ)Lcom/amazon/kindle/util/UnicodeLigatureResult;

    move-result-object v8

    const/4 v9, 0x0

    .line 3076
    :goto_2
    iget-object v10, v8, Lcom/amazon/kindle/util/UnicodeLigatureResult;->out:[C

    array-length v11, v10

    if-ge v9, v11, :cond_5

    .line 3080
    aget-char v10, v10, v9

    if-eqz p2, :cond_3

    .line 3085
    invoke-static {v10}, Lcom/amazon/kindle/util/UnicodeUtils;->isOrdered(C)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10}, Lcom/amazon/kindle/util/UnicodeUtils;->isHangul(C)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3087
    invoke-static {v10, p2}, Lcom/amazon/kindle/util/UnicodeUtils;->findUnicodeIndexChar(C[C)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 3091
    invoke-static {v10}, Lcom/amazon/kindle/util/UnicodeUtils;->sortOrder(C)C

    move-result v10

    .line 3093
    invoke-static {v10, p2}, Lcom/amazon/kindle/util/UnicodeUtils;->findUnicodeIndexChar(C[C)I

    move-result v11

    if-ne v11, v12, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const/4 v10, 0x0

    :goto_3
    int-to-char v11, v11

    goto :goto_4

    :cond_2
    move v11, v10

    move v10, p1

    goto :goto_4

    :cond_3
    move v11, v10

    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_4

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 3120
    :cond_4
    aput-char v11, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move v6, v5

    move v5, v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 3130
    :cond_8
    new-array p0, v4, [C

    .line 3131
    invoke-static {v0, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static final findUnicodeIndexChar(C[C)I
    .locals 2

    const/4 v0, 0x0

    .line 3022
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3023
    aget-char v1, p1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isHangul(C)Z
    .locals 1

    const v0, 0xac00

    if-lt p0, v0, :cond_0

    const v0, 0xd7af

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOrdered(C)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x300

    if-lt p0, v0, :cond_a

    :cond_0
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3100

    if-lt p0, v0, :cond_a

    :cond_1
    const v0, 0xff00

    if-lt p0, v0, :cond_2

    const v0, 0xffa0

    if-lt p0, v0, :cond_a

    :cond_2
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_3

    const/16 v0, 0x11fa

    if-lt p0, v0, :cond_a

    :cond_3
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_4

    const/16 v0, 0x318f

    if-lt p0, v0, :cond_a

    :cond_4
    const v0, 0xac00

    if-lt p0, v0, :cond_5

    const v0, 0xd7a4

    if-lt p0, v0, :cond_a

    :cond_5
    const/16 v0, 0x600

    if-lt p0, v0, :cond_6

    const/16 v0, 0x6ff

    if-lt p0, v0, :cond_a

    :cond_6
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_7

    const/16 v0, 0x206f

    if-le p0, v0, :cond_a

    :cond_7
    const/16 v0, 0x2190

    if-lt p0, v0, :cond_8

    const/16 v0, 0x23ff

    if-le p0, v0, :cond_a

    :cond_8
    const/16 v0, 0x2500

    if-lt p0, v0, :cond_9

    const/16 v0, 0x27ff

    if-le p0, v0, :cond_a

    :cond_9
    const/16 v0, 0x2900

    if-lt p0, v0, :cond_b

    const/16 v0, 0x2bff

    if-gt p0, v0, :cond_b

    :cond_a
    const/4 p0, 0x1

    goto :goto_0

    :cond_b
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static kanaFromLongVowelMark(CCZ)C
    .locals 2

    const v0, 0xff70

    const/16 v1, 0x30fc

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_d

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/UnicodeUtils;->kanaVowel(C)C

    move-result p1

    if-eqz p1, :cond_d

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_c

    const/16 p2, 0x3042

    if-eq p1, p2, :cond_a

    const/16 p2, 0x3044

    if-eq p1, p2, :cond_8

    const/16 p2, 0x3046

    if-eq p1, p2, :cond_6

    const/16 p2, 0x3048

    if-eq p1, p2, :cond_4

    const/16 p2, 0x304a

    if-eq p1, p2, :cond_2

    .line 155
    sget-object p2, Lcom/amazon/kindle/util/UnicodeUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid special code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/16 p0, 0x14

    goto :goto_1

    :cond_3
    const/16 p0, 0x309f

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const/16 p0, 0x13

    goto :goto_1

    :cond_5
    const/16 p0, 0x3098

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    const/16 p0, 0x12

    goto :goto_1

    :cond_7
    const/16 p0, 0x3097

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    const/16 p0, 0x11

    goto :goto_1

    :cond_9
    const/16 p0, 0x3096

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    const/16 p0, 0x10

    goto :goto_1

    :cond_b
    const/16 p0, 0x3095

    goto :goto_1

    :cond_c
    move p0, p1

    :cond_d
    :goto_1
    return p0
.end method

.method private static kanaVowel(C)C
    .locals 3

    const/16 v0, 0x3041

    if-lt p0, v0, :cond_0

    .line 438
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->VOWEL_japanese_kana:[C

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p0, v2, :cond_0

    sub-int/2addr p0, v0

    .line 439
    aget-char p0, v1, p0

    goto :goto_0

    :cond_0
    const v0, 0xff66

    if-lt p0, v0, :cond_1

    .line 440
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->VOWEL_japanese_half_width_kana:[C

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p0, v2, :cond_1

    sub-int/2addr p0, v0

    .line 441
    aget-char p0, v1, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_2

    add-int/lit16 p0, p0, 0x3000

    int-to-char p0, p0

    :cond_2
    return p0
.end method

.method public static final sortOrder(C)C
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0x300

    if-ge p0, v0, :cond_0

    .line 2564
    sget-object v0, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_latin:[C

    aget-char p0, v0, p0

    return p0

    :cond_0
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_1

    const/16 v1, 0x3100

    if-ge p0, v1, :cond_1

    .line 2567
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_japanese_kana:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    :cond_1
    const v0, 0xff00

    if-lt p0, v0, :cond_2

    const v1, 0xffa0

    if-ge p0, v1, :cond_2

    .line 2570
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_alt_width_latin_and_kana:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    :cond_2
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_3

    const/16 v1, 0x11fa

    if-ge p0, v1, :cond_3

    .line 2573
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_hangul_jamo:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    :cond_3
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_4

    const/16 v1, 0x318f

    if-ge p0, v1, :cond_4

    .line 2576
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_hangul_compajamo:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    :cond_4
    const/16 v0, 0x600

    if-lt p0, v0, :cond_5

    const/16 v1, 0x6ff

    if-ge p0, v1, :cond_5

    .line 2579
    sget-object v1, Lcom/amazon/kindle/util/UnicodeUtils;->SORTORDER_unicode_arabic:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    .line 2585
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/LocaleUtils;->isTCNLocale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/amazon/kindle/util/Utils;->isChineseText(C)Z

    move-result v0

    if-eqz v0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static final unicodeUnligature(CZ)Lcom/amazon/kindle/util/UnicodeLigatureResult;
    .locals 0

    if-eqz p1, :cond_0

    .line 2655
    sget-object p1, Lcom/amazon/kindle/util/UnicodeUtils;->mobipocketSpecialCodesLigatureTable:[[C

    invoke-static {p0, p1}, Lcom/amazon/kindle/util/UnicodeUtils;->unicodeUnligatureWithTable(C[[C)Lcom/amazon/kindle/util/UnicodeLigatureResult;

    move-result-object p0

    return-object p0

    .line 2657
    :cond_0
    sget-object p1, Lcom/amazon/kindle/util/UnicodeUtils;->ligatureTable:[[C

    invoke-static {p0, p1}, Lcom/amazon/kindle/util/UnicodeUtils;->unicodeUnligatureWithTable(C[[C)Lcom/amazon/kindle/util/UnicodeLigatureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final unicodeUnligatureWithTable(C[[C)Lcom/amazon/kindle/util/UnicodeLigatureResult;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2644
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2645
    aget-object v2, p1, v1

    const/4 v4, 0x2

    aget-char v2, v2, v4

    if-ne p0, v2, :cond_0

    .line 2646
    new-instance p0, Lcom/amazon/kindle/util/UnicodeLigatureResult;

    aget-object v2, p1, v1

    aget-char v0, v2, v0

    aget-object p1, p1, v1

    aget-char p1, p1, v3

    invoke-direct {p0, v3, v0, p1}, Lcom/amazon/kindle/util/UnicodeLigatureResult;-><init>(ICC)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2650
    :cond_1
    new-instance p1, Lcom/amazon/kindle/util/UnicodeLigatureResult;

    invoke-direct {p1, v3, p0}, Lcom/amazon/kindle/util/UnicodeLigatureResult;-><init>(IC)V

    return-object p1
.end method
