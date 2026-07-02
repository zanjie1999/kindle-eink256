.class public interface abstract Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;
.super Ljava/lang/Object;
.source "ISocialSharingPerfMetricsManager.java"


# virtual methods
.method public abstract abortTimer(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportConnectivityType(Ljava/lang/String;)V
.end method

.method public abstract reportNoConnectivity()V
.end method

.method public abstract reportOverflowShareSuccess(Z)V
.end method

.method public abstract reportShareApp(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportShareContextType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportShareDialogDismissed()V
.end method

.method public abstract startTimer(Ljava/lang/String;)V
.end method

.method public abstract stopTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
