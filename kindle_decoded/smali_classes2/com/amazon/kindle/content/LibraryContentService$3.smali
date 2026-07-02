.class Lcom/amazon/kindle/content/LibraryContentService$3;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->handleDocumentSizeMigration(Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/download/assets/IAssetStateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field final synthetic val$settingsController:Lcom/amazon/kcp/application/IAppSettingsController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAppSettingsController;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->val$assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iput-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->val$settingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryContentService;->access$100(Lcom/amazon/kindle/content/LibraryContentService;)Ljava/util/Collection;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 290
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->val$assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getLocalContentSize(Lcom/amazon/kindle/model/content/IBookID;)J

    move-result-wide v2

    .line 291
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 292
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v2, v1, v4}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$3;->val$settingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasMigratedDocumentSizeInformation(Z)V

    return-void
.end method
