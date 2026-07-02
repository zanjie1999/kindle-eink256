.class public Lcom/amazon/identity/auth/device/gw;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private gJ:Lcom/amazon/identity/auth/device/he;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gw;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized bk()Lcom/amazon/identity/auth/device/he;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gw;->gJ:Lcom/amazon/identity/auth/device/he;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hf;->af(Landroid/content/Context;)Lcom/amazon/identity/auth/device/he;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gw;->gJ:Lcom/amazon/identity/auth/device/he;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gw;->gJ:Lcom/amazon/identity/auth/device/he;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Lcom/amazon/identity/auth/device/gv;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:UpgradeToken"

    .line 62
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gw;->mContext:Landroid/content/Context;

    const-string v1, "Time"

    invoke-virtual {v7, v0, v1}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 64
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/gw;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v1

    .line 67
    invoke-static {v7, v0, p4, p5}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 64
    invoke-interface/range {v1 .. v7}, Lcom/amazon/identity/auth/device/he;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method
