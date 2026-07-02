.class Lcom/amazon/kindle/cms/ContentManagementSystem$1$1;
.super Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem$1;Ljava/lang/String;)V
    .locals 0

    .line 198
    iget-object p1, p1, Lcom/amazon/kindle/cms/ContentManagementSystem$1;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v1, :cond_0

    const-string v0, "ContentManagementSystem"

    const-string v1, "Lost our CMS Server when trying to add GoodReads redirects. They might not work."

    .line 203
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    .line 209
    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v2

    .line 208
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    sget-object v2, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "view_on_goodreads"

    .line 211
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v0, "com.goodreads.kindle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "com.goodreads.kindle"

    .line 210
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/api/CMSServer;->redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
