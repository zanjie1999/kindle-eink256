.class final Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$4;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $aclsTimer:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method constructor <init>(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$4;->$aclsTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$4;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/audible/license/repository/acls/VoucherFetcherImpl$getContentLicense$4;->$aclsTimer:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    return-void
.end method
