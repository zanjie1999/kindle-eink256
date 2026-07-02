.class public Lcom/amazon/kcp/library/widget/bookAction/BookAction;
.super Landroid/widget/FrameLayout;
.source "BookAction.java"


# instance fields
.field private animationContainer:Landroid/widget/LinearLayout;

.field private author:Landroid/widget/TextView;

.field private bodyContainer:Landroid/widget/FrameLayout;

.field private description:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

.field private moreOptionButton:Landroid/widget/ImageView;

.field private optionalButton:Landroid/widget/TextView;

.field private page:Landroid/widget/TextView;

.field private primaryButton:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingContainer:Landroid/widget/LinearLayout;

.field private recommendButton:Landroid/widget/TextView;

.field private review:Landroid/widget/TextView;

.field private time:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private triangle:Landroid/widget/ImageView;

.field private triangleContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/widget/bookAction/BookAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAnimationContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->animationContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getAuthor()Landroid/widget/TextView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->author:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBodyContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->bodyContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getDescription()Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->description:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    return-object v0
.end method

.method public getMoreOptionButton()Landroid/widget/ImageView;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->moreOptionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOptionalButton()Landroid/widget/TextView;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->optionalButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPage()Landroid/widget/TextView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->page:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrimaryButton()Landroid/widget/TextView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->primaryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->ratingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getRatingContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->ratingContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRecommendButton()Landroid/widget/TextView;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->recommendButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReview()Landroid/widget/TextView;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->review:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTime()Landroid/widget/TextView;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTriangle()Landroid/widget/ImageView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->triangle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTriangleContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->triangleContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_triangleContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->triangleContainer:Landroid/widget/FrameLayout;

    .line 54
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_triangle:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->triangle:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_body_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->bodyContainer:Landroid/widget/FrameLayout;

    .line 56
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_animation_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->animationContainer:Landroid/widget/LinearLayout;

    .line 57
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->title:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_author:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->author:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_rating_review:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->ratingContainer:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_rating:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->ratingBar:Landroid/widget/RatingBar;

    .line 61
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_review:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->review:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_details_time:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->time:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_details_pages:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->page:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->bookDetails_description:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->description:Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;

    .line 65
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_primary_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->primaryButton:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_optional_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->optionalButton:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_more_options_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->moreOptionButton:Landroid/widget/ImageView;

    .line 68
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_action_recommended_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->recommendButton:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/BookAction;->triangleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    const/4 v0, 0x4

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
