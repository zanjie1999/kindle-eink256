.class public interface abstract Lcom/amazon/foundation/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;
    }
.end annotation


# virtual methods
.method public abstract executeCallbacks(Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;)V
.end method

.method public abstract register(Ljava/lang/Object;)Z
.end method

.method public abstract unregister(Ljava/lang/Object;)Z
.end method
