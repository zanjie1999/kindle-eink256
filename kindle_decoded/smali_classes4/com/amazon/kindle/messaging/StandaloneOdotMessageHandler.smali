.class public Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;
.super Ljava/lang/Object;
.source "StandaloneOdotMessageHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/IMessengerService;


# static fields
.field private static final DEFAULT_REQUESTER:Ljava/lang/String; = "UNKNOWN"

.field private static final DEFAULT_TRANSPORT:Lcom/amazon/messaging/odot/OdotClient$Transport;

.field private static final ODOT_DB_NAME:Ljava/lang/String; = "odot.db"

.field private static final PURGE_ODOT_MESSAGES_OPTION:Ljava/lang/String; = "PURGE_ODOT_MESSAGES"

.field private static final REQUESTER_OPTION:Ljava/lang/String; = "REQUESTER"

.field private static final TRANSPORT_OPTION:Ljava/lang/String; = "TRANSPORT"


# instance fields
.field private final context:Landroid/content/Context;

.field private final odotClient:Lcom/amazon/messaging/odot/OdotClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/messaging/odot/OdotClient$Transport;->WIFI:Lcom/amazon/messaging/odot/OdotClient$Transport;

    sput-object v0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->DEFAULT_TRANSPORT:Lcom/amazon/messaging/odot/OdotClient$Transport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->context:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/messaging/odot/OdotClient$Mode;->PRE_PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/messaging/odot/OdotClient$Mode;->PRODUCTION:Lcom/amazon/messaging/odot/OdotClient$Mode;

    .line 44
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler$1;-><init>(Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->context:Landroid/content/Context;

    const-string v2, "odot.db"

    invoke-static {v0, v2, p1, v1}, Lcom/amazon/messaging/odot/OdotClient;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/messaging/odot/OdotClient$Mode;Lcom/amazon/messaging/odot/OdotClient$Callbacks;)Lcom/amazon/messaging/odot/OdotClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->odotClient:Lcom/amazon/messaging/odot/OdotClient;

    return-void

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot instantiate StandaloneOdotMessageHandler, context not set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isOdotSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs send(Landroid/content/Context;Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 76
    array-length p1, p3

    const/16 v0, 0x1800

    if-gt p1, v0, :cond_5

    .line 81
    sget-object p1, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->DEFAULT_TRANSPORT:Lcom/amazon/messaging/odot/OdotClient$Transport;

    .line 82
    array-length v0, p4

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p4, v1

    .line 83
    invoke-interface {v3}, Lcom/amazon/dcp/messaging/DeliveryOption;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "REQUESTER"

    .line 88
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    invoke-interface {v3}, Lcom/amazon/dcp/messaging/DeliveryOption;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v5, "TRANSPORT"

    .line 90
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    :try_start_0
    invoke-interface {v3}, Lcom/amazon/dcp/messaging/DeliveryOption;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/messaging/odot/OdotClient$Transport;->valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/OdotClient$Transport;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const-string v5, "PURGE_ODOT_MESSAGES"

    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-interface {v3}, Lcom/amazon/dcp/messaging/DeliveryOption;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->odotClient:Lcom/amazon/messaging/odot/OdotClient;

    invoke-virtual {v3}, Lcom/amazon/messaging/odot/OdotClient;->purge()V

    :catch_0
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_4
    :try_start_1
    iget-object p4, p0, Lcom/amazon/kindle/messaging/StandaloneOdotMessageHandler;->odotClient:Lcom/amazon/messaging/odot/OdotClient;

    invoke-virtual {p4, p2, p3, v2, p1}, Lcom/amazon/messaging/odot/OdotClient;->enqueue(Ljava/lang/String;[BLjava/lang/String;Lcom/amazon/messaging/odot/OdotClient$Transport;)V
    :try_end_1
    .catch Lcom/amazon/messaging/odot/OdotClientException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 109
    new-instance p2, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    const-string p3, "Error enqueuing message"

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 77
    :cond_5
    new-instance p1, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Payload size greater than 6k: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_6
    new-instance p1, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;

    const-string p2, "Topic and payload cannot be null!"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
