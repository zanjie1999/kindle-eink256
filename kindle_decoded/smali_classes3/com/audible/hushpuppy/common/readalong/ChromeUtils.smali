.class public final Lcom/audible/hushpuppy/common/readalong/ChromeUtils;
.super Ljava/lang/Object;
.source "ChromeUtils.java"


# static fields
.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TWO_DIGITS:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedTimeLeftString(I)Ljava/lang/String;
    .locals 2

    .line 63
    div-int/lit16 p0, p0, 0x3e8

    .line 64
    rem-int/lit16 v0, p0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 65
    div-int/lit16 p0, p0, 0xe10

    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-lez p0, :cond_0

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "h "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_0
    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->pad(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p0, "m"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pad(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const-string v0, "0"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-object p1
.end method


# virtual methods
.method public millisecondsToTimePlayedString(I)Ljava/lang/String;
    .locals 4

    .line 37
    div-int/lit16 p1, p1, 0x3e8

    .line 38
    rem-int/lit8 v0, p1, 0x3c

    .line 39
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 40
    div-int/lit16 p1, p1, 0xe10

    .line 42
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ":"

    if-lez p1, :cond_0

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_0
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->pad(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-static {v0, v2}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->pad(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public millisecondsToTimeRemainingString(II)Ljava/lang/String;
    .locals 0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->millisecondsToTimePlayedString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, p2

    .line 92
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->millisecondsToTimePlayedString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
