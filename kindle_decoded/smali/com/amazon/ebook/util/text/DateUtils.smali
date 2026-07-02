.class public Lcom/amazon/ebook/util/text/DateUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BAD_DATE_MSG:Lcom/amazon/ebook/util/log/LogMessage;

.field private static final INTERVAL_NOW_LIMIT:J = 0x5L

.field private static final INTERVAL_STATE_NAMES:[Ljava/lang/String;

.field private static final LOG:Lcom/amazon/ebook/util/log/Log;

.field private static final ONE_DAY_UTC:J = 0x5265c00L

.field private static final PUB_DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final UNKNOWN_INTERVAL:J = 0x7fffffffffffffffL

.field private static final UTC_ZONE:Ljava/util/TimeZone;

.field private static final UTC_ZONE_ICU:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "DateUtil"

    invoke-static {v0}, Lcom/amazon/ebook/util/log/Log;->getInstance(Ljava/lang/String;)Lcom/amazon/ebook/util/log/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/DateUtils;->LOG:Lcom/amazon/ebook/util/log/Log;

    const-string/jumbo v1, "year"

    const-string/jumbo v2, "month"

    const-string/jumbo v3, "week"

    const-string v4, "day"

    const-string v5, "hour"

    const-string/jumbo v6, "minute"

    const-string/jumbo v7, "now"

    const-string/jumbo v8, "other"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/DateUtils;->INTERVAL_STATE_NAMES:[Ljava/lang/String;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/DateUtils;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-static {v0}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/DateUtils;->UTC_ZONE_ICU:Lcom/ibm/icu/util/TimeZone;

    new-instance v0, Lcom/amazon/ebook/util/log/LogMessage;

    const-string v1, "dateStr"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "badDate"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ebook/util/log/LogMessage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/ebook/util/text/DateUtils;->BAD_DATE_MSG:Lcom/amazon/ebook/util/log/LogMessage;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/ebook/util/text/DateUtils;->PUB_DATE_FORMATTER:Ljava/text/DateFormat;

    sget-object v1, Lcom/amazon/ebook/util/text/DateUtils;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
