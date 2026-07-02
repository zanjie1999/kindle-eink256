.class Lcom/amazon/kindle/cms/ContentManagementSystem$6;
.super Ljava/lang/Object;
.source "ContentManagementSystem.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;->updateDownloadProgress(Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

.field final synthetic val$downloadProgressPercent:I

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;I)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$downloadProgressPercent:I

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

    .line 1171
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-static {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$100(Lcom/amazon/kindle/cms/ContentManagementSystem;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    .line 1177
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cms/api/DownloadProgressCapable;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v0, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    .line 1181
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to update download progress for a nonexistent item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentManagementSystem"

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1187
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-static {v2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$200(Lcom/amazon/kindle/cms/ContentManagementSystem;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    .line 1188
    new-instance v3, Lcom/amazon/kindle/cms/api/Thumbnail;

    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v4, v0, v5}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v4

    .line 1189
    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v5, v0, v6}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v5

    .line 1190
    invoke-interface {v2, v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getExploreCoverLocation(Lcom/amazon/kindle/model/content/IListableBook;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/amazon/kindle/cms/api/Thumbnail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    .line 1194
    invoke-static {v2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$300(Lcom/amazon/kindle/cms/ContentManagementSystem;)Landroid/content/Context;

    move-result-object v2

    .line 1193
    invoke-static {v0, v3, v2}, Lcom/amazon/kindle/cms/CMSUtils;->getDownloadProgressCapableFromMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cms/api/Thumbnail;Landroid/content/Context;)Lcom/amazon/kindle/cms/api/DownloadProgressCapable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-static {v2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$100(Lcom/amazon/kindle/cms/ContentManagementSystem;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1198
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a non identifiable item whose download progress was being updated. Skipping the update for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentManagementSystem"

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 1207
    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    monitor-enter v3

    .line 1208
    :try_start_0
    sget-object v4, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1209
    sget-object v2, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1210
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/cms/api/CMSServer;

    sget-object v4, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    iget v5, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$downloadProgressPercent:I

    .line 1212
    invoke-static {v5}, Lcom/amazon/kindle/cms/api/Progress;->fromPercentage(I)Lcom/amazon/kindle/cms/api/Progress;

    move-result-object v5

    .line 1209
    invoke-interface {v0, v2, v4, v5}, Lcom/amazon/kindle/cms/api/DownloadProgressCapable;->reportDownloadProgressChange(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Progress;)V

    .line 1215
    iget v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$downloadProgressPercent:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_3

    const-string v2, "ContentManagementSystem"

    const-string v4, "Done reporting download progress to CMS."

    .line 1216
    invoke-static {v2, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-static {v2}, Lcom/amazon/kindle/cms/ContentManagementSystem;->access$100(Lcom/amazon/kindle/cms/ContentManagementSystem;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->val$id:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 1222
    :cond_4
    iget-object v4, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$6;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v4}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    .line 1226
    :goto_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    return-object v1
.end method
