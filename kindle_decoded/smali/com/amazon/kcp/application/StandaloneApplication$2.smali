.class Lcom/amazon/kcp/application/StandaloneApplication$2;
.super Ljava/lang/Object;
.source "StandaloneApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneApplication;->initializeAppState(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/StandaloneApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StandaloneApplication;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneApplication$2;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    invoke-static {}, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->getInstance()Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    move-result-object v0

    const-string v1, "USER_FIRST_START"

    const-string v2, "High"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->reportCounterMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/RecordUserFirstStartMetrics;->recordUserFirstStart()V

    .line 185
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplication;->access$000()Ljava/lang/String;

    return-void
.end method
