.class public Lcom/amazon/bookwizard/ratings/ShovelerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShovelerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/bookwizard/data/Book;",
        ">;"
    }
.end annotation


# instance fields
.field private final category:Lcom/amazon/bookwizard/data/Category;

.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

.field private final viewManager:Lcom/amazon/bookwizard/BookViewManager;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/data/Category;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/data/Category;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$layout;->bookwizard_book:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 54
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getViewManager()Lcom/amazon/bookwizard/BookViewManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    .line 55
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->category:Lcom/amazon/bookwizard/data/Category;

    return-void
.end method


# virtual methods
.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-interface {v0}, Lcom/amazon/bookwizard/data/Category;->getName()Lcom/amazon/bookwizard/data/LString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 90
    check-cast p2, Lcom/amazon/bookwizard/ui/view/BookView;

    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 93
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_book:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/BookView;

    .line 95
    :cond_0
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    invoke-virtual {p2, p3}, Lcom/amazon/bookwizard/ui/view/BookView;->recycle(Lcom/amazon/bookwizard/BookViewManager;)V

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Book;

    .line 98
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/bookwizard/BookViewManager;->add(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/ui/view/BookView;)V

    .line 100
    invoke-virtual {p2, p1}, Lcom/amazon/bookwizard/ui/view/BookView;->setBook(Lcom/amazon/bookwizard/data/Book;)V

    .line 101
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->category:Lcom/amazon/bookwizard/data/Category;

    invoke-virtual {p2, p3}, Lcom/amazon/bookwizard/ui/view/BookView;->setCategory(Lcom/amazon/bookwizard/data/Category;)V

    .line 102
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {p3, p1}, Lcom/amazon/bookwizard/data/DataProvider;->getRating(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Rating;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/bookwizard/ui/view/BookView;->setRating(Lcom/amazon/bookwizard/data/Rating;)V

    .line 103
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    invoke-virtual {p2, p3}, Lcom/amazon/bookwizard/ui/view/BookView;->setBookViewListener(Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;)V

    .line 104
    invoke-virtual {p2}, Lcom/amazon/bookwizard/ui/view/BookView;->refreshText()V

    .line 105
    invoke-virtual {p2}, Lcom/amazon/bookwizard/ui/view/BookView;->getImageView()Lcom/amazon/bookwizard/ui/view/CoverImageView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getTitle()Lcom/amazon/bookwizard/data/LString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->setText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 107
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    sget v0, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_width:I

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_height:I

    .line 108
    invoke-virtual {p3, v0, v1}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    .line 109
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 110
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;

    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    .line 111
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    .line 112
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/squareup/picasso/RequestCreator;->stableKey(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 113
    invoke-virtual {p2}, Lcom/amazon/bookwizard/ui/view/BookView;->getImageView()Lcom/amazon/bookwizard/ui/view/CoverImageView;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    return-void
.end method
