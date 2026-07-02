.class public final Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;
.super Ljava/lang/Object;
.source "KRIFThumbnailPage.kt"

# interfaces
.implements Lcom/amazon/krf/platform/KRIFThumbnailPage;


# instance fields
.field private final basePage:Lcom/amazon/krf/platform/PageModel;

.field private final bpOffset:I

.field private final krxPositionRange$delegate:Lkotlin/Lazy;

.field private volatile pageManager:Lcom/amazon/krf/platform/KRIFPageManager;

.field private final pageModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/KRIFPageManager;Lcom/amazon/krf/platform/PageModel;I)V
    .locals 1

    const-string/jumbo v0, "pageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basePage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->basePage:Lcom/amazon/krf/platform/PageModel;

    iput p3, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->bpOffset:I

    .line 67
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->pageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    .line 74
    new-instance p1, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;

    invoke-direct {p1, p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$pageModel$2;-><init>(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->pageModel$delegate:Lkotlin/Lazy;

    .line 88
    new-instance p1, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;

    invoke-direct {p1, p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage$krxPositionRange$2;-><init>(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->krxPositionRange$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBasePage$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/PageModel;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->basePage:Lcom/amazon/krf/platform/PageModel;

    return-object p0
.end method

.method public static final synthetic access$getBpOffset$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->bpOffset:I

    return p0
.end method

.method public static final synthetic access$getPageManager$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/KRIFPageManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->pageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    return-object p0
.end method

.method public static final synthetic access$getPageModel$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;)Lcom/amazon/krf/platform/PageModel;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->getPageModel()Lcom/amazon/krf/platform/PageModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPageManager$p(Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;Lcom/amazon/krf/platform/KRIFPageManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->pageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    return-void
.end method

.method private final getKrxPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->krxPositionRange$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IPositionRange;

    return-object v0
.end method

.method private final getPageModel()Lcom/amazon/krf/platform/PageModel;
    .locals 1

    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->pageModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/PageModel;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->pageManager:Lcom/amazon/krf/platform/KRIFPageManager;

    return-void
.end method

.method public getKRFPageModel()Lcom/amazon/krf/platform/PageModel;
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->getPageModel()Lcom/amazon/krf/platform/PageModel;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetFromBasePage()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->bpOffset:I

    return v0
.end method

.method public getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFLazyThumbnailPage;->getKrxPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    const-string v1, "krxPositionRange"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
