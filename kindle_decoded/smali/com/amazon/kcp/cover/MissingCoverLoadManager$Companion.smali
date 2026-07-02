.class public final Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;
.super Ljava/lang/Object;
.source "MissingCoverLoadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/MissingCoverLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/amazon/kcp/cover/MissingCoverLoadManager;
    .locals 6

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 35
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    .line 36
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v3

    .line 37
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "MISSING_COVER_LOAD_MANAGER"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    new-instance v4, Lcom/amazon/kcp/cover/MissingCoverLoadManager;

    const-string v5, "libraryService"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "coverImageService"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "threadPoolManager"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "sharedPreferences"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/amazon/kcp/cover/MissingCoverLoadManager;-><init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/foundation/internal/IThreadPoolManager;Landroid/content/SharedPreferences;)V

    return-object v4
.end method
