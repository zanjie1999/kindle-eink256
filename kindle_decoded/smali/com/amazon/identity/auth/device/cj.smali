.class public final Lcom/amazon/identity/auth/device/cj;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static volatile if:Lcom/amazon/identity/auth/device/cj;


# instance fields
.field private ig:Lcom/amazon/identity/auth/device/ea;

.field private ih:Lcom/amazon/identity/auth/device/ci;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/amazon/identity/auth/device/ce;->hU:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mw;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/device/cx;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/cx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cj;->ig:Lcom/amazon/identity/auth/device/ea;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/ck;

    new-instance v1, Lcom/amazon/identity/auth/device/ce;

    .line 33
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/ce;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/ck;-><init>(Lcom/amazon/identity/auth/device/ci;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cj;->ih:Lcom/amazon/identity/auth/device/ci;

    return-void

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->bi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/cc;->a(Landroid/content/Context;Z)Lcom/amazon/identity/auth/device/cc;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/cc;->bI()Lcom/amazon/identity/auth/device/ea;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cj;->ig:Lcom/amazon/identity/auth/device/ea;

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cj;->ih:Lcom/amazon/identity/auth/device/ci;

    return-void

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->bj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/cd$a;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/cd$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cj;->ig:Lcom/amazon/identity/auth/device/ea;

    .line 51
    invoke-static {p1}, Lcom/amazon/identity/auth/device/cg;->u(Landroid/content/Context;)Lcom/amazon/identity/auth/device/cg;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cj;->ih:Lcom/amazon/identity/auth/device/ci;

    return-void

    .line 56
    :cond_2
    new-instance v0, Lcom/amazon/identity/auth/device/cx;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/cx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cj;->ig:Lcom/amazon/identity/auth/device/ea;

    .line 57
    invoke-static {p1}, Lcom/amazon/identity/auth/device/cg;->u(Landroid/content/Context;)Lcom/amazon/identity/auth/device/cg;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cj;->ih:Lcom/amazon/identity/auth/device/ci;

    return-void
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/amazon/identity/auth/device/cj;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/cj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/cj;->if:Lcom/amazon/identity/auth/device/cj;

    return-void
.end method

.method static v(Landroid/content/Context;)Lcom/amazon/identity/auth/device/cj;
    .locals 2

    .line 72
    sget-object v0, Lcom/amazon/identity/auth/device/cj;->if:Lcom/amazon/identity/auth/device/cj;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/amazon/identity/auth/device/cj;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/cj;->if:Lcom/amazon/identity/auth/device/cj;

    if-nez v1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cj;->generateNewInstance(Landroid/content/Context;)V

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 82
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/cj;->if:Lcom/amazon/identity/auth/device/cj;

    return-object p0
.end method

.method public static w(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ci;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cj;->v(Landroid/content/Context;)Lcom/amazon/identity/auth/device/cj;

    move-result-object p0

    iget-object p0, p0, Lcom/amazon/identity/auth/device/cj;->ih:Lcom/amazon/identity/auth/device/ci;

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ea;
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/amazon/identity/auth/device/cj;->v(Landroid/content/Context;)Lcom/amazon/identity/auth/device/cj;

    move-result-object p0

    iget-object p0, p0, Lcom/amazon/identity/auth/device/cj;->ig:Lcom/amazon/identity/auth/device/ea;

    return-object p0
.end method
