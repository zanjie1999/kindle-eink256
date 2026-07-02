.class Lcom/amazon/identity/auth/device/hk$1;
.super Lcom/amazon/identity/auth/device/fs;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hk;-><init>(Lcom/amazon/identity/auth/device/ed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aM:Lcom/amazon/identity/auth/device/ed;

.field final synthetic qm:Lcom/amazon/identity/auth/device/hk;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hk;Lcom/amazon/identity/auth/device/ed;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hk$1;->qm:Lcom/amazon/identity/auth/device/hk;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hk$1;->aM:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/fs;-><init>()V

    return-void
.end method


# virtual methods
.method public cp()[B
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk$1;->aM:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->A(Landroid/content/Context;)Lcom/amazon/identity/auth/device/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/di;->cO()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/identity/auth/device/hk;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not generate a MAP only encryption key. Aborting."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
