.class Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;
.super Ljava/lang/Object;
.source "TokenManagementTokenTask.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;

    invoke-static {v0, p1}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->access$200(Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenManagement with tokenKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;

    .line 38
    invoke-static {v1}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->access$100(Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;->getValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
