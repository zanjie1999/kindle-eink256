.class Lcom/amazon/kindle/services/authentication/MAPTokenCache$7;
.super Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;
.source "MAPTokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/MAPTokenCache;->updateDeviceCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field final synthetic val$onComplete:Lcom/amazon/kindle/callback/ICallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 6

    .line 567
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$7;->this$0:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iput-object p7, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$7;->val$onComplete:Lcom/amazon/kindle/callback/ICallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 570
    invoke-super {p0}, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsRequest;->onRequestComplete()Z

    move-result v0

    .line 571
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache$7;->val$onComplete:Lcom/amazon/kindle/callback/ICallback;

    new-instance v2, Lcom/amazon/kindle/callback/OperationResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    return v0
.end method
