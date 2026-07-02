.class public Lcom/amazon/kcp/notifications/handlers/NotificationHandlerFactory;
.super Ljava/lang/Object;
.source "NotificationHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/handlers/NotificationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->DEFAULT_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance p1, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/handlers/DefaultNotificationHandler;-><init>()V

    return-object p1

    .line 26
    :cond_0
    sget-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->NEW_CHANNEL_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance p1, Lcom/amazon/kcp/notifications/handlers/NewChannelNotificationHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/handlers/NewChannelNotificationHandler;-><init>()V

    return-object p1

    .line 28
    :cond_1
    sget-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->ICS_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    new-instance p1, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/handlers/ICSNotificationHandler;-><init>()V

    return-object p1

    .line 30
    :cond_2
    sget-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->BACKGROUND_TODO_SYNC_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "The notification received is not supported"

    if-eqz p1, :cond_4

    .line 31
    const-class p1, Lcom/amazon/kcp/notifications/handlers/DiscoverableBackgroundTodoSyncNotificationHandler;

    .line 32
    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/notifications/handlers/DiscoverableBackgroundTodoSyncNotificationHandler;

    if-eqz p1, :cond_3

    .line 35
    invoke-interface {p1}, Lcom/amazon/kcp/notifications/handlers/DiscoverableBackgroundTodoSyncNotificationHandler;->getHandler()Lcom/amazon/kcp/notifications/handlers/NotificationHandler;

    move-result-object p1

    return-object p1

    .line 37
    :cond_3
    new-instance p1, Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_4
    new-instance p1, Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
