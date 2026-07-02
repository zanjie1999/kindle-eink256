.class public final Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;
.super Ljava/lang/Object;
.source "LibraryRightsClientAPI.kt"

# interfaces
.implements Lcom/amazon/kcp/library/releaselicense/api/RightsClientAPI;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryRightsClientAPI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryRightsClientAPI.kt\ncom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1819#2,2:80\n1819#2,2:82\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryRightsClientAPI.kt\ncom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI\n*L\n45#1,2:80\n60#1,2:82\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

.field private static final TAG:Ljava/lang/String;

.field private static deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private static libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private static remoteLicenseReleaseApiClientHelper:Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

.field private static threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

.field private static webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-direct {v0}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    .line 27
    const-class v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LibraryRightsClientAPI::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDeviceInformation$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 0

    .line 20
    sget-object p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "deviceInformation"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getRemoteLicenseReleaseApiClientHelper$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;
    .locals 0

    .line 20
    sget-object p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->remoteLicenseReleaseApiClientHelper:Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "remoteLicenseReleaseApiClientHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getWebRequestManager$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/webservices/IWebRequestManager;
    .locals 0

    .line 20
    sget-object p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "webRequestManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getDeviceConsumptionsAsync(Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V
    .locals 5

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 46
    sget-object v3, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;

    invoke-direct {v4, v2, p2}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const-string p1, "threadPoolManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    sget-object p2, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List Devices web-request submitted for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "libraryService"

    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getInvalidDownloads(Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "downloadedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;-><init>(Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 77
    sget-object p1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->TAG:Ljava/lang/String;

    const-string p2, "RemoveInvalidDownloads web-request submitted"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "threadPoolManager"

    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final initialize(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/krx/thread/IThreadPoolManager;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    const-string v0, "deviceInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webRequestManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadPoolManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sput-object p4, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 34
    sput-object p5, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 35
    sput-object p1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 36
    sput-object p3, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    .line 37
    sget-object p1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->TAG:Ljava/lang/String;

    const-string p3, "Initialization complete"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V

    sput-object p1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->remoteLicenseReleaseApiClientHelper:Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    return-void
.end method

.method public removeConsumptions(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 61
    sget-object v3, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;

    invoke-direct {v4, v2, p2, p3}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const-string p1, "threadPoolManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    sget-object p2, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoveAndReadNow web-request submitted for book "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "libraryService"

    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
