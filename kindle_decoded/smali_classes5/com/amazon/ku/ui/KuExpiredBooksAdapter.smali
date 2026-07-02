.class public Lcom/amazon/ku/ui/KuExpiredBooksAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KuExpiredBooksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/ku/data/CapturedBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final COVER_IMAGE_BASE_URL:Ljava/lang/String; = "http://ecx.images-amazon.com/images/P/"

.field private static final COVER_IMAGE_HEIGHT_PARAM:Ljava/lang/String; = "_SY"

.field private static final COVER_IMAGE_INT_STR:Ljava/lang/String; = ".01."

.field private static final COVER_IMAGE_SUFFIX:Ljava/lang/String; = "_SCRMZZZZZZ_.jpg"

.field private static final COVER_IMAGE_WIDTH_PARAM:Ljava/lang/String; = "_SX"


# instance fields
.field private coverHeight:I

.field private coverWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$layout;->ku_book_image:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getCoverImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ecx.images-amazon.com/images/P/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".01."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_SX"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_SY"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_SCRMZZZZZZ_.jpg"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private padBooks()V
    .locals 6

    .line 71
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ku/R$integer;->ku_expiry_grid_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 73
    rem-int v2, v1, v0

    if-le v1, v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    div-int/lit8 v3, v0, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v0, v2

    .line 81
    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    .line 82
    new-instance v4, Lcom/amazon/ku/data/CapturedBook;

    const-string v5, ""

    invoke-direct {v4, v5, v5, v5}, Lcom/amazon/ku/data/CapturedBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sub-int v5, v1, v2

    invoke-virtual {p0, v4, v5}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getBookCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ku/data/CapturedBook;

    invoke-virtual {v2}, Lcom/amazon/ku/data/CapturedBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 92
    move-object v0, p2

    check-cast v0, Lcom/amazon/bookwizard/ui/view/CoverImageView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 95
    sget v0, Lcom/amazon/kindle/ku/R$layout;->ku_book_image:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/amazon/bookwizard/ui/view/CoverImageView;

    .line 97
    :cond_0
    iget p2, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverWidth:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 98
    iget p2, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverHeight:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ku/data/CapturedBook;

    .line 101
    invoke-virtual {p1}, Lcom/amazon/ku/data/CapturedBook;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->setText(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/amazon/ku/data/CapturedBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x4

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0

    .line 108
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/ku/data/CapturedBook;->getAsin()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverWidth:I

    iget v2, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverHeight:I

    invoke-direct {p0, p3, v1, v2}, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->getCoverImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->noFade()Lcom/squareup/picasso/RequestCreator;

    iget p3, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverWidth:I

    iget v1, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverHeight:I

    .line 111
    invoke-virtual {p2, p3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    .line 112
    invoke-virtual {p2}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 113
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;

    sget-object p3, Lcom/squareup/picasso/Picasso$Priority;->HIGH:Lcom/squareup/picasso/Picasso$Priority;

    .line 114
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/RequestCreator;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/RequestCreator;

    .line 115
    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 118
    invoke-virtual {p1}, Lcom/amazon/ku/data/CapturedBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-object v0
.end method

.method public setBooks(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/amazon/ku/data/CapturedBook;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput p1, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverWidth:I

    .line 46
    iput p2, p0, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->coverHeight:I

    .line 47
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 48
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 49
    invoke-direct {p0}, Lcom/amazon/ku/ui/KuExpiredBooksAdapter;->padBooks()V

    .line 50
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
