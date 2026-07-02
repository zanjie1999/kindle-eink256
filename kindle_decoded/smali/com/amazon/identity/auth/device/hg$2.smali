.class Lcom/amazon/identity/auth/device/hg$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/hd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hg;
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

.field final synthetic qf:Ljava/lang/String;

.field final synthetic qg:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hg;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hg$2;->qe:Lcom/amazon/identity/auth/device/hg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hg$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/hg$2;->fg:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/hg$2;->fl:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/hg$2;->qf:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/hg$2;->qg:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/hg$2;->val$options:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/amazon/identity/auth/device/hg$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg$2;->qe:Lcom/amazon/identity/auth/device/hg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg$2;->fg:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/hg$2;->fl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/hg$2;->qf:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/hg$2;->qg:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/hg$2;->val$options:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/hg$2;->N:Lcom/amazon/identity/auth/device/ej;

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/hg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method

.method public gk()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetActorToken:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg$2;->qf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
