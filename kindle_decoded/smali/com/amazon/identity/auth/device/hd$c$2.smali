.class Lcom/amazon/identity/auth/device/hd$c$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hd$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pW:Lcom/amazon/identity/auth/device/hd$c;

.field final synthetic pX:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hd$c;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hd$c$2;->pW:Lcom/amazon/identity/auth/device/hd$c;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hd$c$2;->pX:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$2;->pW:Lcom/amazon/identity/auth/device/hd$c;

    .line 1071
    iget-object v0, v0, Lcom/amazon/identity/auth/device/hd$c;->pV:Lcom/amazon/identity/auth/device/hd$d;

    .line 116
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hd$c$2;->pX:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/hd$d;->f(Lcom/amazon/identity/auth/device/api/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TokenJobQueue"

    const-string v2, "MAP didn\'t handle exception correctly. This should never happen!"

    .line 122
    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAPTokenJobQueueUnhandledException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$2;->pX:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hd$c$2;->pW:Lcom/amazon/identity/auth/device/hd$c;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hd$c;->gj()V

    return-void
.end method
