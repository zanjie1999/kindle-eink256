.class public Lcom/amazon/ebook/util/text/LanguageTag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/LanguageTag$TextDirection;
    }
.end annotation


# static fields
.field private static final HASHMAP_DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final HASHMAP_DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final IRREGULARS:[Ljava/lang/String;

.field private static final LANGTAG_TO_LOCALE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static LOCALE_MATCHER:Lcom/amazon/ebook/util/text/LookupMatcher;

.field private static final TYPES:[Ljava/lang/String;

.field private static final irregular:Ljava/util/List;

.field private static lcidMappings:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "grandfathered"

    const-string v1, "language"

    const-string v2, "extlang"

    const-string/jumbo v3, "script"

    const-string/jumbo v4, "region"

    const-string/jumbo v5, "variant"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->TYPES:[Ljava/lang/String;

    new-instance v0, Lcom/amazon/ebook/util/text/LanguageTag$1;

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/ebook/util/text/LanguageTag$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->LANGTAG_TO_LOCALE_CACHE:Ljava/util/Map;

    const-string v1, "en-gb-oed"

    const-string v2, "i-ami"

    const-string v3, "i-bnn"

    const-string v4, "i-default"

    const-string v5, "i-enochian"

    const-string v6, "i-hak"

    const-string v7, "i-klingon"

    const-string v8, "i-lux"

    const-string v9, "i-mingo"

    const-string v10, "i-navajo"

    const-string v11, "i-pwn"

    const-string v12, "i-tao"

    const-string v13, "i-tay"

    const-string v14, "i-tsu"

    const-string/jumbo v15, "sgn-be-fr"

    const-string/jumbo v16, "sgn-be-nl"

    const-string/jumbo v17, "sgn-ch-de"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->IRREGULARS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->irregular:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/amazon/ebook/util/text/LanguageTag;->IRREGULARS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/amazon/ebook/util/text/LanguageTag;->irregular:Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/ebook/util/text/LookupMatcher;

    const-string/jumbo v1, "zh-TW,zh-HK,zh-CN,zh,uk-UA,uk,tr-TR,tr,th-TH-x-th,th-TH,th,sv-SE,sv,sr-YU,sr,sq-AL,sq,sl-SI,sl,sk-SK,sk,sh-YU,sh,ru-RU,ru,ro-RO,ro,pt-PT,pt-BR,pt,pl-PL,pl,no-NO-x-ny,no-NO,no,nl-NL,nl-BE,nl,mk-MK,mk,lv-LV,lv,lt-LT,lt,ko-KR,ko,ja-JP,ja,iw-IL,iw,it-IT,it-CH,it,is-IS,is,hu-HU,hu,hr-HR,hr,hi-IN,fr-LU,fr-FR,fr-CH,fr-CA,fr-BE,fr,fi-FI,fi,et-EE,et,es-VE,es-UY,es-SV,es-PY,es-PR,es-PE,es-PA,es-NI,es-MX,es-HN,es-GT,es-ES,es-EC,es-DO,es-CR,es-CO,es-CL,es-BO,es-AR,es,en-ZA,en-US,en-NZ,en-IN,en-IE,en-GB,en-CA,en-AU,en,el-GR,el,de-LU,de-DE,de-CH,de-AT,de,da-DK,da,cs-CZ,cs,ca-ES,ca,bg-BG,bg,be-BY,be,ar-YE,ar-TN,ar-SY,ar-SD,ar-SA,ar-QA,ar-OM,ar-MA,ar-LY,ar-LB,ar-KW,ar-JO,ar-IQ,ar-EG,ar-DZ,ar-BH,ar-AE,ar"

    invoke-direct {v0, v1}, Lcom/amazon/ebook/util/text/LookupMatcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->LOCALE_MATCHER:Lcom/amazon/ebook/util/text/LookupMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isGrandfathered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isRedundant(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->mapGrandfathered(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isWellFormed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "-"

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/amazon/ebook/util/text/LanguageTag;->getCanonicalValue(Lcom/amazon/ebook/util/text/Subtag;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->has(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-static {v0, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isValidSubtag(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static checkSubtagContents(ILjava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x7

    if-eq p0, v3, :cond_1

    return v0

    :cond_1
    const/16 v3, 0x8

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-le p0, v3, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v6, v1, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/amazon/ebook/util/text/LanguageTag;->isAlpha(C)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v10}, Lcom/amazon/ebook/util/text/LanguageTag;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v5, :cond_6

    if-nez v6, :cond_5

    const/4 v7, 0x1

    :cond_5
    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    const/4 p1, 0x4

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    if-le v1, v4, :cond_8

    return v4

    :cond_8
    return v0

    :pswitch_2
    if-eqz v7, :cond_9

    if-ge v1, p1, :cond_9

    return v0

    :cond_9
    if-nez v7, :cond_a

    const/4 p0, 0x5

    if-ge v1, p0, :cond_a

    return v0

    :cond_a
    return v4

    :pswitch_3
    if-eqz v7, :cond_b

    if-ne v1, v3, :cond_b

    if-nez v8, :cond_b

    return v4

    :cond_b
    if-ne v1, v2, :cond_c

    if-nez v9, :cond_c

    return v4

    :cond_c
    return v0

    :pswitch_4
    if-ne v1, p1, :cond_d

    return v4

    :cond_d
    return v0

    :pswitch_5
    if-ne v1, v3, :cond_e

    return v4

    :cond_e
    return v0

    :pswitch_6
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_5

    array-length v4, p1

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_3

    return v2

    :cond_3
    aget-object v4, p0, v3

    iget-object v4, v4, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    array-length p1, p1

    array-length p0, p0

    if-le p1, p0, :cond_6

    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method public static filterMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static findLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->LOCALE_MATCHER:Lcom/amazon/ebook/util/text/LookupMatcher;

    invoke-virtual {v0, p0}, Lcom/amazon/ebook/util/text/LookupMatcher;->match(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    :goto_0
    invoke-static {v2, p0}, Lcom/amazon/ebook/util/text/LanguageTag;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static get(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    iget v2, v2, Lcom/amazon/ebook/util/text/Subtag;->type:I

    if-ne v2, p0, :cond_3

    const/4 v2, 0x7

    if-ne p0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    array-length p0, p1

    if-ge v1, p0, :cond_1

    aget-object p0, p1, v1

    iget p0, p0, Lcom/amazon/ebook/util/text/Subtag;->type:I

    if-ne p0, v2, :cond_1

    aget-object p0, p1, v1

    :goto_1
    iget-object p0, p0, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    aget-object p0, p1, v1

    goto :goto_1

    :cond_3
    aget-object v2, p1, v1

    iget v2, v2, Lcom/amazon/ebook/util/text/Subtag;->type:I

    if-le v2, p0, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getCanonicalValue(Lcom/amazon/ebook/util/text/Subtag;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/amazon/ebook/util/text/Subtag;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "variant"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "region"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "script"

    goto :goto_0

    :cond_4
    const-string v0, "language"

    :goto_0
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/ebook/util/text/LanguageTagData;->getMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    :cond_5
    iput-object v0, p0, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/ebook/util/text/Subtag;->normalizeCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/ebook/util/text/LanguageTagData;->getLikelySubtags(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static has(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    iget v2, v2, Lcom/amazon/ebook/util/text/Subtag;->type:I

    if-ne v2, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    aget-object v2, p1, v1

    iget v2, v2, Lcom/amazon/ebook/util/text/Subtag;->type:I

    if-le v2, p0, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static isAlnum(C)Z
    .locals 1

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isAlpha(C)Z
    .locals 1

    const/16 v0, 0x60

    if-le p0, v0, :cond_0

    const/16 v0, 0x7b

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x40

    if-le p0, v0, :cond_2

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x2f

    if-le p0, v0, :cond_0

    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGrandfathered(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/ebook/util/text/LanguageTagData;->hasGrandfathered(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isRedundant(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/amazon/ebook/util/text/LanguageTagData;->hasGrandfathered(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 8

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isGrandfathered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isWellFormed(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_8

    aget-object v5, p0, v3

    iget-object v5, v5, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v1, :cond_6

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v7, 0x78

    if-ne v6, v7, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    return v2

    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    aget-object v5, p0, v3

    iget v5, v5, Lcom/amazon/ebook/util/text/Subtag;->type:I

    aget-object v6, p0, v3

    iget-object v6, v6, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/amazon/ebook/util/text/LanguageTag;->isValidSubtag(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    return v2

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method private static isValidSubtag(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/ebook/util/text/LanguageTag;->checkSubtagContents(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v2, 0x2

    if-eq p0, v2, :cond_7

    const/4 v2, 0x3

    if-eq p0, v2, :cond_5

    const/4 v2, 0x4

    if-eq p0, v2, :cond_4

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object p0

    iget-object p0, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->VARIANT:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/ebook/util/text/LanguageTagData;->isRegionValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    aget-char p1, p0, v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    aput-char p1, p0, v0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object p0

    iget-object p0, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->SCRIPT:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object p0

    iget-object p0, p0, Lcom/amazon/ebook/util/text/LanguageTagData;->EXTLANG:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/ebook/util/text/LanguageTagData;->isLanguageValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    :goto_0
    return v0
.end method

.method public static isWellFormed(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isGrandfathered(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lcom/amazon/ebook/util/text/LanguageTag;->irregular:Ljava/util/List;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_a

    aget-object v6, p0, v1

    iget v6, v6, Lcom/amazon/ebook/util/text/Subtag;->type:I

    aget-object v7, p0, v1

    iget-object v7, v7, Lcom/amazon/ebook/util/text/Subtag;->subtag:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v2, :cond_7

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v7, 0x78

    if-ne v6, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    return v0

    :cond_6
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    invoke-static {v6, v7}, Lcom/amazon/ebook/util/text/LanguageTag;->checkSubtagContents(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    return v0

    :cond_8
    :goto_1
    if-eqz v4, :cond_9

    const/4 v5, 0x1

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v0
.end method

.method private static mapGrandfathered(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->isGrandfathered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTagData;->getInstance()Lcom/amazon/ebook/util/text/LanguageTagData;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "grandfathered"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ebook/util/text/LanguageTagData;->getMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static parse(Ljava/lang/String;)[Lcom/amazon/ebook/util/text/Subtag;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "-"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [Lcom/amazon/ebook/util/text/Subtag;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v4, :cond_2

    const-string/jumbo v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v7, 0x7

    new-instance v6, Lcom/amazon/ebook/util/text/Subtag;

    invoke-direct {v6, v7, v8}, Lcom/amazon/ebook/util/text/Subtag;-><init>(ILjava/lang/String;)V

    aput-object v6, p0, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    if-ne v9, v4, :cond_3

    if-lez v5, :cond_3

    if-nez v6, :cond_3

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/amazon/ebook/util/text/LanguageTag;->isAlnum(C)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v7, Lcom/amazon/ebook/util/text/Subtag;

    invoke-direct {v7, v2, v8}, Lcom/amazon/ebook/util/text/Subtag;-><init>(ILjava/lang/String;)V

    aput-object v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x6

    goto :goto_0

    :cond_3
    invoke-static {v7, v8}, Lcom/amazon/ebook/util/text/LanguageTag;->checkSubtagContents(ILjava/lang/String;)Z

    move-result v9

    const/4 v10, 0x5

    if-eqz v9, :cond_4

    new-instance v9, Lcom/amazon/ebook/util/text/Subtag;

    invoke-direct {v9, v7, v8}, Lcom/amazon/ebook/util/text/Subtag;-><init>(ILjava/lang/String;)V

    aput-object v9, p0, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v7, v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    return-object v0

    :cond_5
    :goto_1
    if-ge v7, v2, :cond_8

    invoke-static {v7, v8}, Lcom/amazon/ebook/util/text/LanguageTag;->checkSubtagContents(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Lcom/amazon/ebook/util/text/Subtag;

    invoke-direct {v9, v7, v8}, Lcom/amazon/ebook/util/text/Subtag;-><init>(ILjava/lang/String;)V

    aput-object v9, p0, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v7, v10, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_9

    goto :goto_0

    :cond_9
    return-object v0

    :cond_a
    return-object p0

    :cond_b
    :goto_3
    return-object v0
.end method

.method public static toLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "-x-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageTag;->LANGTAG_TO_LOCALE_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->findLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/amazon/ebook/util/text/LanguageTag;->LANGTAG_TO_LOCALE_CACHE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_5

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    :goto_2
    return-object v1
.end method
