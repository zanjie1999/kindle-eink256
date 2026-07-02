.class Lcom/amazon/identity/auth/device/db$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/kj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iI:Lcom/amazon/identity/auth/device/kj;

.field final synthetic iJ:Lcom/amazon/identity/auth/device/db;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/db;Lcom/amazon/identity/auth/device/kj;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/identity/auth/device/db$1;->iJ:Lcom/amazon/identity/auth/device/db;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/db$1;->iI:Lcom/amazon/identity/auth/device/kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/mb;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1;->iJ:Lcom/amazon/identity/auth/device/db;

    .line 2017
    iget-object v0, v0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v1, Lcom/amazon/identity/auth/device/db$1$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/identity/auth/device/db$1$2;-><init>(Lcom/amazon/identity/auth/device/db$1;Lcom/amazon/identity/auth/device/mb;)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/id;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([BI)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1;->iJ:Lcom/amazon/identity/auth/device/db;

    .line 1017
    iget-object v0, v0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v1, Lcom/amazon/identity/auth/device/db$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/db$1$1;-><init>(Lcom/amazon/identity/auth/device/db$1;[BI)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/id;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cD()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1;->iJ:Lcom/amazon/identity/auth/device/db;

    .line 4017
    iget-object v0, v0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v1, Lcom/amazon/identity/auth/device/db$1$4;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/db$1$4;-><init>(Lcom/amazon/identity/auth/device/db$1;)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/id;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cE()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1;->iJ:Lcom/amazon/identity/auth/device/db;

    .line 5017
    iget-object v0, v0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v1, Lcom/amazon/identity/auth/device/db$1$5;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/db$1$5;-><init>(Lcom/amazon/identity/auth/device/db$1;)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/id;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNetworkError()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/db$1;->iJ:Lcom/amazon/identity/auth/device/db;

    .line 3017
    iget-object v0, v0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v1, Lcom/amazon/identity/auth/device/db$1$3;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/db$1$3;-><init>(Lcom/amazon/identity/auth/device/db$1;)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/id;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
