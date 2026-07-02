.class Lcom/amazon/kindle/cms/ContentManagementSystem$2$1;
.super Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem$2;Ljava/lang/String;)V
    .locals 0

    .line 231
    iget-object p1, p1, Lcom/amazon/kindle/cms/ContentManagementSystem$2;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v0, :cond_0

    const-string v0, "ContentManagementSystem"

    const-string v1, "Lost our CMS Server when trying to add Store redirects. They might not work."

    .line 236
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "com.amazon.webapp.msg.openWebApp.KINDLE_STORE"

    .line 241
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x1

    new-array v1, v8, [Landroid/net/Uri;

    invoke-static {}, Lcom/amazon/kindle/cms/api/ItemSimilarities;->getLibraryUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    new-instance v4, Ljava/util/ArrayList;

    const-string v1, "open"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    sget-object v2, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    const-string v6, "com.amazon.webapp"

    move-object v1, v0

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/api/CMSServer;->redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/Uri;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v2}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    .line 249
    invoke-static {v2}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    .line 250
    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 251
    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v2

    .line 248
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    const-string v1, "explore"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    sget-object v2, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    const-string v6, "com.amazon.webapp"

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/api/CMSServer;->redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
