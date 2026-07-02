.class Lcom/amazon/sitb/android/model/UpsellModel$1;
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
        "Lcom/amazon/sitb/android/BookPrice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/model/UpsellModel;

.field final synthetic val$priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

.field final synthetic val$reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/sitb/android/updater/Updater;Lcom/amazon/sitb/android/reftag/ReftagBundleService;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    iput-object p2, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->val$priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    iput-object p3, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->val$reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    invoke-direct {p0}, Lcom/amazon/sitb/android/cache/AbstractCacheListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheCleared()V
    .locals 4

    .line 89
    invoke-static {}, Lcom/amazon/sitb/android/model/UpsellModel;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UpsellModel: price cache cleared (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-static {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->access$100(Lcom/amazon/sitb/android/model/UpsellModel;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->val$priceUpdater:Lcom/amazon/sitb/android/updater/Updater;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-static {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->access$200(Lcom/amazon/sitb/android/model/UpsellModel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->val$reftagBundleService:Lcom/amazon/sitb/android/reftag/ReftagBundleService;

    iget-object v3, p0, Lcom/amazon/sitb/android/model/UpsellModel$1;->this$0:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-static {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->access$100(Lcom/amazon/sitb/android/model/UpsellModel;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/sitb/android/reftag/ReftagBundleService;->getBundle(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/sitb/android/reftag/ReftagBundle;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/sitb/android/reftag/ReftagBundle;->getPrepareBuyReftagPrefix()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
