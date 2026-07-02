.class public final Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;
.super Ljava/lang/Object;
.source "TimestampUtil.kt"


# instance fields
.field private final ISO_INSTANT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final currentDate:Ljava/util/Date;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final defaultLocale:Ljava/util/Locale;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/util/Date;Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->currentDate:Ljava/util/Date;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    .line 22
    const-class p1, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->TAG:Ljava/lang/String;

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->ISO_INSTANT:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "Locale.getDefault()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->defaultLocale:Ljava/util/Locale;

    .line 30
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->ISO_INSTANT:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->defaultLocale:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private final isStrictlyYesterday(Ljava/util/Date;)Z
    .locals 5

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "yesterday"

    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->currentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "notificationCalendar"

    .line 147
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 149
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final numberOfDaysFromCurrentDate(Ljava/util/Date;)I
    .locals 8

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "expirationCalendar"

    .line 114
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 116
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 117
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 118
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 119
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 121
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 122
    iget-object v6, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->currentDate:Ljava/util/Date;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const-string v7, "currentCalendar"

    .line 124
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 125
    invoke-virtual {v6, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-virtual {v6, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 127
    invoke-virtual {v6, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 128
    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const-string v1, "currentCalendar.time"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expirationDate"

    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 132
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    .line 122
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final getPrettyDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, "TAG"

    const-string v1, "notificationDateString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->currentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "dateFormat.calendar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "Z"

    const-string v5, "+0000"

    move-object v3, p1

    .line 46
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse date format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    const-string v2, ""

    if-nez p1, :cond_1

    return-object v2

    .line 57
    :cond_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->currentDate:Ljava/util/Date;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 58
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v3, v4, v5, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    .line 59
    div-long v5, v3, v5

    const/16 v1, 0x3c

    int-to-long v7, v1

    cmp-long v9, v3, v7

    if-gez v9, :cond_2

    .line 61
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->date_string_now:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.string.date_string_now)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/16 v9, 0x78

    int-to-long v9, v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    cmp-long v13, v3, v9

    if-gez v13, :cond_3

    .line 63
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$plurals;->date_string_minutes:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {p1, v0, v12, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getQuantityStr\u2026ate_string_minutes, 1, 1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    .line 65
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$plurals;->date_string_minutes:I

    long-to-int v1, v5

    new-array v2, v12, [Ljava/lang/Object;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    .line 65
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getQuantityStr\u2026    deltaMinutes.toInt())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    cmp-long v3, v5, v9

    if-gez v3, :cond_5

    .line 68
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$plurals;->date_string_hours:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {p1, v0, v12, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getQuantityStr\u2026.date_string_hours, 1, 1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const/16 v3, 0x5a0

    int-to-long v3, v3

    cmp-long v7, v5, v3

    if-gez v7, :cond_6

    long-to-int p1, v5

    .line 70
    div-int/2addr p1, v1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$plurals;->date_string_hours:I

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getQuantityStr\u2026_hours, minutes, minutes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 72
    :cond_6
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->isStrictlyYesterday(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->delivered_yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.string.delivered_yesterday)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 76
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->defaultLocale:Ljava/util/Locale;

    const-string v3, "MMMM d"

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 78
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dateFormatter.format(notificationDate)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 80
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to format date for notificationDate "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 57
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final getPrettyExpiredString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 93
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 94
    new-instance p1, Ljava/util/Date;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v0, v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->numberOfDaysFromCurrentDate(Ljava/util/Date;)I

    move-result p1

    if-gez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->expiration_expired:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.string.expiration_expired)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$string;->expiration_today:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$plurals;->expiration_days:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (dayDifference == 0) \u2026 dayDifference)\n        }"

    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method
