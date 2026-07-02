.class public final Lcom/amazon/readingactions/listeners/KUInfoChangeListener;
.super Ljava/lang/Object;
.source "KUInfoChangeListener.kt"

# interfaces
.implements Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;
    }
.end annotation


# static fields
.field private static final COVER_RELOAD_DELAY_MS:J = 0x3e8L

.field public static final Companion:Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;

.field private static final TAG:Ljava/lang/String;


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

.field private handler:Lcom/amazon/readingactions/helpers/KUImageHandler;

.field private final imageHeight:I

.field private recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

.field private recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->Companion:Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;

    .line 29
    const-class v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/sidecar/def/data/RecommendationData;ILjava/util/List;Landroid/view/View;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;Lcom/amazon/readingactions/helpers/KUImageHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/data/RecommendationData;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;",
            "Lcom/amazon/readingactions/helpers/KUImageHandler;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "recommendationsBookCoverImageHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iput p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->imageHeight:I

    iput-object p3, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->asinList:Ljava/util/List;

    iput-object p4, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->view:Landroid/view/View;

    iput-object p5, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    iput-object p6, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->handler:Lcom/amazon/readingactions/helpers/KUImageHandler;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/amazon/readingactions/listeners/KUInfoChangeListener;)Lcom/amazon/readingactions/helpers/KUImageHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->handler:Lcom/amazon/readingactions/helpers/KUImageHandler;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 35
    iput-object v0, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->asinList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
    .locals 3

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->Companion:Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;

    invoke-static {v0}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;->access$getTAG$p(Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;)Ljava/lang/String;

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

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/ea/purchase/model/PurchaseInfo;->isKUBook()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 49
    sget-object p1, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->Companion:Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;

    invoke-static {p1}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;->access$getTAG$p(Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KUInfoChangeListener was notified of a change for the wrong asin; this shouldn\'t happen"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_2
    iget-object p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addKUBadgeParam(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;)Ljava/lang/String;

    move-result-object p2

    .line 55
    iget v0, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->imageHeight:I

    invoke-static {p2, v0}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 58
    invoke-direct {p0}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->destroy()V

    .line 63
    :cond_3
    new-instance v0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;-><init>(Lcom/amazon/readingactions/listeners/KUInfoChangeListener;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 68
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/amazon/ea/purchase/PurchaseManager;->unregisterListener(Ljava/lang/String;Lcom/amazon/ea/purchase/OnPurchaseInfoChangeListener;)V

    return-void

    .line 53
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 48
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public final processImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string p2, "asin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object p2, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->Companion:Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;

    invoke-static {p2}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;->access$getTAG$p(Lcom/amazon/readingactions/listeners/KUInfoChangeListener$Companion;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an updated image with a KU badge. [hasExistingBitmap?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->asinList:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eqz p3, :cond_1

    .line 77
    iget-object p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->recommendationsBookCoverImageHelper:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {p2, p1, p3}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->setKUImage(ILandroid/graphics/Bitmap;)V

    .line 78
    iget-object p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->view:Landroid/view/View;

    if-eqz p2, :cond_1

    new-instance p3, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;

    invoke-direct {p3, p0, p1}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;-><init>(Lcom/amazon/readingactions/listeners/KUInfoChangeListener;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->destroy()V

    return-void

    .line 75
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
