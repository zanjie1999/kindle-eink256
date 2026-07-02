.class Lcom/amazon/kindle/content/LibraryContentService$11;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$forced:Z

.field final synthetic val$performSilentUpdate:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;ZZ)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-boolean p2, p0, Lcom/amazon/kindle/content/LibraryContentService$11;->val$performSilentUpdate:Z

    iput-boolean p3, p0, Lcom/amazon/kindle/content/LibraryContentService$11;->val$forced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v8, p0

    .line 1922
    iget-object v0, v8, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->access$800(Lcom/amazon/kindle/content/LibraryContentService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1923
    :try_start_0
    iget-object v0, v8, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getLocalFilesPendingDeletion()Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1924
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1925
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1926
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1927
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v1, "ROWID"

    .line 1928
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const/4 v1, -0x1

    .line 1930
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1931
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1932
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1935
    iget-object v2, v8, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v2}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1937
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    .line 1938
    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1941
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteBookCovers(Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/amazon/kcp/cover/ICoverCacheManager;->clearCache(Ljava/lang/String;)V

    .line 1946
    :cond_0
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1947
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1949
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1952
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->deleteAll()V

    .line 1954
    :cond_1
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1955
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1957
    new-instance v6, Lcom/amazon/kindle/content/LibraryContentService$11$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v4, v5

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v19, v11

    move-object v11, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/content/LibraryContentService$11$1;-><init>(Lcom/amazon/kindle/content/LibraryContentService$11;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 2008
    invoke-static {v0, v11}, Lcom/amazon/kindle/io/FileSystemHelper;->executeSequentialFileOperation(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move v1, v15

    move/from16 v0, v18

    move/from16 v11, v19

    goto/16 :goto_0

    .line 2014
    :cond_2
    iget-object v0, v8, Lcom/amazon/kindle/content/LibraryContentService$11;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->access$500(Lcom/amazon/kindle/content/LibraryContentService;)Lcom/amazon/kindle/content/dao/ILibraryContentDAO;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->clearListOfFilesPendingDeletion(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_4

    .line 2015
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1923
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_3

    .line 2015
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 2016
    :catch_0
    :try_start_6
    invoke-static {}, Lcom/amazon/kindle/content/LibraryContentService;->access$900()Ljava/lang/String;

    .line 2018
    :cond_4
    :goto_2
    monitor-exit v9

    return-void

    :goto_3
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
