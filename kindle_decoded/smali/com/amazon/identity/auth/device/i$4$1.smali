.class Lcom/amazon/identity/auth/device/i$4$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/i$4;->a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aE:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field final synthetic aF:Lcom/amazon/identity/auth/device/i$4;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/i$4;Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
    .locals 0

    .line 2639
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$4$1;->aF:Lcom/amazon/identity/auth/device/i$4;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/i$4$1;->aE:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 2655
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got error while deregistering device in response to error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/i$4$1;->aE:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    const/4 v1, -0x1

    .line 2657
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.amazon.dcp.sso.ErrorMessage"

    .line 2658
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2659
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error Code: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error message: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 2643
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2645
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/i$4$1;->onError(Landroid/os/Bundle;)V

    return-void

    .line 2649
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/i;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished deregistering device in response to error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$4$1;->aE:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
