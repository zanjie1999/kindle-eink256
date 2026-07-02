.class Lcom/amazon/identity/auth/device/hb$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hb;->a(Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic pH:Lcom/amazon/identity/auth/device/hb;

.field final synthetic pI:Landroid/accounts/AccountManagerCallback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hb;Landroid/accounts/AccountManagerCallback;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb$2;->pH:Lcom/amazon/identity/auth/device/hb;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hb$2;->pI:Landroid/accounts/AccountManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 476
    invoke-static {}, Lcom/amazon/identity/auth/device/hb;->B()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/hb$2$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/identity/auth/device/hb$2$1;-><init>(Lcom/amazon/identity/auth/device/hb$2;Landroid/accounts/AccountManagerFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
