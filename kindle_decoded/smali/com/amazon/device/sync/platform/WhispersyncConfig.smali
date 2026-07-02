.class public interface abstract Lcom/amazon/device/sync/platform/WhispersyncConfig;
.super Ljava/lang/Object;
.source "WhispersyncConfig.java"


# virtual methods
.method public abstract getIsBatchingDisabled()Z
.end method

.method public abstract getNetworkOperationsThreadPoolSize()I
.end method

.method public abstract getPushNotificationTopic()Ljava/lang/String;
.end method

.method public abstract getPushSubscription(Ljava/lang/String;)Lcom/amazon/whispersync/Subscription;
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract isEngineeringBuild()Z
.end method

.method public abstract supportsPushNotifications()Z
.end method
