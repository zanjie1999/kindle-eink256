.class public Lcom/amazon/kcp/notifications/actions/StandaloneTapActionFactory;
.super Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory;
.source "StandaloneTapActionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getTapAction(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationTapAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/amazon/kcp/notifications/PushNotificationAction;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/PushNotificationAction;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_KINDLE_UNLIMITED:Lcom/amazon/kcp/notifications/PushNotificationAction;

    if-ne v0, v1, :cond_0

    .line 12
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenKindleUnlimitedAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/OpenKindleUnlimitedAction;-><init>()V

    return-object p1

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/notifications/actions/NotificationsTapActionFactory;->getTapAction(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationTapAction;

    move-result-object p1

    return-object p1
.end method
