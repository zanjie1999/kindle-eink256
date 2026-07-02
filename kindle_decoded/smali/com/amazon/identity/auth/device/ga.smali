.class public Lcom/amazon/identity/auth/device/ga;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final aZ:Lcom/amazon/identity/auth/device/ds;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ga;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sso_platform"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ds;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ga;->aZ:Lcom/amazon/identity/auth/device/ds;

    return-void
.end method


# virtual methods
.method public fa()Lcom/amazon/identity/auth/device/fz;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ga;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/go;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ga;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/go;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/gh;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ga;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/gh;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
