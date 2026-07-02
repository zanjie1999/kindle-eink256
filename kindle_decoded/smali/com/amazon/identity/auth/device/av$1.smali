.class Lcom/amazon/identity/auth/device/av$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/av;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic dL:Lcom/amazon/identity/auth/device/av;

.field final synthetic ds:Ljava/util/EnumSet;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/av;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/av$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/av$1;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/av$1;->ds:Ljava/util/EnumSet;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/av$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/av$1;->val$key:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->br(Ljava/lang/String;)V

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/ed;

    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eD()V

    .line 169
    :cond_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->a(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/av$1;->H:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/identity/auth/device/av$1;->ds:Ljava/util/EnumSet;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/av$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->b(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/av$1;->H:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/av$1;->ds:Ljava/util/EnumSet;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/av$1;->N:Lcom/amazon/identity/auth/device/ej;

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->c(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    invoke-static {}, Lcom/amazon/identity/auth/device/av;->ao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_XMAIN_AND_XACB_COOKIES is deprecated! Please use TokenManagement.getCookies API to get auth cookies for your use case."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gD()Lcom/amazon/identity/auth/device/ij;

    move-result-object v6

    .line 183
    iget-object v3, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/av$1;->H:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/av$1;->ds:Ljava/util/EnumSet;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/av$1;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static/range {v3 .. v8}, Lcom/amazon/identity/auth/device/av;->b(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {v0}, Lcom/amazon/identity/auth/device/au;->d(Lcom/amazon/identity/auth/device/ij;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/av$1;->H:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 196
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->getAccountRecoverContextBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/av$1;->val$key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_5

    .line 200
    invoke-static {}, Lcom/amazon/identity/auth/device/av;->ao()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Database corrupted, need recover account."

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v1}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/amazon/identity/auth/device/av$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :goto_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/av$1;->dL:Lcom/amazon/identity/auth/device/av;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/av;->a(Lcom/amazon/identity/auth/device/av;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    .line 209
    throw v1
.end method
