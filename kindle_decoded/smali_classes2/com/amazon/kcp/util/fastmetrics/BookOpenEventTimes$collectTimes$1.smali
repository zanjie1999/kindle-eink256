.class final Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordBookOpenMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->collectTimes()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 9

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getSplashScreenVisibleTimestamp()Ljava/lang/Long;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getOpenCanceledTimestamp()Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v6}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getOpenTriggeredTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getOpenTriggeredTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v6}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getOpenTriggeredTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->this$0:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v3}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getOpenTriggeredTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v3, v1

    :cond_1
    const-string v1, "time_to_splash_screen_visible"

    .line 106
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "splash_screen_canceled_time"

    .line 107
    invoke-interface {p1, v0, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addInteger(KEY_SPLASH_SC\u2026, splashScreenCancelTime)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes$collectTimes$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
