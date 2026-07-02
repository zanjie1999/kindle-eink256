.class Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask$1;
.super Ljava/lang/Object;
.source "CustomerAttributeStoreTokenTask.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "error_code_key"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 37
    invoke-static {}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomerAttributeStore with tokenKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;

    .line 38
    invoke-static {v1}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->access$200(Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed with error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask$1;->this$0:Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;

    invoke-static {v0, p1}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;->access$000(Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;Landroid/os/Bundle;)V

    return-void
.end method
