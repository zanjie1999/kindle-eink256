.class public final Lcom/audible/license/VoucherManagerImpl;
.super Ljava/lang/Object;
.source "VoucherManagerImpl.kt"

# interfaces
.implements Lcom/audible/license/provider/VoucherProvider;
.implements Lcom/audible/license/refresh/VoucherRefresher;
.implements Lcom/audible/license/provider/DownloadMetadataProvider;
.implements Lcom/audible/license/provider/DrmMetadataProvider;
.implements Lcom/audible/license/provider/ChapterInfoProvider;
.implements Lcom/audible/license/backfill/VoucherBackfillDelegate;
.implements Lcom/audible/license/repository/VoucherRepositoryDelegate;
.implements Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;
.implements Lcom/audible/license/VoucherManager;


# instance fields
.field private final chapterInfoProvider:Lcom/audible/license/provider/ChapterInfoProvider;

.field private final downloadMetadataProvider:Lcom/audible/license/provider/DownloadMetadataProvider;

.field private final drmMetadataProvider:Lcom/audible/license/provider/DrmMetadataProvider;

.field private final licensingEventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

.field private final voucherBackfillDelegate:Lcom/audible/license/backfill/VoucherBackfillDelegate;

.field private final voucherProvider:Lcom/audible/license/provider/VoucherProvider;

.field private final voucherRefresher:Lcom/audible/license/refresh/VoucherRefresher;

.field private final voucherRepositoryDelegate:Lcom/audible/license/repository/VoucherRepositoryDelegate;


# direct methods
.method public constructor <init>(Lcom/audible/license/provider/VoucherProvider;Lcom/audible/license/refresh/VoucherRefresher;Lcom/audible/license/provider/DownloadMetadataProvider;Lcom/audible/license/provider/DrmMetadataProvider;Lcom/audible/license/provider/ChapterInfoProvider;Lcom/audible/license/backfill/VoucherBackfillDelegate;Lcom/audible/license/repository/VoucherRepositoryDelegate;Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;)V
    .locals 1

    const-string v0, "voucherProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRefresher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadMetadataProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drmMetadataProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chapterInfoProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherBackfillDelegate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRepositoryDelegate"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "licensingEventBroadcaster"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/VoucherManagerImpl;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    iput-object p2, p0, Lcom/audible/license/VoucherManagerImpl;->voucherRefresher:Lcom/audible/license/refresh/VoucherRefresher;

    iput-object p3, p0, Lcom/audible/license/VoucherManagerImpl;->downloadMetadataProvider:Lcom/audible/license/provider/DownloadMetadataProvider;

    iput-object p4, p0, Lcom/audible/license/VoucherManagerImpl;->drmMetadataProvider:Lcom/audible/license/provider/DrmMetadataProvider;

    iput-object p5, p0, Lcom/audible/license/VoucherManagerImpl;->chapterInfoProvider:Lcom/audible/license/provider/ChapterInfoProvider;

    iput-object p6, p0, Lcom/audible/license/VoucherManagerImpl;->voucherBackfillDelegate:Lcom/audible/license/backfill/VoucherBackfillDelegate;

    iput-object p7, p0, Lcom/audible/license/VoucherManagerImpl;->voucherRepositoryDelegate:Lcom/audible/license/repository/VoucherRepositoryDelegate;

    iput-object p8, p0, Lcom/audible/license/VoucherManagerImpl;->licensingEventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    return-void
.end method


# virtual methods
.method public get(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/license/model/Voucher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/license/VoucherManagerImpl;->voucherProvider:Lcom/audible/license/provider/VoucherProvider;

    invoke-interface {v0, p1, p2}, Lcom/audible/license/provider/VoucherProvider;->get(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/license/model/Voucher;

    move-result-object p1

    return-object p1
.end method

.method public onContentRemovalRequest(Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/license/VoucherManagerImpl;->licensingEventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    invoke-interface {v0, p1}, Lcom/audible/license/events/LicensingEventListener;->onContentRemovalRequest(Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method public onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "licensingError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/license/VoucherManagerImpl;->licensingEventBroadcaster:Lcom/audible/license/events/broadcast/LicensingEventBroadcaster;

    invoke-interface {v0, p1, p2}, Lcom/audible/license/events/LicensingEventListener;->onLicensingError(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/events/LicensingError;)V

    return-void
.end method

.method public refreshVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;Z)Z
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/audible/license/VoucherManagerImpl;->voucherRefresher:Lcom/audible/license/refresh/VoucherRefresher;

    invoke-interface {v0, p1, p2, p3}, Lcom/audible/license/refresh/VoucherRefresher;->refreshVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;Z)Z

    move-result p1

    return p1
.end method
