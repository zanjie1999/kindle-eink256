.class public Lcom/amazon/messaging/odot/DailyWanUsageQuota;
.super Ljava/lang/Object;
.source "DailyWanUsageQuota.java"

# interfaces
.implements Lcom/amazon/messaging/odot/WanUsageQuota;


# static fields
.field private static final CONSUMPTION_LOG_FILENAME:Ljava/lang/String; = "DailyWanConsumption"

.field private static final DATA_SENT_KEY:Ljava/lang/String; = "DataSent"

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final LAST_DATE_SENT_DEFAULT:Ljava/lang/String; = "01/07/2015"

.field private static final LAST_DATE_SENT_KEY:Ljava/lang/String; = "LastDateSent"

.field private static LOG_DAILY_RESET:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final consumptionLog:Landroid/content/SharedPreferences;

.field private final dailyBytesLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->TAG:Ljava/lang/String;

    const-string v0, "Reseting WAN usage quota. On %s, WAN usage was %d bytes."

    .line 23
    sput-object v0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->LOG_DAILY_RESET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLandroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DailyWanConsumption"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->consumptionLog:Landroid/content/SharedPreferences;

    .line 57
    iput-wide p1, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->dailyBytesLimit:J

    return-void
.end method

.method private getTodaysUsage()J
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->consumptionLog:Landroid/content/SharedPreferences;

    const-string v1, "LastDateSent"

    const-string v2, "01/07/2015"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-direct {p0}, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->today()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->consumptionLog:Landroid/content/SharedPreferences;

    const-string v3, "DataSent"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method private today()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public capReached()Z
    .locals 5

    .line 85
    invoke-direct {p0}, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->getTodaysUsage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->dailyBytesLimit:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recordUsage(J)V
    .locals 10

    .line 93
    iget-object v0, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->consumptionLog:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->consumptionLog:Landroid/content/SharedPreferences;

    const-string v2, "LastDateSent"

    const-string v3, "01/07/2015"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v3, p0, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->consumptionLog:Landroid/content/SharedPreferences;

    const-string v4, "DataSent"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 96
    invoke-direct {p0}, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->today()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-long/2addr v5, p1

    .line 98
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 101
    :cond_0
    sget-object v3, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->LOG_DAILY_RESET:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/amazon/messaging/odot/DailyWanUsageQuota;->today()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0, v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 105
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
