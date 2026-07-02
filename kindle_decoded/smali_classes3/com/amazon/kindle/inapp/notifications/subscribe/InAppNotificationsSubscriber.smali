.class public interface abstract Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;
.super Ljava/lang/Object;
.source "InAppNotificationsSubscriber.kt"


# virtual methods
.method public abstract getNotificationHandler(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;
.end method

.method public abstract supportedTapActions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
