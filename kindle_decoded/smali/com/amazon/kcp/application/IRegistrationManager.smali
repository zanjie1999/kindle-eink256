.class public interface abstract Lcom/amazon/kcp/application/IRegistrationManager;
.super Ljava/lang/Object;
.source "IRegistrationManager.java"


# virtual methods
.method public abstract deregisterDevice(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
.end method

.method public abstract deregisterPrimaryAccount(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
.end method

.method public abstract getWebviewOptions()Landroid/os/Bundle;
.end method

.method public abstract refresh()V
.end method

.method public abstract showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;",
            "Lcom/amazon/foundation/IStringCallback;",
            "Lcom/amazon/foundation/IStringCallback;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract tryHandle3pLoginCode(Landroid/os/Bundle;Landroid/app/Activity;)Z
.end method
