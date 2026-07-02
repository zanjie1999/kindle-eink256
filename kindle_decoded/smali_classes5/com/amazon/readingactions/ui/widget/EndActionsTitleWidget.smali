.class public final Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;
.super Lcom/amazon/readingactions/ui/widget/TitleWidget;
.source "EndActionsTitleWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;


# instance fields
.field private final coverImage:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;->Companion:Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;)V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;->coverImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected prepareAndLoadImage()V
    .locals 0

    return-void
.end method

.method protected setImageAndHeaderGradient()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->title_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.title_widget)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 48
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->book_cover_image_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.book_cover_image_frame)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout;

    .line 49
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/TitleWidget;->view:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/ea/R$id;->book_cover_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "view.findViewById(R.id.book_cover_image)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    .line 51
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;->coverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;->coverImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setHeaderGradient(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout;)V

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 55
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v2, "EndActionsPlugin.sdk"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    const-string v2, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    .line 56
    invoke-static {v1, v0}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
