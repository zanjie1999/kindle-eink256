.class public Lcom/amazon/kindle/krx/ui/brochure/BrochureSlideStaticImageContent;
.super Lcom/amazon/kindle/krx/ui/brochure/BrochureSlide;
.source "BrochureSlideStaticImageContent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final imagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/brochure/BrochureSlide;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureSlideStaticImageContent;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureSlideStaticImageContent;->imagePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 44
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-object v0
.end method
