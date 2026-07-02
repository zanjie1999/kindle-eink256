.class Lcom/amazon/sitb/android/model/UpsellModel$2;
.super Lcom/amazon/sitb/android/cache/AbstractCacheListener;
.source "UpsellModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/model/UpsellModel;-><init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/reftag/ReftagBundleService;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/cache/AbstractCacheListener<",
        "Lcom/amazon/sitb/android/SeriesInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/model/UpsellModel;

.field final synthetic val$seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/updater/Updater;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    iput-object p2, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->val$seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;

    invoke-direct {p0}, Lcom/amazon/sitb/android/cache/AbstractCacheListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheCleared()V
    .locals 4

    .line 102
    invoke-static {}, Lcom/amazon/sitb/android/model/UpsellModel;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UpsellModel: series cache cleared (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-static {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->access$100(Lcom/amazon/sitb/android/model/UpsellModel;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-static {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->access$100(Lcom/amazon/sitb/android/model/UpsellModel;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->val$seriesUpdater:Lcom/amazon/sitb/android/updater/Updater;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel$2;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-static {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->access$100(Lcom/amazon/sitb/android/model/UpsellModel;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
