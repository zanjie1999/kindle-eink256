.class public Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;
.super Ljava/lang/Object;
.source "RomanNumber.java"


# static fields
.field private static final NORMALIZER_MODE:Ljava/text/Normalizer$Form;

.field private static final ROMAN_NUMERALS:[Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;


# instance fields
.field private final string:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->NORMALIZER_MODE:Ljava/text/Normalizer$Form;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    .line 12
    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->M:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->CM:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->D:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->CD:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->C:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->XC:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->L:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->XL:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->X:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->IX:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->V:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->IV:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->I:Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->ROMAN_NUMERALS:[Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->value:I

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->convertValueToString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->string:Ljava/lang/String;

    return-void
.end method

.method private static convertUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->NORMALIZER_MODE:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertValueToString()Ljava/lang/String;
    .locals 5

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    iget v1, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->value:I

    :cond_0
    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x0

    .line 121
    :goto_1
    sget-object v3, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->ROMAN_NUMERALS:[Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 122
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->getValue()I

    move-result v3

    if-gt v3, v1, :cond_1

    sub-int/2addr v1, v3

    .line 125
    sget-object v3, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->ROMAN_NUMERALS:[Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->getNumeral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRomanNumber(Ljava/lang/String;)Z
    .locals 0

    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->parseRomanNumber(Ljava/lang/String;)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseRomanNumber(Ljava/lang/String;)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;
    .locals 7

    if-eqz p0, :cond_5

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->convertUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, 0x0

    .line 50
    :goto_1
    sget-object v5, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->ROMAN_NUMERALS:[Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 51
    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->getNumeral()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    sget-object v6, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->ROMAN_NUMERALS:[Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumeral;->getValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 54
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_2
    if-ne v4, v2, :cond_2

    goto :goto_3

    :cond_2
    move v2, v4

    goto :goto_0

    .line 65
    :cond_3
    :goto_3
    new-instance v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;

    invoke-direct {v1, v3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;-><init>(I)V

    .line 66
    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 69
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not represent a valid RomanNumber"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "romanNumberText cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->string:Ljava/lang/String;

    return-object v0
.end method
