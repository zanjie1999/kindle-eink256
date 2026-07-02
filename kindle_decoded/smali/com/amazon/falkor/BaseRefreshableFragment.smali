.class public abstract Lcom/amazon/falkor/BaseRefreshableFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseRefreshableFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseRefreshableFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseRefreshableFragment.kt\ncom/amazon/falkor/BaseRefreshableFragment\n*L\n1#1,65:1\n*E\n"
.end annotation


# instance fields
.field private final messageQueue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldRefreshOnResume:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->shouldRefreshOnResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance v0, Lcom/amazon/falkor/BaseRefreshableFragment$messageQueue$1;

    invoke-direct {v0, p0}, Lcom/amazon/falkor/BaseRefreshableFragment$messageQueue$1;-><init>(Lcom/amazon/falkor/BaseRefreshableFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->messageQueue:Lkotlin/Lazy;

    return-void
.end method

.method private final getAndResetRefreshOnResume()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->shouldRefreshOnResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final getMessageQueue()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->messageQueue:Lkotlin/Lazy;

    return-object v0
.end method

.method protected abstract getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
.end method

.method protected final markForRefreshOnResume()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->shouldRefreshOnResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 37
    sget-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onConnectivityChange(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->markForRefreshOnResume()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->messageQueue:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 42
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 29
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 30
    invoke-direct {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->getAndResetRefreshOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/falkor/BaseRefreshableFragment;->messageQueue:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
