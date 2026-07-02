.class public Lcom/amazon/kcp/search/widget/TopSearchRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "TopSearchRequest.java"


# static fields
.field private static final MAX_TRIES:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/search/widget/TopSearchRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/widget/TopSearchRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 39
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/search/widget/TopSearchRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 40
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p2, 0x3

    .line 42
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 43
    sget-object p2, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 44
    new-instance p2, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/search/widget/TopSearchRequest$1;-><init>(Lcom/amazon/kcp/search/widget/TopSearchRequest;Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/widget/TopSearchRequest;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method
