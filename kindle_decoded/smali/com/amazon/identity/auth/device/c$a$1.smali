.class Lcom/amazon/identity/auth/device/c$a$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/c$a;->startAsyncOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/amazon/identity/auth/device/c$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/c$a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 4

    .line 66
    invoke-static {}, Lcom/amazon/identity/auth/device/c;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/c$a;->a(Lcom/amazon/identity/auth/device/c$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "onError Popping task %s off AccountAuthenticatorQueue."

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/c$a;->d(Lcom/amazon/identity/auth/device/c$a;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/c$a;->c(Lcom/amazon/identity/auth/device/c$a;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-static {}, Lcom/amazon/identity/auth/device/c;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/c$a;->a(Lcom/amazon/identity/auth/device/c$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "onSuccess Popping task %s off AccountAuthenticatorQueue."

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/c$a;->b(Lcom/amazon/identity/auth/device/c$a;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/identity/auth/device/c$a$1;->j:Lcom/amazon/identity/auth/device/c$a;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/c$a;->c(Lcom/amazon/identity/auth/device/c$a;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
