.class public Lcom/amazon/ebook/util/text/StringUtil;
.super Ljava/lang/Object;


# static fields
.field private static final HAN_LIST:Lcom/amazon/ebook/util/lang/InversionList;

.field private static final KANA_LIST:Lcom/amazon/ebook/util/lang/InversionList;

.field private static final LOG:Lcom/amazon/ebook/util/log/Log;

.field private static final MAX_BREAK_MEASURER_CACHE_SIZE:I = 0x3

.field private static final NOT_FOUND:I = -0x1

.field private static final REPLACEMENT_CHAR:Ljava/lang/String; = "\ufffd"

.field private static final RESOURCES:Ljava/lang/String; = "com.amazon.ebook.util.resources.StringUtilResources"

.field private static final SCRIPT_ALPHABETIC:I = 0x0

.field private static final SCRIPT_COMPLEX:I = 0x1

.field private static final SCRIPT_OTHER:I = -0x1

.field private static final UNLIMITED_WORDS_HARD_LIMIT:I = 0x50

.field private static final UNSUPP_ENCODING_EX:Lcom/amazon/ebook/util/log/LogMessage;

.field private static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "StringUtil"

    invoke-static {v0}, Lcom/amazon/ebook/util/log/Log;->getInstance(Ljava/lang/String;)Lcom/amazon/ebook/util/log/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/StringUtil;->LOG:Lcom/amazon/ebook/util/log/Log;

    new-instance v0, Lcom/amazon/ebook/util/log/LogMessage;

    const/4 v1, 0x0

    const-string v2, "UnsupportedEncodingUTF8"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ebook/util/log/LogMessage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/text/StringUtil;->UNSUPP_ENCODING_EX:Lcom/amazon/ebook/util/log/LogMessage;

    :try_start_0
    const-string v0, "3001;3004;3006;3007;3008;3012;3013;3020;3030;3036;3037;3038;303c;3040;3041;3097;3099;3100;3190;31a0;31c0;31e4;31f0;3200;3220;3244;3280;32b1;32c0;32cc;32d0;32ff;3300;3371;337b;3380;33e0;33ff;fe45;fe47;ff61;ffa0;1b000;1b002;1f200;1f201"

    invoke-static {v0}, Lcom/amazon/ebook/util/lang/InversionList;->createFromString(Ljava/lang/String;)Lcom/amazon/ebook/util/lang/InversionList;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "2e80;2e9a;2e9b;2ef4;2f00;2fd6;3001;3004;3005;3012;3013;3020;3021;302e;3030;3031;3037;3040;30fb;30fc;3190;31a0;31c0;31e4;3220;3244;3280;32b1;32c0;32cc;3358;3371;337b;3380;33e0;33ff;3400;4db6;4e00;9fcd;f900;fa6e;fa70;fada;fe45;fe47;ff61;ff66;20000;2a6d7;2a700;2b735;2b740;2b81e;2f800;2fa1e"

    invoke-static {v2}, Lcom/amazon/ebook/util/lang/InversionList;->createFromString(Ljava/lang/String;)Lcom/amazon/ebook/util/lang/InversionList;

    move-result-object v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/amazon/ebook/util/text/StringUtil;->LOG:Lcom/amazon/ebook/util/log/Log;

    const-string v4, "Error initializing script lookup lists"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/ebook/util/log/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sput-object v0, Lcom/amazon/ebook/util/text/StringUtil;->KANA_LIST:Lcom/amazon/ebook/util/lang/InversionList;

    sput-object v1, Lcom/amazon/ebook/util/text/StringUtil;->HAN_LIST:Lcom/amazon/ebook/util/lang/InversionList;

    new-instance v0, Lcom/amazon/ebook/util/text/StringUtil$1;

    const/4 v1, 0x3

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ebook/util/text/StringUtil$1;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs allCharsInTheseScripts(Ljava/lang/String;[I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/amazon/ebook/util/text/StringUtil;->checkScriptMembership(Ljava/lang/String;Z[I)Z

    move-result p0

    return p0
.end method

.method public static varargs anyCharsInTheseScripts(Ljava/lang/String;[I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/amazon/ebook/util/text/StringUtil;->checkScriptMembership(Ljava/lang/String;Z[I)Z

    move-result p0

    return p0
.end method

.method private static varargs checkScriptMembership(Ljava/lang/String;Z[I)Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    :goto_2
    invoke-static {v1}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    return v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return p1
.end method

.method private static hasHan(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/amazon/ebook/util/text/StringUtil;->HAN_LIST:Lcom/amazon/ebook/util/lang/InversionList;

    invoke-static {p0, v0}, Lcom/amazon/ebook/util/text/StringUtil;->hasScript(Ljava/lang/String;Lcom/amazon/ebook/util/lang/InversionList;)Z

    move-result p0

    return p0
.end method

.method private static hasKana(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/amazon/ebook/util/text/StringUtil;->KANA_LIST:Lcom/amazon/ebook/util/lang/InversionList;

    invoke-static {p0, v0}, Lcom/amazon/ebook/util/text/StringUtil;->hasScript(Ljava/lang/String;Lcom/amazon/ebook/util/lang/InversionList;)Z

    move-result p0

    return p0
.end method

.method private static hasScript(Ljava/lang/String;Lcom/amazon/ebook/util/lang/InversionList;)Z
    .locals 5

    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amazon/ebook/util/lang/InversionList;->has(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    :cond_1
    const v3, 0xffff

    if-le v2, v3, :cond_2

    const/4 v4, 0x2

    :cond_2
    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

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

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->hasKana(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "en"

    const-string v2, "ja"

    const-string/jumbo v3, "zh"

    if-eqz v0, :cond_2

    move-object p0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/amazon/ebook/util/text/StringUtil;->hasHan(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v3

    goto :goto_0

    :cond_3
    move-object p0, v1

    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p0, v2

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p0, v3

    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public static shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "en"

    invoke-static {p0, v0}, Lcom/amazon/ebook/util/text/StringUtil;->shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/ebook/util/text/StringUtil;->shortStringLanguageGuesser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string p1, "ja"

    if-eq p0, p1, :cond_3

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "zh"

    if-eq p0, p1, :cond_3

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static split2(Ljava/lang/String;C)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
