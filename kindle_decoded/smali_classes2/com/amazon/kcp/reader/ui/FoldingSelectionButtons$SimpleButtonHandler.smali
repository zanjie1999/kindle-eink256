.class final Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;
.super Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;
.source "FoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SimpleButtonHandler"
.end annotation


# instance fields
.field private final customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

.field private final imageView:Landroid/widget/ImageView;

.field private final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V
    .locals 1

    .line 433
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    .line 434
    iget-object v0, p1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/view/View;)V

    .line 435
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 436
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$id;->image_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->imageView:Landroid/widget/ImageView;

    .line 437
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$id;->text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->textView:Landroid/widget/TextView;

    .line 439
    new-instance p2, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;)V

    .line 445
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    return-object p0
.end method


# virtual methods
.method getButton()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    return-object v0
.end method

.method getButtonState()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v0

    return-object v0
.end method

.method updateButtonView()V
    .locals 7

    .line 449
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->updateButtonView()V

    .line 451
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 461
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$bool;->top_level_selection_buttons_have_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_5

    .line 463
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->textView:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/widget/TextView;)V

    .line 465
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_5

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->textView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 471
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/krl/R$string;->speak_selection_button_title:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v3, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
