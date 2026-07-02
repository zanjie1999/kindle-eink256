.class final Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;
.super Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;
.source "LargeLibraryCardDataProvider.kt"


# instance fields
.field private final booksChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;)V
    .locals 2

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 224
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;-><init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 225
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 226
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->booksChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final getAndResetBooksChangedState()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->booksChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I
    .locals 3

    .line 229
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I

    move-result-object p1

    .line 230
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->firstOrNull([I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 231
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->booksChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/library/fragments/ResumeShovelerBooksChangedEvent;

    invoke-direct {v1}, Lcom/amazon/kcp/library/fragments/ResumeShovelerBooksChangedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-object p1
.end method
