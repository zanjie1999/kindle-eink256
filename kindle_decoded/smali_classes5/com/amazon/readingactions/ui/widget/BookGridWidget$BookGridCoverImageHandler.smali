.class Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Lcom/amazon/readingactions/helpers/KUImageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookGridCoverImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;Lcom/amazon/readingactions/ui/widget/BookGridWidget$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)V

    return-void
.end method


# virtual methods
.method public updateAndReloadBookImage(I)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$100(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/ui/widget/BookGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$100(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/ui/widget/BookGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 254
    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$200(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v2, v2, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 255
    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$200(Lcom/amazon/readingactions/ui/widget/BookGridWidget;)Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridCoverImageHandler;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1, v3}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/readingactions/ui/widget/BookGridView;->reloadCover(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method
