.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BlurbCardController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlurbHolder"
.end annotation


# instance fields
.field private blurb:Landroid/widget/TextView;

.field private blurbAuthorImage:Landroid/widget/ImageView;

.field private blurbAuthorName:Landroid/widget/TextView;

.field private blurbAuthorRole:Landroid/widget/TextView;

.field private blurbBookImage:Landroid/widget/ImageView;

.field private blurbCardContentLayout:Landroid/widget/LinearLayout;

.field private blurbCoverImagePointer:Landroid/widget/ImageView;

.field private learnMoreButton:Landroid/widget/Button;

.field private purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

.field private readNowButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string p1, "itemView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 387
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurb:Landroid/widget/TextView;

    .line 388
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_book_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbBookImage:Landroid/widget/ImageView;

    .line 389
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_author_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbAuthorImage:Landroid/widget/ImageView;

    .line 390
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_author_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbAuthorName:Landroid/widget/TextView;

    .line 391
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_author_role:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbAuthorRole:Landroid/widget/TextView;

    .line 392
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_learn_more:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->learnMoreButton:Landroid/widget/Button;

    .line 393
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_try_sample:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->readNowButton:Landroid/widget/Button;

    .line 394
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_card_content_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbCardContentLayout:Landroid/widget/LinearLayout;

    .line 395
    sget p1, Lcom/amazon/kindle/ea/R$id;->blurb_cover_image_pointer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbCoverImagePointer:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getBlurb()Landroid/widget/TextView;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurb:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getBlurbAuthorImage()Landroid/widget/ImageView;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbAuthorImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getBlurbAuthorName()Landroid/widget/TextView;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbAuthorName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getBlurbAuthorRole()Landroid/widget/TextView;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbAuthorRole:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getBlurbBookImage()Landroid/widget/ImageView;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbBookImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getBlurbCardContentLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbCardContentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getBlurbCoverImagePointer()Landroid/widget/ImageView;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->blurbCoverImagePointer:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLearnMoreButton()Landroid/widget/Button;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->learnMoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getPurchaseViewManager()Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    return-object v0
.end method

.method public final getReadNowButton()Landroid/widget/Button;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->readNowButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final setPurchaseViewManager(Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->purchaseViewManager:Lcom/amazon/readingactions/helpers/purchase/PurchaseViewManager;

    return-void
.end method
