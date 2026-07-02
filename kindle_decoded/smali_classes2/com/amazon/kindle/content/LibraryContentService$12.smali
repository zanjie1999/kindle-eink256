.class Lcom/amazon/kindle/content/LibraryContentService$12;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->getDeletedOrMovedCallableForFilepath(Ljava/lang/String;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Ljava/lang/String;)V
    .locals 0

    .line 2143
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2143
    invoke-virtual {p0}, Lcom/amazon/kindle/content/LibraryContentService$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2147
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/content/LibraryContentService;->getLocalContentByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 2152
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->val$filePath:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v5, v1

    goto :goto_0

    .line 2153
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    .line 2152
    :goto_0
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/amazon/kindle/content/LibraryContentService;->deleteAssociatedFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 2157
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->val$filePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->exists(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v2

    .line 2158
    invoke-static {}, Lcom/amazon/kindle/content/LibraryContentService;->access$900()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileExists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2159
    invoke-static {}, Lcom/amazon/kindle/content/LibraryContentService;->access$900()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Metadata: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 2161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2162
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    iget-object v3, p0, Lcom/amazon/kindle/content/LibraryContentService$12;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v3, v0, v2}, Lcom/amazon/kindle/content/LibraryContentService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    :cond_2
    return-object v1
.end method
