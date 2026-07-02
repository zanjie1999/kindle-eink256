.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;
.super Ljava/lang/Object;
.source "BaseDefinitionContainerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Landroid/content/Context;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 375
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    .line 376
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->getDictionaryResourceId()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->getPreferredDictionaryResourceId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;-><init>(Landroid/content/Context;II)V

    .line 377
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;

    .line 378
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    .line 379
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->getDictionaryResourceId()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->getPreferredDictionaryResourceId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;-><init>(Landroid/content/Context;II)V

    .line 381
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryTitles()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 382
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryTitles()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 383
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iput-object v0, v1, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    .line 385
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryLanguages()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 387
    new-instance v1, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CustomComparator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$CustomComparator;-><init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iput-object v1, v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    .line 392
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->setPreferredDictionaries(Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;)V

    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->dictionaryList:Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryLanguages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->setDictionaries(Ljava/util/ArrayList;)V

    .line 394
    sget-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->shouldForceFileSystem:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->hasCorPfmChanged:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 395
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->hasCorPfmChanged:Z

    .line 396
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->shouldForceFileSystem:Z

    .line 397
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->libraryService:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LibraryContentService;->forceRescanFileSystem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 402
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while force Rescanning FileSystem"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$4;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->scanDBForUserDictionaries()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 412
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while scanning DB for dictionaries"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
