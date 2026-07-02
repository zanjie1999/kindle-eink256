.class public Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;
.super Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;
.source "TextImageBrochureSlide.java"


# instance fields
.field private final m_imagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kcp/ui/brochure/TitleViewBrochureSlide;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;->m_imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBottomView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 28
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/TextImageBrochureSlide;->m_imagePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 30
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-object v0
.end method
