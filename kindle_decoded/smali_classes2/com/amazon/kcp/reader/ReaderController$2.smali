.class Lcom/amazon/kcp/reader/ReaderController$2;
.super Landroid/os/AsyncTask;
.source "ReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->doSearchCleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;)V
    .locals 0

    .line 339
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderController$2;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 341
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/amazon/kcp/search/AndroidSearchRecentSuggestionsProvider;->clearSearchHistory(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method
