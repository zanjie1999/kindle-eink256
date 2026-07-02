.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;
.super Ljava/lang/Object;
.source "BookGridController.java"

# interfaces
.implements Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KUInfoChangeListener"
.end annotation


# instance fields
.field private asinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

.field private imageHeight:I

.field private kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;


# direct methods
.method constructor <init>(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;ILcom/amazon/ea/ui/widget/bookgrid/BookGridView;Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;",
            "I",
            "Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 333
    iput p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->imageHeight:I

    .line 334
    iput-object p3, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    .line 335
    iput-object p4, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 336
    iput-object p5, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->asinList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;)Ljava/util/List;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->asinList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 341
    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    .line 342
    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 343
    iput-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->asinList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 3

    .line 348
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New purchase info received.  [isKUBook="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 358
    :cond_1
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->bookGridView:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    if-nez p2, :cond_2

    return-void

    .line 362
    :cond_2
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 363
    invoke-static {}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KUInfoChangeListener was notified of a change for the wrong asin; this shouldn\'t happen"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 368
    :cond_3
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    .line 370
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 371
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 377
    :goto_0
    invoke-static {p2, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addKUBadgeParam(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)Ljava/lang/String;

    move-result-object p2

    .line 378
    iget v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->imageHeight:I

    invoke-static {p2, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 381
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;->destroy()V

    .line 385
    :cond_5
    new-instance v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener$1;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$KUInfoChangeListener;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 410
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/amazon/ea/purchase/PurchaseManager;->unregisterListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    return-void
.end method
