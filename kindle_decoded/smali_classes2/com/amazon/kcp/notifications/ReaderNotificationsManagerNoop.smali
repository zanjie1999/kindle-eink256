.class public final Lcom/amazon/kcp/notifications/ReaderNotificationsManagerNoop;
.super Ljava/lang/Object;
.source "ReaderNotificationsManagerNoop.kt"

# interfaces
.implements Lcom/amazon/reader/notifications/ReaderNotificationsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkForChannelUpdates(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearChannelSettings()V
    .locals 0

    return-void
.end method

.method public finishGetuiRegistration(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V
    .locals 0

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

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 0

    .line 30
    new-instance p1, Lcom/amazon/reader/notifications/message/NotificationMessage;

    invoke-direct {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;-><init>()V

    return-object p1
.end method

.method public register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    .locals 0

    return-void
.end method
