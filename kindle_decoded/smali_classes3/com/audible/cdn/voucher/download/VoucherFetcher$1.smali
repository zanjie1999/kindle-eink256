.class Lcom/audible/cdn/voucher/download/VoucherFetcher$1;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fetcherTimer:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method constructor <init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 0

    .line 176
    iput-object p2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$1;->val$fetcherTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/audible/cdn/voucher/download/VoucherFetcher$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$1;->val$fetcherTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    return-void
.end method
