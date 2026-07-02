.class public final Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;
.super Ljava/lang/Object;
.source "AssetDownloadRequestHooks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider$Companion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final newAssetHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    const-class v0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "krlDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAssetHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-object p2, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->newAssetHandler:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final hook(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z
    .locals 7

    const-string v0, "downloadRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    const-string v1, "bookAsset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMobi7MimeType(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    new-instance v4, Ljava/io/File;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getMultimediaGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 97
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 104
    sget-object v0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multimedia guid missing for Mobi7 book: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". This is expected if it\'s not Luna"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 108
    :cond_3
    new-instance v2, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;

    iget-object v4, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {v2, v4}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    .line 109
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const-string v4, "bookAsset.bookId"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler;->fetchMultimediaAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult;

    move-result-object v1

    .line 110
    instance-of v2, v1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;

    if-eqz v2, :cond_4

    .line 111
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->newAssetHandler:Lkotlin/jvm/functions/Function1;

    check-cast v1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$Success;->getMultimediaAssets()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 113
    :cond_4
    instance-of v2, v1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;

    if-eqz v2, :cond_5

    .line 115
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    check-cast v1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaManifestHandler$FetchResult$RequestFailure;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    :goto_1
    return v0

    .line 116
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 99
    sget-object v1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create document info for Mobi7 book to get multimedia guid"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
