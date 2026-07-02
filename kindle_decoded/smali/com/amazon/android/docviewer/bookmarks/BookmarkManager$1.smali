.class Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;
.super Ljava/lang/Object;
.source "BookmarkManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/nwstd/persistence/LocalPeriodicalState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;->this$0:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->getInstance()Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;->this$0:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-static {v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->access$000(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;->this$0:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-static {v1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->access$100(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;->this$0:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-static {v2}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->access$100(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->loadLocalBookState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-static {}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager$1;->call()Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    move-result-object v0

    return-object v0
.end method
