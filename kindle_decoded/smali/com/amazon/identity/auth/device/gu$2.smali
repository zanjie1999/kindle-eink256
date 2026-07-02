.class Lcom/amazon/identity/auth/device/gu$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/hb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic oW:Lcom/amazon/identity/auth/device/gu;

.field final synthetic oX:Lcom/amazon/identity/auth/device/hb;

.field final synthetic oY:Ljava/lang/String;

.field final synthetic oZ:Lcom/amazon/identity/auth/device/ij;

.field final synthetic pa:Z


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/gu;Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Z)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gu$2;->oW:Lcom/amazon/identity/auth/device/gu;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gu$2;->oX:Lcom/amazon/identity/auth/device/hb;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/gu$2;->oY:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/gu$2;->oZ:Lcom/amazon/identity/auth/device/ij;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/gu$2;->H:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/gu$2;->W:Lcom/amazon/identity/auth/device/bl;

    iput-boolean p7, p0, Lcom/amazon/identity/auth/device/gu$2;->pa:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/MAPError;Landroid/os/Bundle;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v0

    const-string v1, "com.amazon.map.error.errorCode"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.map.error.errorMessage"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.map.error.errorType"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gu$2;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu$2;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu$2;->oX:Lcom/amazon/identity/auth/device/hb;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gu$2;->oY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/hb;->bY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/amazon/identity/auth/device/gi;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gu$2;->oW:Lcom/amazon/identity/auth/device/gu;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/gu;->a(Lcom/amazon/identity/auth/device/gu;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;)V

    .line 228
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gu$2;->oZ:Lcom/amazon/identity/auth/device/ij;

    .line 229
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gu$2;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    iget-object v2, p0, Lcom/amazon/identity/auth/device/gu$2;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/hc;->b(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    .line 237
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/gu$2;->pa:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gu$2;->H:Ljava/lang/String;

    const-string v2, "force_refresh_dms_to_oauth_done_once"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fixCentralTokenOnGrover/Canary"

    .line 242
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
