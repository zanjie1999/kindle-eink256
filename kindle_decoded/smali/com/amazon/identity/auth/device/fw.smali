.class public Lcom/amazon/identity/auth/device/fw;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fw"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fw;->mContext:Landroid/content/Context;

    const-string v0, "dcp_data_storage_factory"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 28
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fw;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method


# virtual methods
.method public eR()Lcom/amazon/identity/auth/device/br;
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/bv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fw;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/bv;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
