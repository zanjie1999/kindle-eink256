.class public Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;
.super Ljava/lang/Object;
.source "WordWiseSynchronizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NlnModeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNlnModeChanged(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$102(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;)Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    .line 116
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener$1;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;)V

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
