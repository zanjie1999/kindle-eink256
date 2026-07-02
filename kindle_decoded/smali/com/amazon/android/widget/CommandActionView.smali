.class Lcom/amazon/android/widget/CommandActionView;
.super Landroid/widget/LinearLayout;
.source "CommandActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;,
        Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final buttonAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private buttonPadding:I

.field private commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

.field private enableTextWrapInPopup:Z

.field private itemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

.field private itemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

.field private final itemViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/widget/IInternalWidgetItem;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final itemViewOnClickListener:Landroid/view/View$OnClickListener;

.field private maxVisibleButtons:I

.field private overflowMenuButton:Lcom/amazon/android/widget/OverflowMenuButton;

.field private popupButtonItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/IInternalWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

.field private showIconsInPopup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/android/widget/CommandActionView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/widget/CommandActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/widget/CommandActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    const/4 p2, 0x1

    .line 75
    iput p2, p0, Lcom/amazon/android/widget/CommandActionView;->maxVisibleButtons:I

    .line 80
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    .line 87
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->popupButtonItems:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

    .line 101
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    const/4 p3, 0x0

    .line 107
    iput p3, p0, Lcom/amazon/android/widget/CommandActionView;->buttonPadding:I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    .line 119
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->overflowMenuButton:Lcom/amazon/android/widget/OverflowMenuButton;

    .line 125
    iput-boolean p2, p0, Lcom/amazon/android/widget/CommandActionView;->showIconsInPopup:Z

    .line 130
    iput-boolean p3, p0, Lcom/amazon/android/widget/CommandActionView;->enableTextWrapInPopup:Z

    .line 136
    new-instance p1, Lcom/amazon/android/widget/CommandActionView$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandActionView$1;-><init>(Lcom/amazon/android/widget/CommandActionView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance p1, Lcom/amazon/android/widget/CommandActionView$2;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandActionView$2;-><init>(Lcom/amazon/android/widget/CommandActionView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->buttonAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    const/4 p2, 0x1

    .line 75
    iput p2, p0, Lcom/amazon/android/widget/CommandActionView;->maxVisibleButtons:I

    .line 80
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    .line 87
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->popupButtonItems:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

    .line 101
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    const/4 p3, 0x0

    .line 107
    iput p3, p0, Lcom/amazon/android/widget/CommandActionView;->buttonPadding:I

    .line 113
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    .line 119
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->overflowMenuButton:Lcom/amazon/android/widget/OverflowMenuButton;

    .line 125
    iput-boolean p2, p0, Lcom/amazon/android/widget/CommandActionView;->showIconsInPopup:Z

    .line 130
    iput-boolean p3, p0, Lcom/amazon/android/widget/CommandActionView;->enableTextWrapInPopup:Z

    .line 136
    new-instance p1, Lcom/amazon/android/widget/CommandActionView$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandActionView$1;-><init>(Lcom/amazon/android/widget/CommandActionView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance p1, Lcom/amazon/android/widget/CommandActionView$2;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandActionView$2;-><init>(Lcom/amazon/android/widget/CommandActionView;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->buttonAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/widget/CommandActionView;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/CommandActionView;->onClickButtonView(Landroid/view/View;)V

    return-void
.end method

.method private createImageButtonLayout(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/AbstractActionWidgetItem;)Landroid/widget/FrameLayout;
    .locals 7

    .line 495
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    sget v1, Lcom/amazon/kindle/wl/R$layout;->command_bar_action_item:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 498
    invoke-virtual {p2, v0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    if-nez p1, :cond_1

    .line 505
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string p2, "CommandBar Button\'s Layout didn\'t inflate properly"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 509
    :cond_1
    sget v4, Lcom/amazon/kindle/wl/R$id;->action_button_image:I

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 510
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    iget-object v4, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    const/4 v5, -0x2

    if-eqz v4, :cond_2

    .line 513
    iget v6, v4, Lcom/amazon/android/widget/CommandBarAttrs;->actionButtonImageHeight:I

    goto :goto_0

    :cond_2
    const/4 v6, -0x2

    :goto_0
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v4, :cond_3

    .line 514
    iget v5, v4, Lcom/amazon/android/widget/CommandBarAttrs;->actionButtonImageWidth:I

    :cond_3
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 516
    invoke-virtual {p2}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 517
    iget v1, p0, Lcom/amazon/android/widget/CommandActionView;->buttonPadding:I

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 518
    invoke-virtual {p2, v0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    new-instance v0, Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;

    invoke-direct {v0, p2, v3}, Lcom/amazon/android/widget/CommandActionView$WidgetOnLongClickListener;-><init>(Lcom/amazon/android/widget/AbstractActionWidgetItem;Lcom/amazon/android/widget/CommandActionView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 521
    iget-object p2, p0, Lcom/amazon/android/widget/CommandActionView;->buttonAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p1
.end method

.method private createOverflowButton(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    if-nez v0, :cond_0

    .line 311
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string v0, "Cannot create an overflow window button without CommandBarAttrs."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 316
    :cond_0
    new-instance v1, Lcom/amazon/android/widget/OverflowMenuButton;

    iget v0, v0, Lcom/amazon/android/widget/CommandBarAttrs;->overflowButtonColor:I

    invoke-direct {v1, p0, v0}, Lcom/amazon/android/widget/OverflowMenuButton;-><init>(Lcom/amazon/android/widget/CommandActionView;I)V

    .line 317
    invoke-direct {p0, p1, v1}, Lcom/amazon/android/widget/CommandActionView;->createWidgetButtonView(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/IInternalWidgetItem;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget v0, Lcom/amazon/kindle/wl/R$id;->command_bar_item_tag:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 321
    iput-object v1, p0, Lcom/amazon/android/widget/CommandActionView;->overflowMenuButton:Lcom/amazon/android/widget/OverflowMenuButton;

    goto :goto_0

    .line 323
    :cond_1
    sget-object v0, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string v1, "Could not create overflow button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method private createPopupButtonView(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/IInternalWidgetItem;)Landroid/view/View;
    .locals 1

    .line 558
    instance-of v0, p2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v0, :cond_0

    .line 559
    check-cast p2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/CommandActionView;->createPopupWindowButton(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/AbstractActionWidgetItem;)Landroid/widget/LinearLayout;

    move-result-object p1

    goto :goto_0

    .line 561
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CommandBar does not support "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private createPopupWindowButton(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/AbstractActionWidgetItem;)Landroid/widget/LinearLayout;
    .locals 7

    .line 576
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    sget v1, Lcom/amazon/kindle/wl/R$layout;->command_bar_popup_button:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 580
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string p2, "CommandBarPopupWindow\'s LinearLayout didn\'t inflate properly"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 584
    :cond_0
    iget-object v3, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    if-nez v3, :cond_1

    .line 586
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string p2, "Cannot create a popup window button without CommandBarAttrs. How did you even get here without catching an IllegalStateException?"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 591
    :cond_1
    sget v4, Lcom/amazon/kindle/wl/R$id;->button_icon:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 592
    sget v5, Lcom/amazon/kindle/wl/R$id;->button_text:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 594
    iget-boolean v6, p0, Lcom/amazon/android/widget/CommandActionView;->showIconsInPopup:Z

    if-eqz v6, :cond_2

    invoke-virtual {p2, v0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 596
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 598
    iget v6, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowImageTextGap:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 599
    iget v6, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowImageWidth:I

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 600
    iget v6, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowImageHeight:I

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 601
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    .line 603
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/android/widget/CommandActionView;->enableTextWrapInPopup:Z

    if-eqz v1, :cond_4

    .line 607
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x1

    .line 608
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 610
    :cond_4
    invoke-virtual {p2, v0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget v1, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextHeight:I

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 612
    invoke-virtual {p2}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getDisplayState()Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    move-result-object v1

    sget-object v4, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->ENABLED:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    if-ne v1, v4, :cond_5

    .line 613
    iget v1, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextColor:I

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 615
    :cond_5
    iget v1, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowDisabledTextColor:I

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getDisplayState()Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    move-result-object v1

    sget-object v4, Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;->DISABLED_MESSAGE:Lcom/amazon/android/widget/AbstractInternalWidgetItem$DisplayState;

    if-ne v1, v4, :cond_6

    .line 618
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 619
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 622
    :cond_6
    iget v1, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextSize:F

    invoke-virtual {v5, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 623
    iget-object v1, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowTextFont:Landroid/graphics/Typeface;

    if-eqz v1, :cond_7

    .line 624
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 627
    :cond_7
    invoke-virtual {p2, v0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 628
    iget v0, v3, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowButtonPadding:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 631
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->buttonAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 634
    sget v0, Lcom/amazon/kindle/wl/R$id;->command_bar_item_tag:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method private createWidgetButtonView(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/IInternalWidgetItem;)Landroid/view/View;
    .locals 1

    .line 436
    instance-of v0, p2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v0, :cond_0

    .line 437
    check-cast p2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/CommandActionView;->createImageButtonLayout(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/AbstractActionWidgetItem;)Landroid/widget/FrameLayout;

    move-result-object p1

    goto :goto_0

    .line 439
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CommandBar does not support "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getPreferenceForItem(Lcom/amazon/android/widget/IInternalWidgetItem;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;
    .locals 1

    .line 304
    instance-of v0, p1, Lcom/amazon/android/widget/ICommandItemPresenter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/android/widget/ICommandItemPresenter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/widget/ICommandItemPresenter;->getDisplayPreference(Landroid/content/Context;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->NO_PREFERENCE:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    :goto_1
    return-object p1
.end method

.method private onClickButtonView(Landroid/view/View;)V
    .locals 4

    .line 450
    sget v0, Lcom/amazon/kindle/wl/R$id;->command_bar_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 451
    instance-of v0, p1, Lcom/amazon/android/widget/IInternalWidgetItem;

    if-nez v0, :cond_0

    goto :goto_2

    .line 456
    :cond_0
    check-cast p1, Lcom/amazon/android/widget/IInternalWidgetItem;

    .line 457
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 460
    :goto_0
    instance-of v3, p1, Lcom/amazon/android/widget/OverflowMenuButton;

    if-eqz v3, :cond_2

    .line 461
    check-cast p1, Lcom/amazon/android/widget/OverflowMenuButton;

    .line 462
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/android/widget/OverflowMenuButton;->onClick(Landroid/content/Context;)Z

    move-result v1

    .line 464
    iget-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 466
    invoke-interface {p1, p0}, Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;->onOverflowClicked(Lcom/amazon/android/widget/CommandActionView;)V

    goto :goto_1

    .line 468
    :cond_2
    instance-of v3, p1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v3, :cond_3

    .line 469
    check-cast p1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    .line 470
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->onClick(Landroid/content/Context;)Z

    move-result v1

    .line 472
    iget-object v3, p0, Lcom/amazon/android/widget/CommandActionView;->itemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 474
    invoke-interface {v3, p0, p1}, Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;->onItemClicked(Lcom/amazon/android/widget/CommandActionView;Lcom/amazon/android/widget/IInternalWidgetItem;)V

    goto :goto_1

    .line 477
    :cond_3
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string v3, "Clicked on a button with a backing IInternalWidgetItem that isn\'t supported"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 481
    invoke-virtual {v0}, Lcom/amazon/android/widget/CommandBarPopupWindow;->dismissPopup()V

    :cond_5
    return-void

    .line 452
    :cond_6
    :goto_2
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string v0, "Button that has no backing IInternalWidgetItem. Cannot do anything."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateButtonView(Landroid/view/View;Lcom/amazon/android/widget/IInternalWidgetItem;)V
    .locals 3

    .line 536
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v0, :cond_0

    .line 537
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 538
    check-cast p2, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    .line 539
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateChildren()V
    .locals 13

    .line 238
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lcom/amazon/android/widget/CommandActionView;->overflowMenuButton:Lcom/amazon/android/widget/OverflowMenuButton;

    .line 241
    iget-object v2, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 243
    iget v2, p0, Lcom/amazon/android/widget/CommandActionView;->maxVisibleButtons:I

    if-gtz v2, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/amazon/android/widget/CommandActionView;->itemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {v3}, Lcom/amazon/android/widget/WidgetItemGroup;->getItems()Ljava/util/List;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 258
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v5, v4, :cond_a

    .line 265
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/android/widget/IInternalWidgetItem;

    if-nez v10, :cond_4

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Had a null IInternalWidgetItem at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ". Skipping..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 273
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    add-int/lit8 v12, v2, -0x1

    if-ne v11, v12, :cond_6

    if-nez v7, :cond_5

    if-eqz v8, :cond_6

    .line 276
    :cond_5
    invoke-direct {p0, v3}, Lcom/amazon/android/widget/CommandActionView;->createOverflowButton(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    .line 280
    :cond_6
    invoke-direct {p0, v10}, Lcom/amazon/android/widget/CommandActionView;->getPreferenceForItem(Lcom/amazon/android/widget/IInternalWidgetItem;)Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    move-result-object v11

    if-nez v9, :cond_8

    .line 281
    sget-object v12, Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/android/widget/ICommandItemPresenter$DisplayPreference;

    invoke-virtual {v12, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    .line 285
    :cond_7
    invoke-direct {p0, v3, v10}, Lcom/amazon/android/widget/CommandActionView;->createWidgetButtonView(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/IInternalWidgetItem;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 287
    invoke-virtual {p0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v12, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget v12, Lcom/amazon/kindle/wl/R$id;->command_bar_item_tag:I

    invoke-virtual {v11, v12, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    .line 282
    :cond_8
    :goto_2
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    if-eqz v8, :cond_b

    if-nez v9, :cond_b

    .line 297
    invoke-direct {p0, v3}, Lcom/amazon/android/widget/CommandActionView;->createOverflowButton(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    :cond_b
    iput-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->popupButtonItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPopupButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/IInternalWidgetItem;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->popupButtonItems:Ljava/util/List;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 646
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 647
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/amazon/android/widget/CommandBarPopupWindow;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 655
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 656
    iget-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {p1}, Lcom/amazon/android/widget/CommandBarPopupWindow;->dismissPopup()V

    :cond_0
    return-void
.end method

.method refreshIcon(Lcom/amazon/android/widget/IWidgetItem;)V
    .locals 3

    .line 395
    instance-of v0, p1, Lcom/amazon/android/widget/IInternalWidgetItem;

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/android/widget/IInternalWidgetItem;

    .line 401
    iget-object v1, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 404
    invoke-direct {p0, v1, v0}, Lcom/amazon/android/widget/CommandActionView;->updateButtonView(Landroid/view/View;Lcom/amazon/android/widget/IInternalWidgetItem;)V

    goto :goto_0

    .line 406
    :cond_1
    sget-object v0, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to refresh icon for a View we don\'t have. Item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method refreshIcons()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 383
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/IInternalWidgetItem;

    invoke-direct {p0, v2, v1}, Lcom/amazon/android/widget/CommandActionView;->updateButtonView(Landroid/view/View;Lcom/amazon/android/widget/IInternalWidgetItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setCommandBarAttrs(Lcom/amazon/android/widget/CommandBarAttrs;)V
    .locals 1

    .line 231
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    .line 232
    iget-boolean v0, p1, Lcom/amazon/android/widget/CommandBarAttrs;->showIconsInPopup:Z

    iput-boolean v0, p0, Lcom/amazon/android/widget/CommandActionView;->showIconsInPopup:Z

    .line 233
    iget-boolean p1, p1, Lcom/amazon/android/widget/CommandBarAttrs;->enableTextWrapInPopup:Z

    iput-boolean p1, p0, Lcom/amazon/android/widget/CommandActionView;->enableTextWrapInPopup:Z

    return-void
.end method

.method setEnableTextWrapInPopup(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/amazon/android/widget/CommandActionView;->enableTextWrapInPopup:Z

    return-void
.end method

.method public setItemClickListener(Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    return-void
.end method

.method setItemGroup(Lcom/amazon/android/widget/WidgetItemGroup;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView;->itemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    .line 186
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandActionView;->updateChildren()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 188
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method setMaxVisibleButtons(I)V
    .locals 1

    .line 219
    iget v0, p0, Lcom/amazon/android/widget/CommandActionView;->maxVisibleButtons:I

    .line 220
    iput p1, p0, Lcom/amazon/android/widget/CommandActionView;->maxVisibleButtons:I

    if-eq v0, p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/amazon/android/widget/CommandActionView;->updateChildren()V

    :cond_0
    return-void
.end method

.method setPosition(Lcom/amazon/android/widget/CommandBar$Position;)V
    .locals 2

    .line 198
    sget-object v0, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 199
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    const v1, 0x800003

    goto :goto_1

    :cond_1
    const v1, 0x800005

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 200
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 202
    iget p1, v0, Lcom/amazon/android/widget/CommandBarAttrs;->startButtonPadding:I

    goto :goto_2

    :cond_2
    iget p1, v0, Lcom/amazon/android/widget/CommandBarAttrs;->endButtonPadding:I

    :goto_2
    iput p1, p0, Lcom/amazon/android/widget/CommandActionView;->buttonPadding:I

    goto :goto_3

    .line 204
    :cond_3
    sget-object p1, Lcom/amazon/android/widget/CommandActionView;->TAG:Ljava/lang/String;

    const-string v0, "Setting position of CommandActionView without having set CommandBarAttrs"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method setShowIconsInPopup(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/amazon/android/widget/CommandActionView;->showIconsInPopup:Z

    return-void
.end method

.method showPopupWindow()V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView;->commandBarAttrs:Lcom/amazon/android/widget/CommandBarAttrs;

    if-eqz v0, :cond_4

    .line 352
    iget-object v1, p0, Lcom/amazon/android/widget/CommandActionView;->overflowMenuButton:Lcom/amazon/android/widget/OverflowMenuButton;

    .line 353
    iget-object v2, p0, Lcom/amazon/android/widget/CommandActionView;->popupButtonItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 354
    iget-object v3, p0, Lcom/amazon/android/widget/CommandActionView;->itemViewMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 356
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 358
    sget v4, Lcom/amazon/kindle/wl/R$layout;->command_bar_popup_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 359
    iget v5, v0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowPadding:I

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 361
    iget v5, v0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 363
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/widget/IInternalWidgetItem;

    .line 364
    invoke-direct {p0, v3, v5}, Lcom/amazon/android/widget/CommandActionView;->createPopupButtonView(Landroid/view/LayoutInflater;Lcom/amazon/android/widget/IInternalWidgetItem;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 366
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 370
    :cond_2
    new-instance v2, Lcom/amazon/android/widget/CommandBarPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, v0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowMaxHeight:I

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/android/widget/CommandBarPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 371
    iget v3, v0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowXOffset:I

    iget v0, v0, Lcom/amazon/android/widget/CommandBarAttrs;->popupWindowYOffset:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/amazon/android/widget/CommandBarPopupWindow;->showPopup(Landroid/view/View;II)V

    .line 372
    iput-object v2, p0, Lcom/amazon/android/widget/CommandActionView;->popupWindow:Lcom/amazon/android/widget/CommandBarPopupWindow;

    :cond_3
    return-void

    .line 349
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot show the popup without setting the attributes from the CommandBar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
