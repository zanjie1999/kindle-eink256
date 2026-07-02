.class public Lcom/amazon/bookwizard/recommendations/RecsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/bookwizard/data/Recommendation;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;Lcom/amazon/bookwizard/data/DataProvider;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/recommendations/RecsPageFragment;",
            "Lcom/amazon/bookwizard/data/DataProvider;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$layout;->bookwizard_rec_book:I

    invoke-direct {p0, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    .line 52
    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->data:Lcom/amazon/bookwizard/data/DataProvider;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 63
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_rec_book:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Recommendation;

    .line 67
    iget-object p3, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p3}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getConfig()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object p3

    .line 68
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->isKu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/amazon/bookwizard/BookWizardConfig;->isSubscribed()Z

    move-result p3

    if-nez p3, :cond_1

    .line 69
    sget p3, Lcom/amazon/bookwizard/R$id;->download_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_1
    sget p3, Lcom/amazon/bookwizard/R$id;->download_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 72
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/data/Recommendation;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 74
    invoke-virtual {p3, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {v0, p3}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->setDownloadContentDescription(Landroid/view/View;)V

    .line 78
    :goto_0
    sget p3, Lcom/amazon/bookwizard/R$id;->cover_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/bookwizard/ui/view/CoverImageView;

    .line 79
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Book;->getTitle()Lcom/amazon/bookwizard/data/LString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->setText(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Book;->getTitle()Lcom/amazon/bookwizard/data/LString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/LString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsListAdapter;->fragment:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    sget v1, Lcom/amazon/bookwizard/R$string;->book_detail_title_text:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/Book;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_width:I

    sget v2, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_height:I

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    .line 90
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 91
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;

    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    .line 92
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    .line 93
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->stableKey(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    .line 94
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-object p2
.end method
