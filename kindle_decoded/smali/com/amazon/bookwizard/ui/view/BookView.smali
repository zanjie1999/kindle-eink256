.class public Lcom/amazon/bookwizard/ui/view/BookView;
.super Landroid/widget/RelativeLayout;
.source "BookView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;
    }
.end annotation


# static fields
.field private static final NUM_RATING_BAR_STATES:I = 0x6


# instance fields
.field private button:Landroid/widget/Button;

.field private category:Lcom/amazon/bookwizard/data/Category;

.field private image:Lcom/amazon/bookwizard/ui/view/CoverImageView;

.field private listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

.field private ratingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateRatingContentDescription(I)V
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

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

    .line 230
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/bookwizard/R$string;->bookwizard_item_selected_description:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/bookwizard/R$string;->bookwizard_item_not_selected_description:I

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBook()Lcom/amazon/bookwizard/data/Book;
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Book;

    return-object v0
.end method

.method public getImageView()Lcom/amazon/bookwizard/ui/view/CoverImageView;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->image:Lcom/amazon/bookwizard/ui/view/CoverImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 245
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 246
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;->onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V

    const/4 p1, 0x0

    .line 247
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    goto :goto_0

    .line 248
    :cond_1
    instance-of p1, p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;->onCoverClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 128
    sget v0, Lcom/amazon/bookwizard/R$id;->book_cover_image:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/ui/view/CoverImageView;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->image:Lcom/amazon/bookwizard/ui/view/CoverImageView;

    .line 129
    sget v0, Lcom/amazon/bookwizard/R$id;->bookwizard_rating_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    .line 130
    sget v0, Lcom/amazon/bookwizard/R$id;->bookwizard_wtr_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->image:Lcom/amazon/bookwizard/ui/view/CoverImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 264
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 266
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Landroid/widget/RatingBar;->getRating()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v4

    .line 267
    rem-int/lit8 p2, p2, 0x6

    .line 268
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v3

    invoke-interface {v0, v2, v3, p2}, Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;->onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    .line 269
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    int-to-float v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 270
    invoke-direct {p0, p2}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    .line 271
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 272
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v3, :cond_3

    .line 276
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    :goto_0
    return v4

    .line 281
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 283
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    add-int/2addr p2, v4

    .line 288
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/bookwizard/data/DataProvider;->getRating(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Rating;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 289
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Rating;->getValue()I

    move-result v0

    if-ne v0, p2, :cond_5

    .line 290
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v2

    invoke-interface {p2, v0, v2, v1}, Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;->onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    .line 291
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 292
    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    goto :goto_1

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v3

    invoke-interface {v0, v2, v3, p2}, Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;->onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V

    .line 295
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    int-to-float v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 296
    invoke-direct {p0, p2}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    .line 298
    :goto_1
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 300
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 301
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 302
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v3, :cond_8

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    :goto_2
    return v4
.end method

.method public recycle(Lcom/amazon/bookwizard/BookViewManager;)V
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/BookView;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    .line 317
    invoke-virtual {p1, v0, p0}, Lcom/amazon/bookwizard/BookViewManager;->remove(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/ui/view/BookView;)V

    .line 318
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 319
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 320
    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    return-void
.end method

.method public refreshText()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$string;->want_to_read_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBook(Lcom/amazon/bookwizard/data/Book;)V
    .locals 1

    .line 145
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->image:Lcom/amazon/bookwizard/ui/view/CoverImageView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getTitle()Lcom/amazon/bookwizard/data/LString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBookViewListener(Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    return-void
.end method

.method public setCategory(Lcom/amazon/bookwizard/data/Category;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->category:Lcom/amazon/bookwizard/data/Category;

    return-void
.end method

.method public setRating(Lcom/amazon/bookwizard/data/Rating;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 159
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 160
    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Rating;->isWantToRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 166
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Rating;->getValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/BookView;->updateRatingContentDescription(I)V

    return-void
.end method
