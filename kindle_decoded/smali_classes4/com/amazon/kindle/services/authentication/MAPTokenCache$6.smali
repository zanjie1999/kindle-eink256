.class Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;
.super Ljava/lang/Object;
.source "MAPTokenCache.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPTokenCache;->updateDeviceCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$originalAccountCache:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;",
            ">;)V"
        }
    .end annotation

    .line 551
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    .line 552
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ADP_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PRIVATE_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getPrivateKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XFSN_COOKIE:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getUserDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getWhispersendEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$originalAccountCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    sget-object v0, Lcom/amazon/kcp/application/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/application/models/IAsyncModel$State;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/application/models/IAsyncModel$State;)V

    .line 562
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 563
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;->val$account:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    return-void
.end method
