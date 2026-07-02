.class public Lorg/apache/commons/lang3/time/FastTimeZone;
.super Ljava/lang/Object;
.source "FastTimeZone.java"


# static fields
.field private static final GMT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GREENWICH:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    new-instance v0, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-void
.end method

.method public static getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4

    const-string v0, "Z"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UTC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/time/FastTimeZone;->GMT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 59
    sget-object p0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object p0

    .line 61
    :cond_1
    new-instance v2, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/time/FastTimeZone;->parseSign(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/commons/lang3/time/GmtTimeZone;-><init>(ZII)V

    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_3
    :goto_0
    sget-object p0, Lorg/apache/commons/lang3/time/FastTimeZone;->GREENWICH:Ljava/util/TimeZone;

    return-object p0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseSign(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2d

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
