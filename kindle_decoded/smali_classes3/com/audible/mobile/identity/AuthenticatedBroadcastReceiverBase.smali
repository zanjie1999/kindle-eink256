.class public abstract Lcom/audible/mobile/identity/AuthenticatedBroadcastReceiverBase;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatedBroadcastReceiverBase.java"


# instance fields
.field private identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field protected final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/identity/AuthenticatedBroadcastReceiverBase;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/identity/AuthenticatedBroadcastReceiverBase;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method protected final getIdentityManager()Lcom/audible/mobile/identity/IdentityManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/audible/mobile/identity/AuthenticatedBroadcastReceiverBase;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-object v0
.end method

.method protected abstract onAuthenticatedReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 25
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    .line 26
    const-class v1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/identity/IdentityManager;

    iput-object v0, p0, Lcom/audible/mobile/identity/AuthenticatedBroadcastReceiverBase;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 28
    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->isAccountRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/identity/AuthenticatedBroadcastReceiverBase;->onAuthenticatedReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
