.class interface abstract Lcom/amazon/kindle/services/authentication/MAPTokenTask;
.super Ljava/lang/Object;
.source "MAPTokenTask.java"


# virtual methods
.method public abstract execute(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue(Landroid/os/Bundle;)Ljava/lang/String;
.end method
