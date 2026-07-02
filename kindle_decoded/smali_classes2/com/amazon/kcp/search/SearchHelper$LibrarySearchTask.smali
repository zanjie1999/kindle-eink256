.class Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;
.super Landroid/os/AsyncTask;
.source "SearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibrarySearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/model/content/IListableBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field private query:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/search/SearchHelper;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/search/SearchHelper;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/search/SearchHelper;Lcom/amazon/kcp/search/SearchHelper$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;-><init>(Lcom/amazon/kcp/search/SearchHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 193
    aget-object p1, p1, v1

    .line 194
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchHelper;->startLibrarySearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 196
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->query:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v0, v0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;->query:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/search/ISearchResultListener;->onLibrarySearchComplete(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
