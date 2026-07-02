.class public final Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;
.super Ljava/lang/Object;
.source "LibraryCoverExternalStorageMigrationManager.kt"


# instance fields
.field private final coverDAO:Lcom/amazon/kindle/cover/dao/CoverDAO;

.field private final coverService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private final filePathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/io/IPathDescriptor;)V
    .locals 1

    const-string v0, "coverService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverDAO"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePathDescriptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    iput-object p2, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p3, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->coverDAO:Lcom/amazon/kindle/cover/dao/CoverDAO;

    iput-object p4, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->filePathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    return-void
.end method

.method public static final synthetic access$getCoverDAO$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/cover/dao/CoverDAO;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->coverDAO:Lcom/amazon/kindle/cover/dao/CoverDAO;

    return-object p0
.end method

.method public static final synthetic access$getCoverService$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object p0
.end method

.method public static final synthetic access$getFilePathDescriptor$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/io/IPathDescriptor;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->filePathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method


# virtual methods
.method public final initialize()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;-><init>(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)V

    const/4 v2, 0x0

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    return-void
.end method
