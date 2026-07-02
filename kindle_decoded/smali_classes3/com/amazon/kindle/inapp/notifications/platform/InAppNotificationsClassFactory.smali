.class public interface abstract Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;
.super Ljava/lang/Object;
.source "InAppNotificationsClassFactory.kt"


# virtual methods
.method public abstract getNavBellIconDrawable()I
.end method

.method public abstract getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;
.end method

.method public abstract getThemeUtil()Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtil;
.end method

.method public abstract getTrayAdapter(Ljava/util/List;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;",
            "Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;",
            ")",
            "Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;"
        }
    .end annotation
.end method

.method public abstract getWeblabGateKeeper()Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;
.end method
