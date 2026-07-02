.class public interface abstract Lcom/amazon/identity/auth/device/ba;
.super Ljava/lang/Object;
.source "DCP"


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;",
            "Lcom/amazon/identity/auth/device/api/ActorInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActor(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getActorForMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract removeActorMapping(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract removeCurrentActor(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract setActorMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract setCurrentActor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
