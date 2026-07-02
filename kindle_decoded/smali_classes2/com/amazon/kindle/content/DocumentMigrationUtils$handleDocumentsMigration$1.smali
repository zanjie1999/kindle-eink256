.class final Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;
.super Ljava/lang/Object;
.source "DocumentMigrationUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/DocumentMigrationUtils;->handleDocumentsMigration(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/foundation/internal/IThreadPoolManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field final synthetic $libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/content/ILibraryService;Landroid/content/Context;Lcom/amazon/kcp/application/IAppSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    iput-object p2, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p3, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    iget-object v2, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const-string v3, "libraryService"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->access$getDocumentsForMigration(Lcom/amazon/kindle/content/DocumentMigrationUtils;Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/Collection;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    .line 88
    sget-object v5, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    iget-object v6, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "fileSystem"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v6, v0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->access$migrateDocument(Lcom/amazon/kindle/content/DocumentMigrationUtils;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/io/IFileConnectionFactory;)Z

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/DocumentMigrationUtils;->INSTANCE:Lcom/amazon/kindle/content/DocumentMigrationUtils;

    iget-object v2, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$context:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->access$reportMetricsForMigration(Lcom/amazon/kindle/content/DocumentMigrationUtils;Landroid/content/Context;I)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/content/DocumentMigrationUtils$handleDocumentsMigration$1;->$appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasMigratedDocuments(Z)V

    return-void
.end method
