.class public final Lcom/amazon/kindle/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field private static final randomNumberGenerator:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazon/kindle/search/SearchUtils;->randomNumberGenerator:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 179
    sget-object v2, Lcom/amazon/kindle/search/SearchUtils;->randomNumberGenerator:Ljava/security/SecureRandom;

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static isPunctuation(C)Z
    .locals 1

    const/16 v0, 0x2000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x206f

    if-le p0, v0, :cond_5

    :cond_0
    const/16 v0, 0x21

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2f

    if-le p0, v0, :cond_5

    :cond_1
    const/16 v0, 0x3a

    if-lt p0, v0, :cond_2

    const/16 v0, 0x40

    if-le p0, v0, :cond_5

    :cond_2
    const/16 v0, 0x5b

    if-lt p0, v0, :cond_3

    const/16 v0, 0x60

    if-le p0, v0, :cond_5

    :cond_3
    const/16 v0, 0x7b

    if-lt p0, v0, :cond_4

    const/16 v0, 0x9f

    if-le p0, v0, :cond_5

    :cond_4
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_6

    const/16 v0, 0xbf

    if-gt p0, v0, :cond_6

    :cond_5
    const/4 p0, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static split(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "[C>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 72
    invoke-static {v4}, Lcom/amazon/kindle/search/SearchUtils;->isSpace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-array v5, v3, [C

    aput-char v4, v5, v2

    .line 75
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge p1, v1, :cond_5

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/amazon/kindle/search/SearchUtils;->isSpace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_3

    .line 85
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_3
    add-int/lit8 v4, p1, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_6

    .line 95
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method static stripCommonDiacriticsToCharArray(Ljava/lang/String;)[C
    .locals 7

    .line 129
    sget-object v0, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 132
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 133
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x300

    if-lt v5, v6, :cond_0

    const/16 v6, 0x36f

    if-le v5, v6, :cond_1

    :cond_0
    if-ge v4, v0, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 135
    aput-char v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v4, v0, :cond_3

    .line 140
    aput-char v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static stripPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/amazon/kindle/search/SearchUtils;->isPunctuation(C)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static urlEncodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 152
    const-class v0, Lcom/amazon/kindle/search/SearchUtils;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/common/net/UrlEscapers;->urlFragmentEscaper()Lcom/google/common/escape/Escaper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/common/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 158
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v1, "Error occurred when URL encoding string: %s, falling back to original text"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 155
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Input String cannot be null for URL encoding."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
