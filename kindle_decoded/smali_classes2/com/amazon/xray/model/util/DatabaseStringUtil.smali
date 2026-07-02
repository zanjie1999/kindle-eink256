.class public Lcom/amazon/xray/model/util/DatabaseStringUtil;
.super Ljava/lang/Object;
.source "DatabaseStringUtil.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final NINE:C = '9'

.field private static final ZERO:C = '0'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 18
    sput-object v1, Lcom/amazon/xray/model/util/DatabaseStringUtil;->EMPTY_INT_ARRAY:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/amazon/xray/model/util/DatabaseStringUtil;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public static parseIntegers(Ljava/lang/String;)[I
    .locals 1

    const-string v0, ","

    .line 53
    invoke-static {p0, v0}, Lcom/amazon/xray/model/util/DatabaseStringUtil;->parseIntegers(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public static parseIntegers(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 11

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object p0, Lcom/amazon/xray/model/util/DatabaseStringUtil;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v1

    .line 75
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-array v2, v3, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v1

    .line 85
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-ge v4, v6, :cond_4

    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_3

    const/16 v10, 0x39

    if-gt v8, v10, :cond_3

    mul-int/lit8 v7, v7, 0xa

    .line 96
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Not a valid list of numbers"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_4
    aput v7, v2, v5

    add-int/2addr v5, v1

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v6, v4, :cond_5

    return-object v2

    :cond_5
    move v4, v6

    goto :goto_1
.end method

.method public static parseIntegersAsStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object p0, Lcom/amazon/xray/model/util/DatabaseStringUtil;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, ","

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
