.class final Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;
.super Ljava/lang/Object;
.source "LibraryCoverExternalStorageMigrationManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryCoverExternalStorageMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryCoverExternalStorageMigrationManager.kt\ncom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,30:1\n1256#2,2:31\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryCoverExternalStorageMigrationManager.kt\ncom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1\n*L\n19#1,2:31\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->access$getFilePathDescriptor$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getExternalFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->access$getCoverDAO$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getAllCovers()Ljava/util/List;

    move-result-object v0

    const-string v1, "coverDAO.allCovers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1$1;-><init>(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cover/Cover;

    .line 20
    iget-object v2, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-static {v2}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->access$getCoverService$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-static {v3}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->access$getLibraryService$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    const-string v4, "cover"

    .line 22
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/cover/Cover;->getBookid()Ljava/lang/String;

    move-result-object v1

    .line 23
    iget-object v4, p0, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager$initialize$1;->this$0:Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;

    invoke-static {v4}, Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;->access$getLibraryService$p(Lcom/amazon/kcp/cover/LibraryCoverExternalStorageMigrationManager;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-interface {v3, v1, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 20
    invoke-interface {v2, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method
