.class final Lcom/amazon/kcp/application/NotificationManagerWrapper;
.super Ljava/lang/Object;
.source "StandAloneKindleObjectModule.kt"

# interfaces
.implements Lcom/amazon/reader/notifications/ReaderNotificationsManager;
.implements Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;


# instance fields
.field private final wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/reader/notifications/ReaderNotificationsManager;)V
    .locals 1

    const-string/jumbo v0, "wrapped"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    return-void
.end method


# virtual methods
.method public checkForChannelUpdates(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0, p1}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->checkForChannelUpdates(Ljava/lang/String;)V

    return-void
.end method

.method public clearChannelSettings()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->clearChannelSettings()V

    return-void
.end method

.method public finishGetuiRegistration(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->finishGetuiRegistration(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V

    return-void
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->getChannels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0, p1, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z

    move-result p1

    return p1
.end method

.method public onNewRegistrationId(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    instance-of v1, v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;->onNewRegistrationId(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)V

    :cond_0
    return-void
.end method

.method public parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0, p1}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p1

    return-object p1
.end method

.method public register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/NotificationManagerWrapper;->wrapped:Lcom/amazon/reader/notifications/ReaderNotificationsManager;

    invoke-interface {v0, p1, p2}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V

    return-void
.end method
