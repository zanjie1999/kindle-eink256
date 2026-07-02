.class Lcom/amazon/identity/auth/device/gg$7;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/gg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/gg;->v(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic nQ:Ljava/util/Date;

.field final synthetic nR:Lcom/amazon/identity/auth/device/gg;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gg;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gg$7;->nR:Lcom/amazon/identity/auth/device/gg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gg$7;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gg$7;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/gg$7;->nQ:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/gp;)Z
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$7;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg$7;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg$7;->nQ:Ljava/util/Date;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/gp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public fl()V
    .locals 4

    .line 769
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gg$7;->nR:Lcom/amazon/identity/auth/device/gg;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/gg;->a(Lcom/amazon/identity/auth/device/gg;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gg$7;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gg$7;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gg$7;->nQ:Ljava/util/Date;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ExpireToken"

    return-object v0
.end method
