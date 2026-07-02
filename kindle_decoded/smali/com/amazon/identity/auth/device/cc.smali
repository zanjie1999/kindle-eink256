.class public final Lcom/amazon/identity/auth/device/cc;
.super Lcom/amazon/identity/auth/device/cg;
.source "DCP"


# static fields
.field private static hP:Lcom/amazon/identity/auth/device/cc;


# instance fields
.field private final hQ:Z

.field private final hR:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

.field private hS:Lcom/amazon/identity/auth/device/ce;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/cg;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/cc;->hQ:Z

    .line 33
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cc;->mContext:Landroid/content/Context;

    .line 34
    new-instance p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/cc;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cc;->hR:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/amazon/identity/auth/device/cc;
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/cc;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/cc;->hP:Lcom/amazon/identity/auth/device/cc;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/cc;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 65
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/cc;->hP:Lcom/amazon/identity/auth/device/cc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/ce;->hU:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mw;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    .line 85
    :goto_0
    new-instance v0, Lcom/amazon/identity/auth/device/cc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/cc;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/amazon/identity/auth/device/cc;->hP:Lcom/amazon/identity/auth/device/cc;

    return-void
.end method

.method private declared-synchronized bH()Lcom/amazon/identity/auth/device/ce;
    .locals 2

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cc;->hS:Lcom/amazon/identity/auth/device/ce;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/amazon/identity/auth/device/ce;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ce;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cc;->hS:Lcom/amazon/identity/auth/device/ce;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cc;->hS:Lcom/amazon/identity/auth/device/ce;
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
.method public aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 98
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/cc;->hQ:Z

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Default COR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default PFM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/cc;->bH()Lcom/amazon/identity/auth/device/ce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ce;->aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/cg;->aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1
.end method

.method public bI()Lcom/amazon/identity/auth/device/ea;
    .locals 3

    .line 120
    new-instance v0, Lcom/amazon/identity/auth/device/cs;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/cc;->hR:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/cs;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MultipleAccountManager;)V

    return-object v0
.end method
