.class Lcom/amazon/identity/auth/device/hb$2$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hb$2;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pJ:Landroid/accounts/AccountManagerFuture;

.field final synthetic pK:Lcom/amazon/identity/auth/device/hb$2;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hb$2;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb$2$1;->pK:Lcom/amazon/identity/auth/device/hb$2;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hb$2$1;->pJ:Landroid/accounts/AccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$2$1;->pK:Lcom/amazon/identity/auth/device/hb$2;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/hb$2;->pI:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hb$2$1;->pJ:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
