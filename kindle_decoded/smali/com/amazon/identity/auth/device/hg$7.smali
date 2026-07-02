.class Lcom/amazon/identity/auth/device/hg$7;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic oZ:Lcom/amazon/identity/auth/device/ij;

.field final synthetic qe:Lcom/amazon/identity/auth/device/hg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hg;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hg$7;->qe:Lcom/amazon/identity/auth/device/hg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hg$7;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/hg$7;->oZ:Lcom/amazon/identity/auth/device/ij;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/hg$7;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1109
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hg$7;->qe:Lcom/amazon/identity/auth/device/hg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/hg$7;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/hg$7;->oZ:Lcom/amazon/identity/auth/device/ij;

    .line 1110
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/amazon/identity/auth/device/hg$7;->qe:Lcom/amazon/identity/auth/device/hg;

    .line 1112
    invoke-static {v4}, Lcom/amazon/identity/auth/device/hg;->a(Lcom/amazon/identity/auth/device/hg;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/identity/auth/device/hg$7;->N:Lcom/amazon/identity/auth/device/ej;

    .line 1109
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/hg;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method
