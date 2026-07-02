.class public final Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;
.super Ljava/lang/Object;
.source "KRIFThumbnailPage.kt"

# interfaces
.implements Lcom/amazon/krf/platform/KRIFThumbnailPage;


# instance fields
.field private final krxPositionRange$delegate:Lkotlin/Lazy;

.field private final pageModel:Lcom/amazon/krf/platform/PageModel;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/PageModel;)V
    .locals 1

    const-string/jumbo v0, "pageModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->pageModel:Lcom/amazon/krf/platform/PageModel;

    .line 31
    new-instance p1, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage$krxPositionRange$2;

    invoke-direct {p1, p0}, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage$krxPositionRange$2;-><init>(Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->krxPositionRange$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPageModel$p(Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;)Lcom/amazon/krf/platform/PageModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->pageModel:Lcom/amazon/krf/platform/PageModel;

    return-object p0
.end method

.method private final getKrxPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->krxPositionRange$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IPositionRange;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getKRFPageModel()Lcom/amazon/krf/platform/PageModel;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->pageModel:Lcom/amazon/krf/platform/PageModel;

    return-object v0
.end method

.method public getOffsetFromBasePage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFBaseThumbnailPage;->getKrxPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    const-string v1, "krxPositionRange"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
