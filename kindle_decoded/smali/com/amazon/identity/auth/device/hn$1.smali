.class Lcom/amazon/identity/auth/device/hn$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hn;->a(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/hn$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic oV:Landroid/accounts/Account;

.field final synthetic qw:Ljava/lang/String;

.field final synthetic qx:Landroid/os/Bundle;

.field final synthetic qy:Lcom/amazon/identity/auth/device/hn$b;

.field final synthetic qz:Lcom/amazon/identity/auth/device/hn;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hn;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/hn$b;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hn$1;->qz:Lcom/amazon/identity/auth/device/hn;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hn$1;->oV:Landroid/accounts/Account;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hn$1;->qw:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/hn$1;->qx:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/hn$1;->qy:Lcom/amazon/identity/auth/device/hn$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/amazon/identity/auth/device/hn;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "AccountManagerWrapper"

    const-string v1, "addAccountExplicitly"

    .line 162
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hn$1;->qz:Lcom/amazon/identity/auth/device/hn;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hn;->a(Lcom/amazon/identity/auth/device/hn;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hn$1;->oV:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/hn$1;->qw:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/hn$1;->qx:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 164
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    if-eqz v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$1;->qy:Lcom/amazon/identity/auth/device/hn$b;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/hn$b;->gr()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hn$1;->qy:Lcom/amazon/identity/auth/device/hn$b;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/hn$b;->gs()V

    .line 174
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
