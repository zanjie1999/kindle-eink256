.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->prepareActionMenu(Landroid/view/Menu;Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field final synthetic val$localBookMetadata:Lcom/amazon/kindle/content/ContentMetadata;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/ContentMetadata;Landroid/view/Menu;)V
    .locals 0

    .line 1240
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$localBookMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1246
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$localBookMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getLocalBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 1250
    invoke-static {}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Took to long to get local book! Do not attempt showing periodical keep items at this time."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1254
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
