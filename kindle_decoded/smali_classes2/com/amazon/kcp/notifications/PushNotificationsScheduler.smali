.class public Lcom/amazon/kcp/notifications/PushNotificationsScheduler;
.super Ljava/lang/Object;
.source "PushNotificationsScheduler.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy HH:mm:ss"

.field public static final TAG:Ljava/lang/String;

.field private static final TIME_FORMAT:Ljava/lang/String; = "HH:mm:ss"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTimeWithinRange(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2

    .line 198
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_0

    .line 200
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTimestampWithinActivePeriod(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 3

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getActivePeriod()Lcom/amazon/reader/notifications/message/ActivePeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/ActivePeriod;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 172
    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getActivePeriod()Lcom/amazon/reader/notifications/message/ActivePeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/ActivePeriod;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 173
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    if-eqz p3, :cond_0

    .line 176
    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isTimeWithinRange(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 179
    sget-object p2, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    const-string p3, "Error while parsing start and end time for active period"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isTimestampWithinValidityPeriod(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getDealValidPeriod()Lcom/amazon/reader/notifications/message/DealValidPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/DealValidPeriod;->getDealEndTime()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    .line 149
    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getDealValidPeriod()Lcom/amazon/reader/notifications/message/DealValidPeriod;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/reader/notifications/message/DealValidPeriod;->getDealStartTime()J

    move-result-wide v1

    cmp-long p3, p1, v1

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getEarliestDisplayTime(Lcom/amazon/reader/notifications/message/NotificationMessage;)J
    .locals 10

    const-wide/16 v0, -0x1

    .line 41
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getActivePeriod()Lcom/amazon/reader/notifications/message/ActivePeriod;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/amazon/reader/notifications/message/ActivePeriod;->getStartTime()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_0

    .line 47
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "The active period for start time is null"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getActivePeriod()Lcom/amazon/reader/notifications/message/ActivePeriod;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/amazon/reader/notifications/message/ActivePeriod;->getEndTime()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 57
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getDealValidPeriod()Lcom/amazon/reader/notifications/message/DealValidPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/DealValidPeriod;->getDealStartTime()J

    move-result-wide v6

    .line 58
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getDealValidPeriod()Lcom/amazon/reader/notifications/message/DealValidPeriod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/reader/notifications/message/DealValidPeriod;->getDealEndTime()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-lez v2, :cond_1

    .line 62
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "Notification arrived after the deal validity expired"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 67
    :cond_1
    invoke-virtual {p0, v4, v5, p1}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isNotificationTimestampValid(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "Notification can be displayed now"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :cond_2
    cmp-long v2, v6, v4

    if-ltz v2, :cond_3

    .line 74
    invoke-virtual {p0, v6, v7, p1}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isNotificationTimestampValid(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "Notification can be displayed at the start of the deal validity period"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    .line 80
    :cond_3
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 83
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 86
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/Date;->setHours(I)V

    .line 87
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 88
    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->setSeconds(I)V

    .line 91
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p1}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isNotificationTimestampValid(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_4

    .line 92
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling Notification for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 97
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    const/4 v4, 0x1

    .line 101
    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p1}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isNotificationTimestampValid(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 104
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling Notification for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 109
    :cond_5
    sget-object p1, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "Could not find a future time to schedule the notification message"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public isNotificationTimestampValid(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z
    .locals 1

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isTimestampWithinActivePeriod(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/notifications/PushNotificationsScheduler;->isTimestampWithinValidityPeriod(JLcom/amazon/reader/notifications/message/NotificationMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
