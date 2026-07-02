.class Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;
.super Landroid/os/AsyncTask;
.source "BookRecommendationsPanelContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/amazon/ea/sidecar/def/Sidecar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 89
    iput-object p2, p0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->parseAndCacheSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;->doInBackground([Ljava/lang/Void;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/amazon/ea/sidecar/def/Sidecar;)V
    .locals 1

    if-nez p1, :cond_1

    .line 99
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no sidecar parsed, will not refresh left nav for book recommendations"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 106
    :cond_1
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;->LEFT:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshPanel(Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lcom/amazon/ea/sidecar/def/Sidecar;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider$1;->onPostExecute(Lcom/amazon/ea/sidecar/def/Sidecar;)V

    return-void
.end method
