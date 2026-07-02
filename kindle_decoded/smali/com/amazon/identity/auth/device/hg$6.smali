.class Lcom/amazon/identity/auth/device/hg$6;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/hd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hg;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic fg:Ljava/lang/String;

.field final synthetic fl:Ljava/lang/String;

.field final synthetic qe:Lcom/amazon/identity/auth/device/hg;

.field final synthetic qi:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hg$6;->qe:Lcom/amazon/identity/auth/device/hg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hg$6;->fg:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/hg$6;->fl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/hg$6;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/hg$6;->qi:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/hg$6;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 8

    .line 612
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg$6;->qe:Lcom/amazon/identity/auth/device/hg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg$6;->fg:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg$6;->fl:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/hg$6;->val$options:Landroid/os/Bundle;

    const-string v4, "key_token_type"

    .line 615
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/hg$6;->qi:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/hg$6;->N:Lcom/amazon/identity/auth/device/ej;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/hg$6;->val$options:Landroid/os/Bundle;

    move-object v5, p1

    .line 612
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/identity/auth/device/hg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V

    return-void
.end method

.method public gk()Ljava/lang/String;
    .locals 1

    const-string v0, "UpgradeToken"

    return-object v0
.end method

.method public gl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
