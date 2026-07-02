.class public Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;
.super Lcom/amazon/kedu/flashcards/views/LoadableView;
.source "LoadableGraphicalHighlightView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kedu/flashcards/views/LoadableView<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private ghl:Landroid/widget/ImageView;

.field private hasContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_graphical_highlight_view:I

    sput v0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    sget v0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent:Z

    .line 25
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    sget v0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent:Z

    .line 31
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    sget p3, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/LoadableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent:Z

    .line 37
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setExpandability(Z)V

    .line 43
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->ghl_image_view:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->ghl:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->ghl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->ghl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 64
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kedu/flashcards/R$dimen;->fc_quiz_card_drop_shadow_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 63
    invoke-static {v0, v1, v2, p1, v3}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->draw(Landroid/widget/ImageView;IILandroid/graphics/Canvas;I)V

    return-void
.end method

.method public getExpandableButtonLabel()Ljava/lang/String;
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_zoom_image_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent:Z

    return v0
.end method

.method public onLoadingComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->ghl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableView;->onLoadingComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onLoadingComplete(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->onLoadingComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V
    .locals 7

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent:Z

    .line 49
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_quiz_card_drop_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, p3, v0

    sub-int v6, p4, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->loadGraphicalHighlight(Landroid/content/Context;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Z

    return-void
.end method
