.class public Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;
.super Ljava/lang/Object;
.source "RecommendationsCoverImageHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handler:Lcom/amazon/readingactions/helpers/KUImageHandler;

.field private final kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

.field private final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/RecommendationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->Companion:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;

    .line 45
    const-class v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amazon/kindle/krx/ui/ColorMode;ZIZLcom/amazon/readingactions/helpers/KUImageHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/data/RecommendationData;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "ZIZ",
            "Lcom/amazon/readingactions/helpers/KUImageHandler;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "recommendations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recommendations:Ljava/util/List;

    iput-object p6, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->handler:Lcom/amazon/readingactions/helpers/KUImageHandler;

    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object p6, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recommendations:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    invoke-direct {p1, p6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-eqz p5, :cond_0

    .line 50
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recommendations:Ljava/util/List;

    invoke-static {p1, p4, p2, p3}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecsWithKu(Ljava/util/List;ILcom/amazon/kindle/krx/ui/ColorMode;Z)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    const-string p2, "ImageBatchDownloader.for\u2026ode, isBottomSheetOpened)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recommendations:Ljava/util/List;

    invoke-static {p1, p4}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forRecs(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    const-string p2, "ImageBatchDownloader.for\u2026mmendations, imageHeight)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    :goto_0
    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)Lcom/amazon/readingactions/helpers/KUImageHandler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->handler:Lcom/amazon/readingactions/helpers/KUImageHandler;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final download()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    return-void
.end method

.method public final getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recommendations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 108
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_title_by_author:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 109
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 108
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "resources.getString(R.st\u2026tAuthorList(rec.authors))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const-string/jumbo v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->Companion:Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;->access$getTAG$p(Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$Companion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting cover drawable [index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "].  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[reloaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[recImages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v2, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v2, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 87
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->get(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 92
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 95
    :cond_4
    iget-object p2, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recommendations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 96
    new-instance p2, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    .line 97
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/ea/ui/PlaceholderCoverDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final listenForImageLoad()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$listenForImageLoad$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper$listenForImageLoad$1;-><init>(Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)V

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->listen(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    return-void
.end method

.method public final load()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->recImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    return-void
.end method

.method public setKUImage(ILandroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "image"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->kuImages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
