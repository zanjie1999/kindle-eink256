.class Lcom/amazon/identity/auth/device/hd$c$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hd$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pW:Lcom/amazon/identity/auth/device/hd$c;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hd$c;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hd$c$1;->pW:Lcom/amazon/identity/auth/device/hd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "TokenJobQueue"

    .line 100
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$1;->pW:Lcom/amazon/identity/auth/device/hd$c;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hd$c;->gj()V

    .line 102
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$1;->pW:Lcom/amazon/identity/auth/device/hd$c;

    .line 2071
    iget-object v0, v0, Lcom/amazon/identity/auth/device/hd$c;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 102
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "TokenJobQueue"

    .line 92
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$1;->pW:Lcom/amazon/identity/auth/device/hd$c;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hd$c;->gj()V

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$1;->pW:Lcom/amazon/identity/auth/device/hd$c;

    .line 1071
    iget-object v0, v0, Lcom/amazon/identity/auth/device/hd$c;->g:Lcom/amazon/identity/auth/device/api/Callback;

    .line 94
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
