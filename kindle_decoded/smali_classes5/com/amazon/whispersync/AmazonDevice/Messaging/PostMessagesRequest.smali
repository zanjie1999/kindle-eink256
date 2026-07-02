.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;
.super Ljava/lang/Object;
.source "PostMessagesRequest.java"


# instance fields
.field private final mMessageBatchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    return-void
.end method

.method private createJSONBody()Lcom/amazon/whispersync/org/json/simple/JSONObject;
    .locals 7

    .line 106
    new-instance v0, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/json/simple/JSONObject;-><init>()V

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

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

    .line 111
    new-instance v4, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-direct {v4}, Lcom/amazon/whispersync/org/json/simple/JSONObject;-><init>()V

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "messages"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "messageBatches"

    .line 118
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addMessage(Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/Message;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 49
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "PostMessagesRequest::addMessage:  Cannot add message, as it was not valid."

    .line 31
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getWebRequest()Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PostMessagesRequest::getWebRequest:  Cannot construct a WebRequest because addMessage was not [successfully] called."

    .line 70
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    if-eqz v0, :cond_1

    return-object v0

    .line 80
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 82
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->WebProtocolHttps:Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "protocol.device-messaging-na.amazon.com"

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;->fromValue(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setProtocol(Lcom/amazon/whispersync/AmazonDevice/Common/WebProtocol;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "host.device-messaging-na.amazon.com"

    const-string v2, "device-messaging-na.amazon.com"

    invoke-static {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHost(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "/PostMessages"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setPath(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setVerb(Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "application/json"

    const-string v2, "Accept"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setAuthenticationRequired(Z)V

    .line 96
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->createJSONBody()Lcom/amazon/whispersync/org/json/simple/JSONObject;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setBody(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesRequest;->mMessageBatchMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PostMessagesRequest::isValid:  Returning false because addMessage was not [successfully] called."

    .line 58
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
