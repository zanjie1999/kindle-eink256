.class Lcom/audible/cdn/voucher/download/VoucherFetcher$2;
.super Ljava/lang/Object;
.source "VoucherFetcher.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/cdn/voucher/download/VoucherFetcher;->fetchVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/audible/license/model/DownloadMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/cdn/voucher/download/VoucherFetcher;

.field final synthetic val$fetcherTimer:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method constructor <init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;->this$0:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    iput-object p2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;->val$fetcherTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/audible/license/model/DownloadMetadata;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;->this$0:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    invoke-static {p1}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->access$000(Lcom/audible/cdn/voucher/download/VoucherFetcher;)Lcom/audible/license/metrics/VoucherMetricRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;->val$fetcherTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-virtual {p1, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    check-cast p1, Lcom/audible/license/model/DownloadMetadata;

    invoke-virtual {p0, p1}, Lcom/audible/cdn/voucher/download/VoucherFetcher$2;->accept(Lcom/audible/license/model/DownloadMetadata;)V

    return-void
.end method
