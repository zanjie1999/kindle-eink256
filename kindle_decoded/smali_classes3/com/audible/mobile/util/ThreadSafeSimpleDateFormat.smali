.class public Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;
.super Ljava/lang/Object;
.source "ThreadSafeSimpleDateFormat.java"


# static fields
.field private static final ISO8601_DATETIME_TIME_ZONE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ISO_8601_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final ISO_8601_DATE_TIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final ISO_8601_FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final ISO_8601_FULL_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final YYYY_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final YYYY_METADATA_PATTERN:Ljava/lang/String; = "yyyy"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->LOGGER:Lorg/slf4j/Logger;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->YYYY_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseFromISO8601DayThrowsException(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFromIso8601DateTimeThrowsException(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 195
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFromIso8601Formats(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 216
    :try_start_0
    invoke-static {p0}, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->parseFromIso8601FullThrowsException(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    :try_start_1
    invoke-static {p0}, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->parseFromIso8601DateTimeThrowsException(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 222
    :catch_1
    :try_start_2
    invoke-static {p0}, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->parseFromISO8601DayThrowsException(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 225
    :catch_2
    :try_start_3
    invoke-static {p0}, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->parseToYearOnlyThrowException(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p0

    const/4 v0, 0x0

    .line 228
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Exception parsing date string."

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static parseFromIso8601FullThrowsException(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 170
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->ISO_8601_FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseToYearOnlyThrowException(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->YYYY_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/audible/mobile/util/ThreadSafeSimpleDateFormat;->YYYY_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
