.class public final Lcom/amazon/kindle/content/DocumentMigrationUtils;
.super Ljava/lang/Object;
.source "DocumentMigrationUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

.field private static final TAG:Ljava/lang/String;

.field private static countFailed:I

.field private static final hasExternalStoragePermission$delegate:Lkotlin/Lazy;

.field private static migrateFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private static final migrateLock:Ljava/lang/Object;

.field private static final migratedDocs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final scopedStorageUtils$delegate:Lkotlin/Lazy;

.field private static timeStart:J

.field private static totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    .line 41
    const-class v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateLock:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils$scopedStorageUtils$2;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils$scopedStorageUtils$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->scopedStorageUtils$delegate:Lkotlin/Lazy;

    .line 49
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->hasExternalStoragePermission$delegate:Lkotlin/Lazy;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migratedDocs:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDocumentsForMigration(Lcom/amazon/kindle/content/DocumentMigrationUtils;Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/Collection;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getDocumentsForMigration(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$migrateDocument(Lcom/amazon/kindle/content/DocumentMigrationUtils;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/io/IFileConnectionFactory;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateDocument(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/io/IFileConnectionFactory;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$reportMetricsForMigration(Lcom/amazon/kindle/content/DocumentMigrationUtils;Landroid/content/Context;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->reportMetricsForMigration(Landroid/content/Context;I)V

    return-void
.end method

.method private final getDocumentsForMigration(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/content/DocumentMigrationUtils$getDocumentsForMigration$1;

    invoke-direct {v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils$getDocumentsForMigration$1;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "libraryService.listConte\u2026derBy() = null\n        })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getHasExternalStoragePermission()Z
    .locals 1

    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->hasExternalStoragePermission$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getScopedStorageUtils()Lcom/amazon/kcp/debug/ScopedStorageUtils;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->scopedStorageUtils$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/debug/ScopedStorageUtils;

    return-object v0
.end method

.method public static final handleDocumentsMigration(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/foundation/internal/IThreadPoolManager;)V
    .locals 6

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadpoolManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v1

    .line 75
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migration flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAppSettingsController;->hasMigratedDocuments()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "migration enabled: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    sget-object v5, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-direct {v5}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getScopedStorageUtils()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isMigrationDocsEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "hasExternalStoragePermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object v4, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-direct {v4}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getHasExternalStoragePermission()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    sget-object v3, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    const-string v4, "appSettingsController"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->shouldMigrate(Lcom/amazon/kcp/application/IAppSettingsController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    sget-object p0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    const-string p1, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "libraryService"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->reportMetricsForIneligibleMigration(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IAppSettingsController;)V

    goto :goto_0

    .line 83
    :cond_0
    sget-object v3, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateFuture:Ljava/util/concurrent/Future;

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/content/ILibraryService;Landroid/content/Context;Lcom/amazon/kcp/application/IAppSettingsController;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateFuture:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method private final hasExternalStoragePermission(Landroid/content/Context;)Z
    .locals 4

    .line 274
    invoke-direct {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getScopedStorageUtils()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isExternalStorageLegacy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    return v3

    .line 283
    :cond_1
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$3;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$3;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 286
    invoke-virtual {v0, p1, v2}, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$3;->invoke(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kindle/content/DocumentMigrationUtils$hasExternalStoragePermission$3;->invoke(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic hasExternalStoragePermission$default(Lcom/amazon/kindle/content/DocumentMigrationUtils;Landroid/content/Context;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 272
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Utils.getFactory().context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final migrateAssociatedFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ".lucene"

    const-string v1, ".luci"

    const-string v2, ".luc"

    .line 191
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 197
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 201
    :cond_2
    new-instance p3, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-direct {p3, p1}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3, p2}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getPdocIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 204
    new-instance p3, Ljava/io/File;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 206
    invoke-static {v0, p3}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 208
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    sget-object p3, Lcom/amazon/kindle/content/DocumentMigrationUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to move associated files for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final migrateDocument(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/io/IFileConnectionFactory;)Z
    .locals 10

    .line 132
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migratedDocs:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "metadata.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 135
    monitor-exit v0

    return v2

    .line 137
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 143
    monitor-exit v0

    return v2

    .line 146
    :cond_1
    :try_start_2
    sget-wide v5, Lcom/amazon/kindle/content/DocumentMigrationUtils;->timeStart:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/amazon/kindle/content/DocumentMigrationUtils;->timeStart:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v5, 0x1

    .line 150
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    invoke-static {v1, v4}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 152
    sget-wide v6, Lcom/amazon/kindle/content/DocumentMigrationUtils;->totalSize:J

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFileSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    sput-wide v6, Lcom/amazon/kindle/content/DocumentMigrationUtils;->totalSize:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :cond_3
    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 161
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-interface {p2, p1, v2}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 164
    sget-object p1, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "srcFile.absolutePath"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p2, v3}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateAssociatedFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    monitor-exit v0

    return v5

    :catch_0
    move-exception p1

    .line 155
    :try_start_5
    sget-object p2, Lcom/amazon/kindle/content/DocumentMigrationUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to move "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Might be in a bad state."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    sget p2, Lcom/amazon/kindle/content/DocumentMigrationUtils;->countFailed:I

    add-int/2addr p2, v5

    sput p2, Lcom/amazon/kindle/content/DocumentMigrationUtils;->countFailed:I

    .line 157
    sget-object p2, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->reportErrorMetric(Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    monitor-exit v0

    return v2

    .line 167
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit v0

    throw p1
.end method

.method public static final migrateDocumentIfNeeded(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/application/IAppSettingsController;)Z
    .locals 3

    const-string v0, "metadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->shouldMigrate(Lcom/amazon/kcp/application/IAppSettingsController;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    const-string v1, "metadata.type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/model/content/SideloadBookID;->isSideloadBookId(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 259
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 260
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    const-string v1, "factory"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    const-string v2, "factory.libraryService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    const-string v2, "factory.fileSystem"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->migrateDocument(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/io/IFileConnectionFactory;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private final reportErrorMetric(Ljava/io/IOException;)V
    .locals 4

    .line 178
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MigrateDocumentException"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExceptionEncountered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Unknown"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v1

    :cond_1
    const-string v1, "ExceptionMessage"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 181
    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Unavailable"

    :goto_1
    const-string v1, "ExceptionTrace"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 182
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method

.method private final reportMetricsForIneligibleMigration(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/application/IAppSettingsController;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getScopedStorageUtils()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isMigrationDocsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getHasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->hasMetricBeenReported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-direct {p0, p2}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getDocumentsForMigration(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/Collection;

    move-result-object p2

    .line 102
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->timeStart:J

    .line 104
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->reportMetricsForMigration(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 107
    invoke-interface {p3, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasMigratedDocuments(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final reportMetricsForMigration(Landroid/content/Context;I)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/amazon/kindle/content/DocumentMigrationUtils;->timeStart:J

    sub-long v9, v0, v2

    .line 120
    sget v6, Lcom/amazon/kindle/content/DocumentMigrationUtils;->countFailed:I

    sget-wide v7, Lcom/amazon/kindle/content/DocumentMigrationUtils;->totalSize:J

    invoke-direct {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getHasExternalStoragePermission()Z

    move-result v11

    move-object v4, p1

    move v5, p2

    invoke-static/range {v4 .. v11}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->recordMigrationMetric(Landroid/content/Context;IIJJZ)V

    return-void
.end method

.method private final shouldMigrate(Lcom/amazon/kcp/application/IAppSettingsController;)Z
    .locals 0

    .line 296
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAppSettingsController;->hasMigratedDocuments()Z

    move-result p1

    if-nez p1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getScopedStorageUtils()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isMigrationDocsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->getHasExternalStoragePermission()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
