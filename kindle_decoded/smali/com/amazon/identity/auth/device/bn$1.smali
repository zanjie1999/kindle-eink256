.class Lcom/amazon/identity/auth/device/bn$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/bn;->d(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic hj:Ljava/lang/String;

.field final synthetic hk:Landroid/os/Bundle;

.field final synthetic hl:Lcom/amazon/identity/auth/device/bn;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bn$1;->hl:Lcom/amazon/identity/auth/device/bn;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/bn$1;->hj:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/bn$1;->hk:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/bn$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 14

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$1;->hl:Lcom/amazon/identity/auth/device/bn;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bn;->q(Landroid/content/Context;)Lcom/amazon/identity/auth/device/bn$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    new-instance v5, Lcom/amazon/identity/auth/device/gm;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/bn$1;->hl:Lcom/amazon/identity/auth/device/bn;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cbl_storage"

    invoke-direct {v5, v0, v2}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bn$1;->hl:Lcom/amazon/identity/auth/device/bn;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/bn$1;->hj:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/bn$1;->hk:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/bn$1;->N:Lcom/amazon/identity/auth/device/ej;

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/bn;->a(Lcom/amazon/identity/auth/device/bn;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/gm;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-object v1

    .line 104
    :cond_0
    iget-object v8, v0, Lcom/amazon/identity/auth/device/bn$a;->hq:Ljava/lang/String;

    iget-wide v10, v0, Lcom/amazon/identity/auth/device/bn$a;->hs:J

    iget-wide v2, v0, Lcom/amazon/identity/auth/device/bn$a;->ht:J

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "link_code"

    move-object v13, p1

    .line 104
    invoke-static/range {v8 .. v13}, Lcom/amazon/identity/auth/device/bn;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v1
.end method
