.class Lcom/amazon/identity/auth/device/ao$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic dr:Landroid/os/Bundle;

.field final synthetic ds:Ljava/util/EnumSet;

.field final synthetic dt:Lcom/amazon/identity/auth/device/ao;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ao$1;->dt:Lcom/amazon/identity/auth/device/ao;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ao$1;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ao$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/ao$1;->dr:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/ao$1;->ds:Ljava/util/EnumSet;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/ao$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$1;->dt:Lcom/amazon/identity/auth/device/ao;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ao$1;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ao$1;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/ao$1;->dr:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/ao$1;->ds:Ljava/util/EnumSet;

    const-string v1, "getAttribute"

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ao;->a(Lcom/amazon/identity/auth/device/ao;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/EnumSet;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$1;->W:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Cannot construct command"

    invoke-static {v0, v2, v3, v1, v3}, Lcom/amazon/identity/auth/device/am;->c(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ao$1;->dt:Lcom/amazon/identity/auth/device/ao;

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/ao;->a(Lcom/amazon/identity/auth/device/ao;Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "Key %s not supported"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ao$1;->val$key:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 131
    iget-object v3, p0, Lcom/amazon/identity/auth/device/ao$1;->W:Lcom/amazon/identity/auth/device/bl;

    const/4 v5, 0x2

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    move-object v6, v8

    invoke-static/range {v3 .. v8}, Lcom/amazon/identity/auth/device/ao;->a(Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;ILjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call getAttribute"

    .line 142
    invoke-static {}, Lcom/amazon/identity/auth/device/ao;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ao$1;->W:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->GET_ATTRIBUTE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v3, v1}, Lcom/amazon/identity/auth/device/am;->c(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
