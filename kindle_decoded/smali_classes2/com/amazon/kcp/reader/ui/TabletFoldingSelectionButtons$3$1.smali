.class Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;
.super Ljava/lang/Object;
.source "TabletFoldingSelectionButtons.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

.field final synthetic val$buttonView:Landroid/view/View;

.field final synthetic val$customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$buttonView:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$customSelectionButton:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->overflow_button_desc:I

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$500(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$buttonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$502(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;I)I

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$buttonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 287
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->overflow_button_desc:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result v0

    sget v2, Lcom/amazon/kindle/krl/R$string;->annotation_highlight:I

    if-ne v0, v2, :cond_6

    .line 321
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$600(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V

    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    .line 290
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 293
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v4, v4, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v4}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$500(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 294
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v3}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$500(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 295
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$500(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    .line 304
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 306
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setX(F)V

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$600(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->this$1:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;->this$0:Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1$1;-><init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 329
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3$1;->val$buttonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
