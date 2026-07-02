.class public final Lcom/amazon/messaging/odot/OdotMessageProcessor;
.super Ljava/lang/Object;
.source "OdotMessageProcessor.java"


# static fields
.field private static final DAILY_WAN_USAGE_LIMIT:J = 0xe1000L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final callbacks:Lcom/amazon/messaging/odot/OdotClient$Callbacks;

.field private final connManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final mode:Lcom/amazon/messaging/odot/OdotClient$Mode;

.field private final odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

.field private final pendingMessagesExist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private requestDelay:J

.field private shouldProcessAgain:Z

.field private final wanUsageQuota:Lcom/amazon/messaging/odot/WanUsageQuota;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/messaging/odot/dao/IOdotClientDAO;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->pendingMessagesExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 81
    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    .line 83
    iput-object p3, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->mode:Lcom/amazon/messaging/odot/OdotClient$Mode;

    .line 84
    iput-object p4, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->callbacks:Lcom/amazon/messaging/odot/OdotClient$Callbacks;

    .line 85
    new-instance p2, Lcom/amazon/messaging/odot/DailyWanUsageQuota;

    const-wide/32 p3, 0xe1000

    invoke-direct {p2, p3, p4, p1}, Lcom/amazon/messaging/odot/DailyWanUsageQuota;-><init>(JLandroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->wanUsageQuota:Lcom/amazon/messaging/odot/WanUsageQuota;

    .line 86
    iget-object p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->context:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->connManager:Landroid/net/ConnectivityManager;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->shouldProcessAgain:Z

    const-wide/16 p1, 0x2710

    .line 88
    iput-wide p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->requestDelay:J

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callbacks is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "mode is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "odotClientDAO is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->pendingMessagesExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->isConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->processMessages()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->shouldProcessAgain:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/messaging/odot/OdotMessageProcessor;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->requestDelay:J

    return-wide v0
.end method

.method private addPendingMessagesToRequest(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->getPendingOdotMessages(I)Ljava/util/List;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/messaging/odot/dto/IOdotMessage;

    .line 212
    invoke-interface {v2}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->toMessage()Lcom/amazon/messaging/odot/webservices/transportdto/Message;

    move-result-object v3

    const/4 v4, 0x3

    .line 213
    invoke-static {v4}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    sget-object v4, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding message with ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] to the request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-virtual {p1, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->addMessage(Lcom/amazon/messaging/odot/webservices/transportdto/Message;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/Message;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    sget-object v3, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMessagesToRequest failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private handleInvalidRequest(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;)Z
    .locals 2

    const-wide/16 v0, 0x2710

    .line 246
    invoke-virtual {p1, v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->shouldProcessAgain:Z

    const/4 p1, 0x1

    return p1
.end method

.method private isConnected()Z
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->connManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->connManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz v2, :cond_1

    .line 235
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->wanUsageQuota:Lcom/amazon/messaging/odot/WanUsageQuota;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/WanUsageQuota;->capReached()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1
    return v3
.end method

.method static newInstance(Landroid/content/Context;Lcom/amazon/messaging/odot/dao/IOdotClientDAO;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)Lcom/amazon/messaging/odot/OdotMessageProcessor;
    .locals 1

    .line 93
    new-instance v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/messaging/odot/OdotMessageProcessor;-><init>(Landroid/content/Context;Lcom/amazon/messaging/odot/dao/IOdotClientDAO;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)V

    return-object v0
.end method

.method private processMessages()Z
    .locals 13

    .line 142
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;

    iget-object v1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->mode:Lcom/amazon/messaging/odot/OdotClient$Mode;

    invoke-direct {v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;-><init>(Lcom/amazon/messaging/odot/OdotClient$Mode;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->addPendingMessagesToRequest(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x3

    .line 146
    invoke-static {v2}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v3

    const-string v4, "] messages"

    if-eqz v3, :cond_0

    .line 147
    sget-object v3, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processMessages - processing ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 151
    iput-boolean v5, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->shouldProcessAgain:Z

    return v5

    .line 155
    :cond_1
    new-instance v3, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;

    iget-object v6, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->odotClientDAO:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-direct {v3, v6, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;-><init>(Lcom/amazon/messaging/odot/dao/IOdotClientDAO;Ljava/util/Set;)V

    .line 158
    new-instance v9, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;

    invoke-direct {v9}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;-><init>()V

    .line 159
    new-instance v11, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;

    iget-object v6, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->callbacks:Lcom/amazon/messaging/odot/OdotClient$Callbacks;

    invoke-interface {v6}, Lcom/amazon/messaging/odot/OdotClient$Callbacks;->getAccount()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    invoke-direct {v11, v6, v7}, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;-><init>(Ljava/lang/String;Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;)V

    .line 160
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->isValid()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 161
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesRequest;->getWebRequest()Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    move-result-object v0

    if-nez v0, :cond_2

    .line 163
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processMessages - PostMessagesRequest indicated as valid but returned null WebRequest object"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, v3}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->handleInvalidRequest(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;)Z

    move-result v0

    return v0

    .line 167
    :cond_2
    new-instance v12, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;

    iget-object v7, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->context:Landroid/content/Context;

    move-object v6, v12

    move-object v8, v0

    move-object v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;-><init>(Landroid/content/Context;Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;)V

    .line 173
    invoke-virtual {v12}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->call()V

    .line 179
    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 185
    iget-object v6, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    .line 187
    iget-object v6, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->wanUsageQuota:Lcom/amazon/messaging/odot/WanUsageQuota;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getBodyLength()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lcom/amazon/messaging/odot/WanUsageQuota;->recordUsage(J)V

    .line 193
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v6, 0x64

    if-ne v0, v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->shouldProcessAgain:Z

    .line 194
    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->getCallAfter()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->requestDelay:J

    .line 196
    invoke-static {v2}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMessages - left over ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v7

    .line 175
    :cond_6
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processMessages - PostMessagesRequest is invalid"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v3}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->handleInvalidRequest(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method notifyMessageAdded()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor;->pendingMessagesExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public processOdotMessages()V
    .locals 4

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OdotMessageProcessor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    new-instance v0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;

    invoke-direct {v0, p0, v1}, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;-><init>(Lcom/amazon/messaging/odot/OdotMessageProcessor;Landroid/os/Handler;)V

    const-wide/16 v2, 0x2710

    .line 135
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
