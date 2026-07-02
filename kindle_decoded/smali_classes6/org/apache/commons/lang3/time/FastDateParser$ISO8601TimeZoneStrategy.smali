.class Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final ISO_8601_1_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final ISO_8601_2_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 921
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 922
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 923
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 910
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 1

    .line 902
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object v0
.end method

.method static getStrategy(I)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 939
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    .line 941
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 937
    :cond_1
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    .line 935
    :cond_2
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 918
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
