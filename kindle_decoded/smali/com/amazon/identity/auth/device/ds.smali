.class public Lcom/amazon/identity/auth/device/ds;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bu(Ljava/lang/String;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/mw;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dg()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bg(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dh()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public di()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hu;->al(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dj()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aW(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dk()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dl()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aY(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dm()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dn()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public do()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bd(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dp()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bf(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dq()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->be(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public dr()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public ds()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.fv"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/iq;->c(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->ar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dt()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.canary"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/iq;->c(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->ar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public du()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.fv"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/iq;->c(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hu;->as(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dv()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.canary"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/iq;->c(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v0}, Lcom/amazon/identity/auth/device/hu;->as(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dw()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hu;->ap(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dx()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.imp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dy()Z
    .locals 2

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/mw;->ba(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dz()Z
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->dy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ds;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v2, "PlatformWrapper"

    if-nez v0, :cond_0

    const-string v0, "Cannot get UserManager while the OS supports direct boot!"

    .line 162
    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 168
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "User is locked in direct boot mode: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method
