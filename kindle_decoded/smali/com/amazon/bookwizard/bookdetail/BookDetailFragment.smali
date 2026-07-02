.class public Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BookDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;
    }
.end annotation


# static fields
.field private static final KEY_ERROR_SHOWN:Ljava/lang/String; = "errorShown"

.field private static final NUM_RATING_BAR_STATES:I = 0x6


# instance fields
.field private activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

.field private authorTextView:Landroid/widget/TextView;

.field private averageRating:Landroid/widget/TextView;

.field private bookCoverImageView:Landroid/widget/ImageView;

.field private bookDescriptionView:Landroid/widget/TextView;

.field private bookDetailsRatingBar:Landroid/widget/RatingBar;

.field private bookTitleView:Landroid/widget/TextView;

.field private closeButton:Landroid/widget/Button;

.field private contentPane:Landroid/widget/ScrollView;

.field private data:Lcom/amazon/bookwizard/data/DataProvider;

.field private errorPane:Landroid/widget/LinearLayout;

.field private errorShown:Z

.field private goodreadsLogo:Landroid/widget/TextView;

.field private listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

.field private ratingLogo:Landroid/widget/ImageView;

.field private ratingSource:Landroid/widget/TextView;

.field private reasonCodeTextView:Landroid/widget/TextView;

.field private sourceRatingBar:Landroid/widget/RatingBar;

.field private spinner:Landroid/widget/ProgressBar;

.field private wtrButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private adjustViewDimensions()V
    .locals 6

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 438
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 439
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 441
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/bookwizard/R$dimen;->bookwizard_details_dialog_height:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 444
    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->isLargeLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 449
    :cond_0
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 450
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method private startSpinner()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->contentPane:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorPane:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorPane:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopSpinner()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->spinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->contentPane:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorPane:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_2

    .line 391
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorPane:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private styleGoodreadsLogo()V
    .locals 2

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->goodreadsLogo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 490
    sget v1, Lcom/amazon/bookwizard/R$string;->powered_by_goodreads:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateAverageRatingContentDescription(Lcom/amazon/bookwizard/service/FlowStep;Lcom/amazon/bookwizard/data/BookDetail;)V
    .locals 5

    .line 501
    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/BookDetail;->getAverageRating()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "payoffView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->averageRating:Landroid/widget/TextView;

    sget v4, Lcom/amazon/bookwizard/R$string;->bookwizard_average_rating_with_number_description:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/BookDetail;->getReviewCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingSource:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingSource:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 507
    :goto_0
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->averageRating:Landroid/widget/TextView;

    sget v4, Lcom/amazon/bookwizard/R$string;->bookwizard_average_rating_description:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateRatingContentDescription(I)V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_rating_bar_star_desc:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 520
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/bookwizard/R$string;->bookwizard_item_selected_description:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/bookwizard/R$string;->bookwizard_item_not_selected_description:I

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getState()Landroid/os/Bundle;
    .locals 3

    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    iget-boolean v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    const-string v2, "errorShown"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    check-cast p1, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 119
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    sget v0, Lcom/amazon/bookwizard/R$id;->book_details_close_button:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/amazon/bookwizard/R$id;->book_details_wtr_button:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 304
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 305
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    const/4 p1, 0x0

    .line 306
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateRatingContentDescription(I)V

    .line 307
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/BookDetail;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getCategory(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Category;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/BookDetail;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;->onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x103006f

    .line 129
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 137
    sget p3, Lcom/amazon/bookwizard/R$layout;->bookwizard_book_detail:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 139
    sget p2, Lcom/amazon/bookwizard/R$id;->book_title_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookTitleView:Landroid/widget/TextView;

    .line 140
    sget p2, Lcom/amazon/bookwizard/R$id;->book_description_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDescriptionView:Landroid/widget/TextView;

    .line 141
    sget p2, Lcom/amazon/bookwizard/R$id;->bookdetail_rating_name_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingSource:Landroid/widget/TextView;

    .line 142
    sget p2, Lcom/amazon/bookwizard/R$id;->bookdetail_rating_average_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->averageRating:Landroid/widget/TextView;

    .line 143
    sget p2, Lcom/amazon/bookwizard/R$id;->bookdetail_ratingbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->sourceRatingBar:Landroid/widget/RatingBar;

    .line 144
    sget p2, Lcom/amazon/bookwizard/R$id;->book_author_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->authorTextView:Landroid/widget/TextView;

    .line 145
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_rating_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    .line 146
    sget p2, Lcom/amazon/bookwizard/R$id;->book_details_wtr_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    .line 147
    sget p2, Lcom/amazon/bookwizard/R$id;->book_details_close_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->closeButton:Landroid/widget/Button;

    .line 148
    sget p2, Lcom/amazon/bookwizard/R$id;->book_detail_reason_code_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->reasonCodeTextView:Landroid/widget/TextView;

    .line 149
    sget p2, Lcom/amazon/bookwizard/R$id;->book_cover_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookCoverImageView:Landroid/widget/ImageView;

    .line 150
    sget p2, Lcom/amazon/bookwizard/R$id;->bookwizard_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->spinner:Landroid/widget/ProgressBar;

    .line 151
    sget p2, Lcom/amazon/bookwizard/R$id;->book_detail_body_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->contentPane:Landroid/widget/ScrollView;

    .line 152
    sget p2, Lcom/amazon/bookwizard/R$id;->book_detail_error_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorPane:Landroid/widget/LinearLayout;

    .line 153
    sget p2, Lcom/amazon/bookwizard/R$id;->book_detail_powered_by_good_reads_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->goodreadsLogo:Landroid/widget/TextView;

    .line 154
    sget p2, Lcom/amazon/bookwizard/R$id;->bookdetail_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    .line 156
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->closeButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p2, p0}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->contentPane:Landroid/widget/ScrollView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 160
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorPane:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p1
.end method

.method public onDataChanged(Lcom/amazon/bookwizard/data/DataProvider;)V
    .locals 0

    .line 473
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 475
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->setErrorShown(Z)V

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateUI()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 401
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 404
    iput-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 459
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 463
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->onBack()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/data/DataProvider;->removeDataChangedListener(Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->adjustViewDimensions()V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateUI()V

    .line 178
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/data/DataProvider;->addDataChangedListener(Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 317
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/BookDetail;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 326
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 328
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Landroid/widget/RatingBar;->getRating()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v6

    .line 329
    rem-int/lit8 p2, p2, 0x6

    .line 330
    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    iget-object v4, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getCategory(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Category;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4, v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-interface {v3, v2, v0, p2}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;->onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    .line 331
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    int-to-float v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 332
    invoke-direct {p0, p2}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateRatingContentDescription(I)V

    .line 333
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 334
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 336
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v5, :cond_3

    .line 338
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    :goto_0
    return v6

    .line 343
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 344
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 345
    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float p2, p2, v3

    float-to-int p2, p2

    add-int/2addr p2, v6

    .line 350
    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3, v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRating(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Rating;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 351
    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/Rating;->getValue()I

    move-result v3

    if-ne v3, p2, :cond_5

    .line 352
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getCategory(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Category;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v3, v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-interface {p2, v2, v0, v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;->onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    .line 353
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 354
    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateRatingContentDescription(I)V

    goto :goto_1

    .line 356
    :cond_5
    iget-object v3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    iget-object v4, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getCategory(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Category;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v4, v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-interface {v3, v2, v0, p2}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;->onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    .line 357
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    int-to-float v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 358
    invoke-direct {p0, p2}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateRatingContentDescription(I)V

    .line 360
    :goto_1
    iget-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 361
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 362
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 363
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 364
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v5, :cond_8

    .line 365
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    :goto_2
    return v6

    :cond_9
    :goto_3
    return v1
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "errorShown"

    .line 430
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    return-void
.end method

.method public setErrorShown(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    return-void
.end method

.method public setListener(Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->listener:Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;

    return-void
.end method

.method public updateUI()V
    .locals 9

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->stopSpinner()V

    .line 221
    iget-boolean v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->errorShown:Z

    if-eqz v0, :cond_1

    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "payoffView"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/amazon/bookwizard/service/StepFlavor;->PRIME:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v8

    if-ne v2, v8, :cond_2

    .line 229
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->averageRating:Landroid/widget/TextView;

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_bookdetail_rating_count:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getReviewCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    sget v3, Lcom/amazon/bookwizard/R$drawable;->bookwizard_prime_logo_small:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->goodreadsLogo:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingSource:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 234
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 235
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->averageRating:Landroid/widget/TextView;

    sget v3, Lcom/amazon/bookwizard/R$string;->bookwizard_bookdetail_rating_count:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getReviewCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    sget v3, Lcom/amazon/bookwizard/R$drawable;->bookwizard_ku_logo_small:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->goodreadsLogo:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingSource:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->averageRating:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getAverageRating()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    sget v3, Lcom/amazon/bookwizard/R$drawable;->bookwizard_ku_logo_small:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->isKu()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->goodreadsLogo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->isGoodreads()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->isKu()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x0

    :cond_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->ratingSource:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->isGoodreads()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->isKu()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateAverageRatingContentDescription(Lcom/amazon/bookwizard/service/FlowStep;Lcom/amazon/bookwizard/data/BookDetail;)V

    .line 249
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getTitle()Lcom/amazon/bookwizard/data/LString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getDescription()Lcom/amazon/bookwizard/data/LString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\r\\n"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->sourceRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getAverageRating()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 253
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getContributors()Lcom/amazon/bookwizard/data/LString;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 254
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->authorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getContributors()Lcom/amazon/bookwizard/data/LString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_7
    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ratingsView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 259
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    if-eqz v1, :cond_9

    const/4 v6, 0x0

    :cond_9
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v1, :cond_b

    .line 262
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getRating(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Rating;

    move-result-object v1

    if-nez v1, :cond_a

    .line 264
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 265
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 266
    invoke-direct {p0, v7}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateRatingContentDescription(I)V

    goto :goto_4

    .line 268
    :cond_a
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->wtrButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/Rating;->isWantToRead()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 269
    iget-object v2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookDetailsRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/Rating;->getValue()I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 270
    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/Rating;->getValue()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->updateRatingContentDescription(I)V

    goto :goto_4

    .line 272
    :cond_b
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 273
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->reasonCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->reasonCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookCoverImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 279
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    sget v2, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_width:I

    sget v3, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_height:I

    .line 281
    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    .line 282
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 283
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;

    sget-object v2, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    .line 284
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    .line 285
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/BookDetail;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->stableKey(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->bookCoverImageView:Landroid/widget/ImageView;

    .line 286
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 289
    :cond_d
    invoke-direct {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->styleGoodreadsLogo()V

    return-void

    .line 216
    :cond_e
    :goto_5
    invoke-direct {p0}, Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;->startSpinner()V

    return-void
.end method
