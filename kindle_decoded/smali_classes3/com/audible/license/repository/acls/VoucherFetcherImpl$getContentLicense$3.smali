.class final Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;
.super Ljava/lang/Object;
.source "VoucherFetcherImpl.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/acls/VoucherFetcherImpl;->getContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Z)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lkotlin/Triple<",
        "+",
        "Lcom/audible/license/repository/db/VoucherMetadata;",
        "+",
        "Lcom/audible/license/model/EncryptedVoucher;",
        "+",
        "Lcom/audible/license/model/ExtraContentLicenseInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $aclsTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

.field final synthetic this$0:Lcom/audible/license/repository/acls/VoucherFetcherImpl;


# direct methods
.method constructor <init>(Lcom/audible/license/repository/acls/VoucherFetcherImpl;Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;->this$0:Lcom/audible/license/repository/acls/VoucherFetcherImpl;

    iput-object p2, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;->$aclsTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p0, p1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;->accept(Lkotlin/Triple;)V

    return-void
.end method

.method public final accept(Lkotlin/Triple;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/ExtraContentLicenseInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;->this$0:Lcom/audible/license/repository/acls/VoucherFetcherImpl;

    invoke-static {p1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl;->access$getAclsMetricRecorder$p(Lcom/audible/license/repository/acls/VoucherFetcherImpl;)Lcom/audible/license/metrics/VoucherMetricRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$3;->$aclsTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-virtual {p1, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method
