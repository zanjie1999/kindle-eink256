.class public Lcom/amazon/kindle/krx/reader/BubbleBuilder;
.super Lcom/amazon/kindle/krx/reader/BaseBubbleBuilder;
.source "BubbleBuilder.java"


# instance fields
.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseBubbleBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/krx/reader/IBubble;
    .locals 6

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 52
    new-instance v0, Lcom/amazon/kindle/krx/reader/Bubble;

    invoke-direct {v0, v2}, Lcom/amazon/kindle/krx/reader/Bubble;-><init>(Landroid/view/View;)V

    return-object v0

    .line 55
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 56
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v3

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getUiTextColorId()I

    move-result v3

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 61
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->title:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 62
    sget v3, Lcom/amazon/kindle/krxsdk/R$layout;->bubble_view_title:I

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    iget-object v5, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 70
    sget v3, Lcom/amazon/kindle/krxsdk/R$layout;->bubble_view_text:I

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 73
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    :cond_2
    new-instance v0, Lcom/amazon/kindle/krx/reader/Bubble;

    invoke-direct {v0, v2}, Lcom/amazon/kindle/krx/reader/Bubble;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBubbleBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBubbleBuilder;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/amazon/kindle/krx/reader/IBubbleBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;->view:Landroid/view/View;

    return-object p0
.end method
