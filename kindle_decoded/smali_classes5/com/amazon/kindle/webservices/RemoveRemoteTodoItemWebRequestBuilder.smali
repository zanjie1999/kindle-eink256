.class public Lcom/amazon/kindle/webservices/RemoveRemoteTodoItemWebRequestBuilder;
.super Ljava/lang/Object;
.source "RemoveRemoteTodoItemWebRequestBuilder.java"


# static fields
.field private static final NUM_RETRIES:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/webservices/RemoveRemoteTodoItemWebRequestBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequest(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Ljava/lang/String;Z)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getRemoveTodoURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p3

    .line 29
    invoke-virtual {p3}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?type="

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&action="

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&complete_status="

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "&failure_code="

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_1
    new-instance p0, Lcom/amazon/kindle/webservices/RemoveRemoteTodoItemWebRequestBuilder$1;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/RemoveRemoteTodoItemWebRequestBuilder$1;-><init>()V

    .line 53
    new-instance p1, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 54
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-interface {p1, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 56
    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/webservices/XmlResponseHandler;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    .line 57
    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p0

    return-object p0
.end method
