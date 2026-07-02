.class public Lcom/amazon/kindle/messaging/AssociateTagHandler;
.super Ljava/lang/Object;
.source "AssociateTagHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/messaging/AssociateTagHandler;


# instance fields
.field private messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

.field private provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    return-void
.end method

.method public static initialize()Lcom/amazon/kindle/messaging/AssociateTagHandler;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->instance:Lcom/amazon/kindle/messaging/AssociateTagHandler;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/messaging/AssociateTagHandler;-><init>()V

    sput-object v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->instance:Lcom/amazon/kindle/messaging/AssociateTagHandler;

    .line 41
    :cond_0
    sget-object v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->instance:Lcom/amazon/kindle/messaging/AssociateTagHandler;

    return-object v0
.end method


# virtual methods
.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending an ODOT message for associate tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    const-string v1, "Redding.AssociateTag"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    sget-object v0, Lcom/amazon/kindle/messaging/AssociateTagHandler;->TAG:Ljava/lang/String;

    const-string v1, "Exception trying to send the associate tag ODOT message: "

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
