.class public interface abstract Lcom/amazon/kcp/application/internal/IUpdateManager;
.super Ljava/lang/Object;
.source "IUpdateManager.java"


# virtual methods
.method public abstract clearSecureStorage()V
.end method

.method public abstract getLatestKnownAppVersion()J
.end method

.method public abstract initialize(Lcom/amazon/kindle/persistence/ISecureStorage;)V
.end method

.method public abstract processStartup(Z)V
.end method

.method public abstract processUpdateTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
.end method

.method public abstract showForcedUpdateDialogIfNeeded()Z
.end method
