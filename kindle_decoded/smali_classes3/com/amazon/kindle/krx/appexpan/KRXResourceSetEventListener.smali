.class public Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;
.super Lcom/amazon/appexpan/client/event/ResourceSetEventListener;
.source "KRXResourceSetEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/amazon/appexpan/client/event/ResourceSetEventListener;-><init>()V

    .line 17
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onResourceSetAvailable(Ljava/lang/String;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing event for onResourceSetAvailable for resource set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/krx/appexpan/ResourceSetAvailableEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/appexpan/ResourceSetAvailableEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onResourceSetDownloadFailed(Ljava/lang/String;)V
    .locals 3

    .line 29
    sget-object v0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing event for onResourceSetDownloadFailed for resource set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/KRXResourceSetEventListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/krx/appexpan/ResourceSetDownloadFailedEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/appexpan/ResourceSetDownloadFailedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
