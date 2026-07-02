.class public Lcom/amazon/identity/auth/device/cz;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cz;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dc;
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/dc;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/identity/auth/device/dc;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0
.end method

.method public b(Lcom/amazon/identity/auth/device/br;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/km;
    .locals 3

    .line 53
    new-instance v0, Lcom/amazon/identity/auth/device/jw;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cz;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/amazon/identity/auth/device/lh;

    invoke-direct {v2, p1}, Lcom/amazon/identity/auth/device/lh;-><init>(Lcom/amazon/identity/auth/device/kn;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/identity/auth/device/jw;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/dc;
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/dc;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/identity/auth/device/dc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/km;
    .locals 4

    .line 45
    new-instance v0, Lcom/amazon/identity/auth/device/jw;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/cz;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/amazon/identity/auth/device/lh;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/cz;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/bs;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/br;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/amazon/identity/auth/device/lh;-><init>(Lcom/amazon/identity/auth/device/kn;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/identity/auth/device/jw;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V

    return-object v0
.end method
