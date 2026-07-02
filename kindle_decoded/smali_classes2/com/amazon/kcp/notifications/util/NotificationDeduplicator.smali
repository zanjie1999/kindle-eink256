.class public Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;
.super Ljava/lang/Object;
.source "NotificationDeduplicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/notifications/util/NotificationDeduplicator$MapperHolder;
    }
.end annotation


# static fields
.field private static final PREFERENCES_KEY:Ljava/lang/String; = "notifications.pref"

.field private static final RECENT_NOTIFICATIONS_KEY:Ljava/lang/String; = "recentNotifications"

.field public static final TAG:Ljava/lang/String;

.field private static final TIME_RANGE:J


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    const-class v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TIME_RANGE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->context:Landroid/content/Context;

    return-void
.end method

.method private getNotificationsPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->context:Landroid/content/Context;

    const-string v1, "notifications.pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getRecentNotifications()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->getNotificationsPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "recentNotifications"

    const-string/jumbo v2, "{}"

    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator$MapperHolder;->MAPPER:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TAG:Ljava/lang/String;

    const-string v2, "Exception thrown while mapping recent notifications string to map"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private updateRecentNotifications(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->getNotificationsPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator$MapperHolder;->MAPPER:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "recentNotifications"

    .line 118
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    sget-object v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TAG:Ljava/lang/String;

    const-string v1, "Exception thrown while updating recent notifications map"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isDuplicate(Ljava/lang/String;)Z
    .locals 3

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->getRecentNotifications()Ljava/util/Map;

    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has already been received on the device"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateNotificationsDisplayed(Ljava/lang/String;J)V
    .locals 8

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->getRecentNotifications()Ljava/util/Map;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TIME_RANGE:J

    sub-long/2addr v2, v4

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 80
    sget-object v5, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing message with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as it was displayed more than 7 days ago"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, v0}, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;->updateRecentNotifications(Ljava/util/Map;)V

    return-void
.end method
