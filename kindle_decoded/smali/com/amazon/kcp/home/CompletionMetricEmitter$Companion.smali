.class public final Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;
.super Ljava/lang/Object;
.source "HomeRefreshControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/CompletionMetricEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "metricsClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/amazon/kcp/home/CompletionMetricEmitter;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/home/CompletionMetricEmitter;-><init>(Ljava/lang/String;J)V

    .line 203
    invoke-static {}, Lcom/amazon/kcp/home/CompletionMetricEmitter;->access$getInstances$cp()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method
