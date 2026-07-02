.class public Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;
.super Ljava/lang/Object;
.source "PostMessagesRequest.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private DEVICE_URL:Ljava/lang/String;

.field private HOST_URL:Ljava/lang/String;

.field private PROTOCOL_URL:Ljava/lang/String;

.field private final mMessageBatchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/messaging/odot/webservices/transportdto/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/messaging/odot/OdotClient$Mode;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    .line 31
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient$Mode;->PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "protocol.device-messaging-na.amazon.com"

    .line 32
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->PROTOCOL_URL:Ljava/lang/String;

    const-string p1, "host.device-messaging-na.amazon.com"

    .line 33
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->HOST_URL:Ljava/lang/String;

    const-string p1, "device-messaging-na.amazon.com"

    .line 34
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->DEVICE_URL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "protocol.device-messaging-na-preprod.amazon.com"

    .line 36
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->PROTOCOL_URL:Ljava/lang/String;

    const-string p1, "host.device-messaging-na-preprod.amazon.com"

    .line 37
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->HOST_URL:Ljava/lang/String;

    const-string p1, "device-messaging-na-preprod.amazon.com"

    .line 38
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->DEVICE_URL:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private createJSONBody()Lorg/json/simple/JSONObject;
    .locals 7

    .line 108
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 112
    new-instance v4, Lorg/json/simple/JSONObject;

    invoke-direct {v4}, Lorg/json/simple/JSONObject;-><init>()V

    .line 113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "messages"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "messageBatches"

    .line 119
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addMessage(Lcom/amazon/messaging/odot/webservices/transportdto/Message;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 59
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_2
    :goto_1
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->TAG:Ljava/lang/String;

    const-string v0, "PostMessagesRequest::addMessage:  Cannot add message, as it was not valid."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getWebRequest()Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->TAG:Ljava/lang/String;

    const-string v1, "PostMessagesRequest::getWebRequest:  Cannot construct a WebRequest because addMessage was not [successfully] called."

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    if-eqz v0, :cond_1

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    .line 87
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->PROTOCOL_URL:Ljava/lang/String;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->WebProtocolHttps:Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;->fromValue(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setProtocol(Lcom/amazon/messaging/odot/webservices/transportdto/WebProtocol;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->HOST_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->DEVICE_URL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setHost(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    const-string v1, "/PostMessages"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setPath(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;->HttpVerbPost:Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setVerb(Lcom/amazon/messaging/odot/webservices/transportdto/HttpVerb;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    const-string v1, "application/json"

    const-string v2, "Accept"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setAuthenticationRequired(Z)V

    .line 99
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->createJSONBody()Lorg/json/simple/JSONObject;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->setBody(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mWebRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->TAG:Ljava/lang/String;

    const-string v1, "PostMessagesRequest::isValid:  Returning false because addMessage was not [successfully] called."

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
