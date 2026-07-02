.class Lcom/audible/cdn/voucher/download/VoucherFetcher$4;
.super Ljava/lang/Object;
.source "VoucherFetcher.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
        "Lcom/audible/license/model/DownloadMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/cdn/voucher/download/VoucherFetcher;

.field final synthetic val$acr:Lcom/audible/mobile/domain/ACR;

.field final synthetic val$asin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method constructor <init>(Lcom/audible/cdn/voucher/download/VoucherFetcher;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->this$0:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    iput-object p2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->val$asin:Lcom/audible/mobile/domain/Asin;

    iput-object p3, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->val$acr:Lcom/audible/mobile/domain/ACR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)Lcom/audible/license/model/DownloadMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->this$0:Lcom/audible/cdn/voucher/download/VoucherFetcher;

    iget-object v1, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->val$asin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p0, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->val$acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1, v2, p1}, Lcom/audible/cdn/voucher/download/VoucherFetcher;->processContentLicense(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)Lcom/audible/license/model/DownloadMetadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    invoke-virtual {p0, p1}, Lcom/audible/cdn/voucher/download/VoucherFetcher$4;->apply(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)Lcom/audible/license/model/DownloadMetadata;

    move-result-object p1

    return-object p1
.end method
