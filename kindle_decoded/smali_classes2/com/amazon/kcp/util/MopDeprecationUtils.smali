.class public final Lcom/amazon/kcp/util/MopDeprecationUtils;
.super Ljava/lang/Object;
.source "MopDeprecationUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils;

.field private static final TAG:Ljava/lang/String;

.field private static final isYJSupported:Z

.field private static final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private static final readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

.field private static final settings:Lcom/amazon/kcp/application/IAppSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/amazon/kcp/util/MopDeprecationUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/MopDeprecationUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils;

    .line 16
    const-class v0, Lcom/amazon/kindle/contentupdate/ContentUpdateService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->TAG:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v2, "Utils.getFactory().libraryService"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 19
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReadDataSyncManager()Lcom/amazon/kcp/sync/IReadDataSyncManager;

    move-result-object v0

    const-string v2, "Utils.getFactory().readDataSyncManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    .line 20
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->settings:Lcom/amazon/kcp/application/IAppSettingsController;

    .line 21
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const-string v1, "Utils.getFactory().applicationCapabilities"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isYJSupportedOnDevice()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->isYJSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isLocalMopBook(Lcom/amazon/kcp/util/MopDeprecationUtils;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kcp/util/MopDeprecationUtils;->isLocalMopBook(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p0

    return p0
.end method

.method public static final handleMopDeprecation(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 5

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_0

    .line 51
    sget-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/amazon/kcp/util/MopDeprecationUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to revert ContentState back to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v2, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2, p0, v1}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    .line 56
    sget-object v1, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final isLocalMopBook(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final isMopDeprecationEnabled()Z
    .locals 2

    .line 61
    sget-boolean v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->isYJSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->readDataSyncManager:Lcom/amazon/kcp/sync/IReadDataSyncManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/sync/IReadDataSyncManager;->isSyncEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->settings:Lcom/amazon/kcp/application/IAppSettingsController;

    const-string v1, "settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->isFreshMopDeprecationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final markMopToUnsupported(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 93
    sget-object v2, Lcom/amazon/kcp/util/MopDeprecationUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to update ContentState to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v2, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2, v1, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final scan()V
    .locals 3

    .line 33
    sget-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/amazon/kcp/util/MopDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils;

    invoke-direct {v1}, Lcom/amazon/kcp/util/MopDeprecationUtils;->isMopDeprecationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/amazon/kcp/util/MopDeprecationUtils;->settings:Lcom/amazon/kcp/application/IAppSettingsController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAppSettingsController;->setIsFreshMopDeprecationEnabled(Z)V

    .line 38
    sget-object v1, Lcom/amazon/kcp/util/MopDeprecationUtils;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v2, Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;->INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "this.libraryService.list\u2026LocalMopBook(metadata)) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/amazon/kcp/util/MopDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/util/MopDeprecationUtils;->markMopToUnsupported(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method
