.class Lcom/amazon/kindle/content/dao/LibraryDataCache$1;
.super Ljava/lang/Object;
.source "LibraryDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryDataCache;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 192
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$000()Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/content/dao/LibraryDataCache$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/content/dao/LibraryDataCache$1$1;-><init>(Lcom/amazon/kindle/content/dao/LibraryDataCache$1;)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 216
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 217
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 219
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$000()Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Lcom/amazon/kindle/content/IGroupService;->getAllGroups()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupMetadata;

    .line 226
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-virtual {v3, v2, v10}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateGroupForSeriesBinding(Lcom/amazon/kindle/content/GroupMetadata;Ljava/util/Map;)V

    .line 227
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-virtual {v3, v2, v10}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateGroupForSagaSeries(Lcom/amazon/kindle/content/GroupMetadata;Ljava/util/Map;)V

    .line 229
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$000()Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$100()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$300()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 237
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$400()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "KindleContent"

    .line 234
    invoke-interface/range {v1 .. v9}, Lcom/amazon/kindle/content/ILibraryService;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 238
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 240
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-static {v10}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$502(Lcom/amazon/kindle/content/dao/LibraryDataCache;Ljava/util/Map;)Ljava/util/Map;

    .line 247
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-static {v11}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    .line 248
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$602(Lcom/amazon/kindle/content/dao/LibraryDataCache;Ljava/util/Map;)Ljava/util/Map;

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->this$0:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-static {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->access$700(Lcom/amazon/kindle/content/dao/LibraryDataCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 234
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 245
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v2
.end method
