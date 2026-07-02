.class public final Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;
.super Ljava/lang/Object;
.source "FastNavigationMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cs/FastNavigationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventListener"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;

    invoke-direct {v0}, Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics$EventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplicationLifecycleEvent(Lcom/amazon/kindle/event/ApplicationLifecycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;->getType()Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;->BACKGROUNDED:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    if-ne p1, v1, :cond_0

    instance-of p1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p1, :cond_0

    .line 349
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    invoke-virtual {p1}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->flushAggregatedMetrics()V

    .line 350
    invoke-static {}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->access$clearActionQueue()V

    :cond_0
    return-void
.end method

.method public final onBookClosed(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 357
    sget-object p1, Lcom/amazon/kindle/cs/FastNavigationMetrics;->INSTANCE:Lcom/amazon/kindle/cs/FastNavigationMetrics;

    invoke-virtual {p1}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->flushAggregatedMetrics()V

    .line 358
    invoke-static {}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->access$clearActionQueue()V

    :cond_0
    return-void
.end method
