.class public Lcom/amazon/identity/auth/device/kb;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private mValue:Ljava/lang/String;

.field private rU:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dK(Ljava/lang/String;)Z
    .locals 2

    .line 1063
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kb;->rU:Ljava/lang/String;

    return v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kb;->rU:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kb;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 2

    .line 1068
    invoke-static {p1}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kb;->mValue:Ljava/lang/String;

    return v1
.end method
