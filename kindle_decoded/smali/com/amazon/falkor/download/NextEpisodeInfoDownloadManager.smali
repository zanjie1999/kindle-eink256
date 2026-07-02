.class public Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;
.super Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;
.source "FalkorDownloadManagers.kt"


# instance fields
.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p2, p0, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 2

    .line 71
    const-class v0, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initiateNextEpisodeInfoDownload(Lcom/amazon/falkor/event/CurrentEpisodeDownloadFinishedEvent;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq p1, v0, :cond_1

    .line 88
    iget-object p1, p0, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/models/FalkorEpisode;->getNextEpisodeAsin()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    if-eqz v1, :cond_1

    .line 90
    new-instance p1, Lcom/amazon/falkor/FalkorBook;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/falkor/FalkorBook;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_1
    return-void
.end method

.method public onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/NextEpisodeDownloadFinishedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/NextEpisodeDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onDownloadSuccessful(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/NextEpisodeDownloadFinishedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/NextEpisodeDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
