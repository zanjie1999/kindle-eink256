.class public Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;
.super Ljava/lang/Object;
.source "RevokeOwnershipTaskCreator.java"

# interfaces
.implements Lcom/amazon/kcp/revoke/IRevokeOwnershipTaskCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_DELAY:I = 0x1b58


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;

    .line 30
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createRevokeOwnershipRequest(Ljava/lang/String;)V
    .locals 3

    .line 37
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getRevokeOwnershipURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?asin="

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;-><init>(Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1b58

    .line 47
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    const/4 v0, 0x1

    .line 48
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 49
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/webservices/BaseResponseHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    .line 50
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
