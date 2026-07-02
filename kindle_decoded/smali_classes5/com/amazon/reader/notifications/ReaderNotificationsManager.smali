.class public interface abstract Lcom/amazon/reader/notifications/ReaderNotificationsManager;
.super Ljava/lang/Object;
.source "ReaderNotificationsManager.java"


# virtual methods
.method public abstract checkForChannelUpdates(Ljava/lang/String;)V
.end method

.method public abstract clearChannelSettings()V
.end method

.method public abstract finishGetuiRegistration(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/getui/GetuiRegistrationCallbacks;)V
.end method

.method public abstract getChannels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMessageValid(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
.end method

.method public abstract parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/MessageParseException;
        }
    .end annotation
.end method

.method public abstract register(Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
.end method
