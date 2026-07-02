.class Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;
.super Landroid/os/AsyncTask;
.source "WordWiseDecorationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->createDecorationsForPageAsync(Lcom/amazon/kindle/krx/reader/IPage;)V
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
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

.field final synthetic val$iPage:Lcom/amazon/kindle/krx/reader/IPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;Lcom/amazon/kindle/krx/reader/IPage;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->val$iPage:Lcom/amazon/kindle/krx/reader/IPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 205
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->val$iPage:Lcom/amazon/kindle/krx/reader/IPage;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;)V"
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No decoration created; no need to refresh the page"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Created decorations in background; refreshing the page"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 221
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    return-void
.end method
