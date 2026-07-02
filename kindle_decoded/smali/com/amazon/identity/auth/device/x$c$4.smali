.class Lcom/amazon/identity/auth/device/x$c$4;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bT:Lcom/amazon/identity/auth/device/x$c;

.field final synthetic bZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/x$c;Ljava/lang/String;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$c$4;->bT:Lcom/amazon/identity/auth/device/x$c;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/x$c$4;->bZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 690
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deregister secondary account fail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.amazon.dcp.sso.ErrorMessage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 691
    iget-object p1, p0, Lcom/amazon/identity/auth/device/x$c$4;->bT:Lcom/amazon/identity/auth/device/x$c;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/x$c;->a(Lcom/amazon/identity/auth/device/x$c;)Lcom/amazon/identity/auth/device/ej;

    move-result-object p1

    const-string v0, "FailDeregisterSecondaryAccount"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 684
    invoke-static {}, Lcom/amazon/identity/auth/device/x;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deregister secondary account success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$c$4;->bZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method
