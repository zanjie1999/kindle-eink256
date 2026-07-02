.class final Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiWindowMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/metrics/MultiWindowMetrics;->onConfigurationChanged(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field final synthetic $metadata:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iput-object p2, p0, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;->$metadata:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    instance-of v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    const-string v0, "Book"

    goto :goto_0

    :cond_0
    const-string v0, "Global"

    .line 73
    :goto_0
    sget-object v1, Lcom/amazon/android/metrics/MultiWindowMetrics;->INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics;

    invoke-static {v1}, Lcom/amazon/android/metrics/MultiWindowMetrics;->access$getEncoder$p(Lcom/amazon/android/metrics/MultiWindowMetrics;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;->$metadata:Ljava/util/Map;

    const-string v3, "MultiWindowConfigChanged"

    invoke-interface {v1, v0, v3, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
