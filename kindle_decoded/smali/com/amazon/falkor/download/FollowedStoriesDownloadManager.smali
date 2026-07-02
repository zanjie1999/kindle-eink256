.class public final Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;
.super Lcom/amazon/falkor/download/FalkorDownloadManager;
.source "FalkorDownloadManagers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/falkor/download/FalkorDownloadManager<",
        "Lcom/amazon/falkor/models/FollowedStories;",
        ">;"
    }
.end annotation


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 216
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/amazon/falkor/models/FollowedStories;",
            ">;"
        }
    .end annotation

    .line 221
    const-class v0, Lcom/amazon/falkor/models/FollowedStories;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 223
    const-class v0, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;

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

.method public getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object p1, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    invoke-virtual {p1}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getFollowedAPIUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/FollowedStoriesDownloadFinishedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/FollowedStoriesDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onDownloadSuccessful(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/falkor/download/FollowedStoriesDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/FollowedStoriesDownloadFinishedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/falkor/event/FollowedStoriesDownloadFinishedEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
