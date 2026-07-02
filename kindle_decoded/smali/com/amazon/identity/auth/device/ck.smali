.class public Lcom/amazon/identity/auth/device/ck;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ci;


# instance fields
.field private final ii:Lcom/amazon/identity/auth/device/ci;

.field private ij:Lcom/amazon/identity/auth/device/cf;

.field private ik:Lcom/amazon/identity/auth/device/cf;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ci;Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/identity/auth/device/ck;->ij:Lcom/amazon/identity/auth/device/cf;

    .line 20
    iput-object v0, p0, Lcom/amazon/identity/auth/device/ck;->ik:Lcom/amazon/identity/auth/device/cf;

    .line 25
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ck;->ii:Lcom/amazon/identity/auth/device/ci;

    .line 27
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ib;->aB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 30
    new-instance v1, Lcom/amazon/identity/auth/device/cf;

    invoke-direct {v1, p1, v0}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/ck;->ij:Lcom/amazon/identity/auth/device/cf;

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/iy;->aI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    new-instance p2, Lcom/amazon/identity/auth/device/cf;

    invoke-direct {p2, p1, v0}, Lcom/amazon/identity/auth/device/cf;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ck;->ik:Lcom/amazon/identity/auth/device/cf;

    :cond_1
    return-void
.end method


# virtual methods
.method public aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/DeviceDataStoreException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ck;->ij:Lcom/amazon/identity/auth/device/cf;

    if-eqz v0, :cond_0

    const-string v0, "DeviceType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ck;->ij:Lcom/amazon/identity/auth/device/cf;

    return-object p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ck;->ik:Lcom/amazon/identity/auth/device/cf;

    if-eqz v0, :cond_1

    const-string v0, "Device Serial Number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ck;->ik:Lcom/amazon/identity/auth/device/cf;

    return-object p1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ck;->ii:Lcom/amazon/identity/auth/device/ci;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/ci;->aP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/cf;

    move-result-object p1

    return-object p1
.end method
