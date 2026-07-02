.class Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;
.super Ljava/lang/Object;
.source "MAPCustomerAttributeRepositoryImpl.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

.field final synthetic val$callback:Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;

.field final synthetic val$directId:Ljava/lang/String;

.field final synthetic val$keyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    iput-object p2, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$callback:Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;

    iput-object p3, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$keyName:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$directId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    const-string v0, "error_code_key"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error_message_key"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    invoke-static {v1}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->access$000(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;)Lorg/slf4j/Logger;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v3, "Unable to retrieve attribute {} for directId {}.  Error code {} with message {}"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$keyName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$directId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    aput-object p1, v4, v0

    .line 105
    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    invoke-static {v0}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->access$000(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$callback:Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;

    invoke-interface {p1}, Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;->onError()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    const-string v0, "value_key"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaut_value_key"

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->val$callback:Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;

    invoke-interface {v2, v0, v1}, Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    invoke-virtual {p0, p1}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$2;->onError(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
