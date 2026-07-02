.class public Lcom/amazon/kcp/notifications/StandaloneNotificationSettingsManager;
.super Ljava/lang/Object;
.source "StandaloneNotificationSettingsManager.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/INotificationSettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public isChannelSubscribed(Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/amazon/kcp/notifications/NotificationsChannelsManager;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
