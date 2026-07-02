.class final Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endReadingSession$1;
.super Ljava/lang/Object;
.source "FastMetricsSessionsHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->endReadingSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endReadingSession$1;->$fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 164
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$endReadingSession$1;->$fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->endReadingSession$KindleReaderLibrary_release(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V

    return-void
.end method
