.class Lcom/amazon/identity/auth/device/h$8;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic K:Landroid/os/Bundle;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$8;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$8;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$8;->K:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$8;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$8;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5

    .line 648
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$8;->L:Lcom/amazon/identity/auth/device/h;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/h;->getAccounts()Ljava/util/Set;

    move-result-object v0

    .line 649
    new-instance v1, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/bl;-><init>()V

    .line 652
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$8;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$8;->N:Lcom/amazon/identity/auth/device/ej;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h$8;->K:Landroid/os/Bundle;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/amazon/identity/auth/device/h;->b(Lcom/amazon/identity/auth/device/h;Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    .line 655
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/bl;->bs()Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExecutionException calling deregisterAllAccountsManually"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 666
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterruptedException calling deregisterAllAccountsManually."

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 662
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAP Error calling deregisterAllAccountsManually. Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$8;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
