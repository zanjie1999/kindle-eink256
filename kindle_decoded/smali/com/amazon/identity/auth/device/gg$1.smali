.class Lcom/amazon/identity/auth/device/gg$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/gg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gg;->eS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nP:Ljava/util/Collection;

.field final synthetic nQ:Ljava/util/Date;

.field final synthetic nR:Lcom/amazon/identity/auth/device/gg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gg;Ljava/util/Collection;Ljava/util/Date;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg$1;->nR:Lcom/amazon/identity/auth/device/gg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gg$1;->nP:Ljava/util/Collection;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gg$1;->nQ:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/gp;)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$1;->nP:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/gp;->d(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public fl()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$1;->nR:Lcom/amazon/identity/auth/device/gg;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg$1;->nQ:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->f(Ljava/util/Date;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SetBulkData"

    return-object v0
.end method
