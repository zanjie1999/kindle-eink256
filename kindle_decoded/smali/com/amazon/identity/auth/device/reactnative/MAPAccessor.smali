.class public Lcom/amazon/identity/auth/device/reactnative/MAPAccessor;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final bH:Lcom/amazon/identity/auth/device/ac;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/identity/auth/device/reactnative/MAPAccessor;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/amazon/identity/auth/device/ac;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/reactnative/MAPAccessor;->bH:Lcom/amazon/identity/auth/device/ac;

    return-void
.end method


# virtual methods
.method public getAuthPortalHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/reactnative/MAPAccessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    .line 56
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ho;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPandaHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/reactnative/MAPAccessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    .line 45
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasPrimaryRole(Ljava/lang/String;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/identity/auth/device/reactnative/MAPAccessor;->bH:Lcom/amazon/identity/auth/device/ac;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ac;->hasPrimaryRole(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RNAndroid:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
