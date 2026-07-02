.class public Lcom/amazon/identity/auth/device/db;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/kk;


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field final iH:Lcom/amazon/identity/auth/device/jt;

.field private final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/kj;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/identity/auth/device/db;->mContext:Landroid/content/Context;

    .line 32
    iput-object p5, p0, Lcom/amazon/identity/auth/device/db;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/db;->mHandler:Landroid/os/Handler;

    .line 44
    :goto_0
    new-instance p1, Lcom/amazon/identity/auth/device/jt;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/db;->mContext:Landroid/content/Context;

    .line 1061
    new-instance v3, Lcom/amazon/identity/auth/device/db$1;

    invoke-direct {v3, p0, p3}, Lcom/amazon/identity/auth/device/db$1;-><init>(Lcom/amazon/identity/auth/device/db;Lcom/amazon/identity/auth/device/kj;)V

    .line 47
    iget-object v5, p0, Lcom/amazon/identity/auth/device/db;->bO:Lcom/amazon/identity/auth/device/ej;

    move-object v0, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/jt;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/kj;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/db;->iH:Lcom/amazon/identity/auth/device/jt;

    return-void
.end method


# virtual methods
.method public cC()V
    .locals 1

    .line 135
    new-instance v0, Lcom/amazon/identity/auth/device/db$2;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/db$2;-><init>(Lcom/amazon/identity/auth/device/db;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method
