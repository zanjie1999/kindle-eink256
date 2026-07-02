.class public abstract Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;
.super Lcom/amazon/kindle/krx/ui/brochure/BaseBrochureSlide;
.source "TitleViewBrochureSlide.java"


# instance fields
.field private m_title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/brochure/BaseBrochureSlide;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;->m_title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract getBottomView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    sget v1, Lcom/amazon/kindle/krl/R$layout;->brochure_slide_title_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 38
    sget v1, Lcom/amazon/kindle/krl/R$id;->text_view_slide_content:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 40
    iget-object v2, p0, Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;->m_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;->setupTextView(Landroid/widget/TextView;)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;->getBottomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 45
    sget v1, Lcom/amazon/kindle/krl/R$id;->bottom_view_slide_content:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method

.method protected setupTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
