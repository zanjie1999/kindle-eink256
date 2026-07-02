.class public interface abstract Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;
.super Ljava/lang/Object;
.source "ConfigurationSyncCallback.java"


# virtual methods
.method public abstract onConfigurationModified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
.end method

.method public abstract onConfigurationUnmodified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
.end method

.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onThrottle(J)V
.end method
