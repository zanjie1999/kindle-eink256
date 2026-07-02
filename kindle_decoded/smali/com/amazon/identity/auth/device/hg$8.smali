.class Lcom/amazon/identity/auth/device/hg$8;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qe:Lcom/amazon/identity/auth/device/hg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hg;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hg$8;->qe:Lcom/amazon/identity/auth/device/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 1135
    invoke-static {}, Lcom/amazon/identity/auth/device/hg;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Registration check failed. This does not mean the device deregistered, this can happen if the network call failed.  Also this will not ever be raised to an application calling one of our apis as this is a background task to check the serverside registration state."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 1129
    invoke-static {}, Lcom/amazon/identity/auth/device/hg;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Registration check succeeded."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
