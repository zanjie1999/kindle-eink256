.class public Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;
.super Ljava/lang/Object;
.source "WordWiseContentStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;


# instance fields
.field private final asinsWithSidecarDownloading:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private sidecarStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 44
    sget-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 46
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 47
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->asinsWithSidecarDownloading:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    .line 61
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    return-object v0
.end method


# virtual methods
.method public getDictionaryErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 202
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    :goto_1
    return-object v0
.end method

.method public getSidecarErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public hasDictionaryDownloadCompleted()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDictionaryDownloadFailed()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->TAG:Ljava/lang/String;

    const-string v2, "Initializing"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public isDownloadingDictionary()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloadingSidecar(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->asinsWithSidecarDownloading:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNotDownloadingDictionary()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDownloadStatusChange(Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 78
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadStatusChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getType()Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$1;->$SwitchMap$com$amazon$kcp$wordwise$download$DownloadStatusType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getType()Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getType()Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->sidecarErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getType()Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryStatus:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 85
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->dictionaryErrorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 97
    :goto_0
    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$1;->$SwitchMap$com$amazon$kcp$wordwise$download$DownloadStatusType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getType()Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->asinsWithSidecarDownloading:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->asinsWithSidecarDownloading:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getAsinForSidecar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->asinsWithSidecarDownloading:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->getAsinForSidecar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->publishEvent()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected publishEvent()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;

    invoke-direct {v1}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
