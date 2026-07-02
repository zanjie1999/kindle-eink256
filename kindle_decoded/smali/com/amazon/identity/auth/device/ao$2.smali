.class Lcom/amazon/identity/auth/device/ao$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ao;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic dt:Lcom/amazon/identity/auth/device/ao;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ao$2;->dt:Lcom/amazon/identity/auth/device/ao;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ao$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ao$2;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/ao$2;->H:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/ao$2;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 212
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$2;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ao$2;->val$value:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$2;->dt:Lcom/amazon/identity/auth/device/ao;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ao$2;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ao$2;->val$key:Ljava/lang/String;

    const-string/jumbo v1, "setAttribute"

    const/4 v5, 0x0

    .line 216
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ao;->a(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$2;->W:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Cannot construct command"

    invoke-static {v0, v2, v3, v1, v3}, Lcom/amazon/identity/auth/device/am;->c(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ao$2;->dt:Lcom/amazon/identity/auth/device/ao;

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/ao;->a(Lcom/amazon/identity/auth/device/ao;Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-static {}, Lcom/amazon/identity/auth/device/ao;->ao()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to setAttribute in central customer attribute store"

    invoke-static {v3, v4, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v6, v2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ao$2;->val$key:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Unable to set the attribute for key: %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 242
    iget-object v5, p0, Lcom/amazon/identity/auth/device/ao$2;->W:Lcom/amazon/identity/auth/device/bl;

    const/4 v7, 0x5

    sget-object v9, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->SET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    move-object v8, v10

    invoke-static/range {v5 .. v10}, Lcom/amazon/identity/auth/device/ao;->a(Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;ILjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void
.end method
