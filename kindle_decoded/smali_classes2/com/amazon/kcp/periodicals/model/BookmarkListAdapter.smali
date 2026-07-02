.class public Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final textViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/bookmark/BookmarkListItem;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;->context:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;->textViewResourceId:I

    return-void
.end method


# virtual methods
.method protected getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 75
    new-instance v0, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter$1;-><init>(Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;)V

    .line 95
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 96
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;->context:Landroid/content/Context;

    iget v0, p0, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;->textViewResourceId:I

    invoke-static {p2, v0, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_0
    instance-of v0, p2, Lcom/amazon/nwstd/toc/widget/ArticleRow;

    if-eqz v0, :cond_1

    .line 45
    move-object v0, p2

    check-cast v0, Lcom/amazon/nwstd/toc/widget/ArticleRow;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/model/BookmarkListAdapter;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/widget/ArticleRow;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_1
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->bookmark_thumbnail:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/amazon/nwstd/bookmark/BookmarkListItem;

    :cond_2
    if-eqz p3, :cond_4

    .line 59
    invoke-virtual {p3}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getHtmlText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 62
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_3
    invoke-virtual {p3}, Lcom/amazon/nwstd/bookmark/BookmarkListItem;->getThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    return-object p2
.end method
