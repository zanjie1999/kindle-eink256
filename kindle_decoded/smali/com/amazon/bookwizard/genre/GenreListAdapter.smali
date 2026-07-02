.class public Lcom/amazon/bookwizard/genre/GenreListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GenreListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/bookwizard/data/Genre;",
        ">;"
    }
.end annotation


# instance fields
.field private final fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/genre/GenrePageFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/genre/GenrePageFragment;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$layout;->bookwizard_genre_button:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenreListAdapter;->fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 49
    check-cast p2, Lcom/amazon/bookwizard/ui/view/GenreButton;

    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 52
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_genre_button:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/GenreButton;

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Genre;

    invoke-virtual {p2, p1}, Lcom/amazon/bookwizard/ui/view/GenreButton;->setGenre(Lcom/amazon/bookwizard/data/Genre;)V

    .line 56
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenreListAdapter;->fragment:Lcom/amazon/bookwizard/genre/GenrePageFragment;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
