.class public abstract Lcom/amazon/identity/auth/device/ca;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final ar:Lcom/amazon/identity/auth/device/ea;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ca;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_device_info"

    .line 24
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ca;->ar:Lcom/amazon/identity/auth/device/ea;

    return-void
.end method


# virtual methods
.method public bB()Lcom/amazon/identity/auth/device/ed;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ca;->o:Lcom/amazon/identity/auth/device/ed;

    return-object v0
.end method

.method protected bC()Lcom/amazon/identity/auth/device/ea;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ca;->ar:Lcom/amazon/identity/auth/device/ea;

    return-object v0
.end method

.method public abstract bn()Ljava/lang/String;
.end method
