.class Lcom/amazon/identity/auth/device/gg$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/gg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gg;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Lcom/amazon/identity/auth/device/gc$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nQ:Ljava/util/Date;

.field final synthetic nR:Lcom/amazon/identity/auth/device/gg;

.field final synthetic nS:Ljava/lang/String;

.field final synthetic nT:Lcom/amazon/identity/auth/device/fv;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg$2;->nR:Lcom/amazon/identity/auth/device/gg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gg$2;->nS:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gg$2;->nT:Lcom/amazon/identity/auth/device/fv;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/gg$2;->nQ:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/gp;)Z
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$2;->nS:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg$2;->nT:Lcom/amazon/identity/auth/device/fv;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg$2;->nQ:Ljava/util/Date;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/gp;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public fl()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$2;->nR:Lcom/amazon/identity/auth/device/gg;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg$2;->nT:Lcom/amazon/identity/auth/device/fv;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg$2;->nQ:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->a(Lcom/amazon/identity/auth/device/fv;Ljava/util/Date;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AddAccount"

    return-object v0
.end method
