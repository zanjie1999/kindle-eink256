.class final Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;
.super Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;
.source "FoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpinnerButtonHandler"
.end annotation


# instance fields
.field private category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

.field private final customSelectionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V
    .locals 2

    .line 504
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    .line 505
    iget-object v0, p1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newSpinnerTopLevelButtonView(Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/view/View;)V

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->customSelectionButtons:Ljava/util/List;

    .line 506
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    .line 508
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;)Ljava/util/List;
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->customSelectionButtons:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method add(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->customSelectionButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)V"
        }
    .end annotation

    .line 521
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 522
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->customSelectionButtons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method getButtonState()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->customSelectionButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 537
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-ne v1, v2, :cond_0

    return-object v2

    .line 542
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->HIDDEN:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    return-object v0
.end method

.method getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->customSelectionButtons:Ljava/util/List;

    return-object v0
.end method

.method getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    return-object v0
.end method

.method updateButtonView()V
    .locals 3

    .line 547
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->updateButtonView()V

    .line 550
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->access$400()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateButtonView() could not update the image for button with category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because the imageView is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getDrawable(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 560
    invoke-static {}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->access$400()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateButtonView() could not update the text color for button with category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->category:Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because the textView is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/widget/TextView;)V

    :goto_1
    return-void
.end method
