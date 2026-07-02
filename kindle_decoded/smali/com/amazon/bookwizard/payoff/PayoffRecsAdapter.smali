.class public Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PayoffRecsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/bookwizard/service/PayoffRec;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/amazon/bookwizard/data/DataProvider;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$layout;->bookwizard_ku_book:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 45
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 46
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 57
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_ku_book:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 62
    sget p3, Lcom/amazon/bookwizard/R$id;->cover_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;

    .line 63
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->setText(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->isMarkedForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->setChecked(Z)V

    .line 67
    sget v0, Lcom/amazon/bookwizard/R$id;->details_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/PayoffRecsAdapter;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$dimen;->bookwizard_cover_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 73
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    float-to-int v0, v0

    float-to-int v1, v1

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    .line 76
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 77
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;

    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    .line 78
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    .line 79
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-object p2
.end method
