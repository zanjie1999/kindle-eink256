.class public Lcom/amazon/startactions/ui/BookRecommendationsActivity;
.super Lcom/amazon/ea/ui/ThemeActivity;
.source "BookRecommendationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;,
        Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookAsin:Ljava/lang/String;

.field private bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

.field private imageHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/ea/ui/ThemeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/BookRecommendationsActivity;Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->setCoverImage(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/startactions/ui/BookRecommendationsActivity;I)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->getRefTagFeatureId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/startactions/ui/BookRecommendationsActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookAsin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/startactions/ui/BookRecommendationsActivity;)Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    return-object p0
.end method

.method private createRecommendationView(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)Landroid/view/View;
    .locals 9

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->featuredbooks_book_detail:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/ea/R$string;->startactions_serial_comma:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    sget v4, Lcom/amazon/kindle/ea/R$id;->title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    iget-object v5, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 193
    invoke-direct {p0, v0, v2, p2}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->setCoverImage(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 195
    :cond_0
    iget v2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->imageHeight:I

    invoke-static {v4, v2}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 197
    new-instance v4, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;

    invoke-direct {v4, p0, v0, p2}, Lcom/amazon/startactions/ui/BookRecommendationsActivity$BookRecommendationsImageDownloadListener;-><init>(Lcom/amazon/startactions/ui/BookRecommendationsActivity;Landroid/view/View;I)V

    invoke-static {v2, v4}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    .line 203
    :cond_1
    :goto_0
    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 204
    sget v2, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    iget-object v5, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->authors:Ljava/util/List;

    invoke-static {v5}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    iget v2, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_3

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_3

    .line 214
    sget v2, Lcom/amazon/kindle/ea/R$id;->ratings_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 215
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    sget v5, Lcom/amazon/kindle/ea/R$id;->featured_rating_bar:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    .line 218
    iget v6, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 219
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->rating:F

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v4

    .line 221
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/amazon/kindle/ea/R$string;->featuredbooks_stars:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const-string v5, "%s %s"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget v5, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    if-ltz v5, :cond_3

    .line 224
    sget v5, Lcom/amazon/kindle/ea/R$id;->number_of_reviews:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-array v5, v8, [Ljava/lang/Object;

    .line 225
    iget v7, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v7, "(%d)"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-array v2, v6, [Ljava/lang/Object;

    .line 227
    iget v5, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->numberOfReviews:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/ea/R$string;->featuredbooks_reviews:I

    .line 228
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const-string v4, "%d %s"

    .line 227
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_3
    sget v2, Lcom/amazon/kindle/ea/R$id;->featured_book_description_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 234
    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 235
    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    .line 239
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_1
    sget-object v2, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    invoke-static {v2}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    new-instance v2, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;-><init>(Lcom/amazon/startactions/ui/BookRecommendationsActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_see_in_store_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getBookRecommendationsDef(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 154
    sget-object p1, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Current book is null; so won\'t be able to get sidecar."

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 158
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/util/SidecarCacheManager;->getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 160
    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->parseAndCacheSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 166
    :cond_1
    iget-object p1, v1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    const-string v1, "leftNavCitationsFeaturedList"

    .line 167
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    instance-of v1, p1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    if-eqz v1, :cond_2

    .line 169
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private getRefTagFeatureId(I)Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCoverImage(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 264
    sget p3, Lcom/amazon/kindle/ea/R$id;->downloaded_cover:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 266
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$drawable;->startactions_book_default:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 61
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->getBookRecommendationsDef(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 69
    invoke-static {v2}, Lcom/amazon/ea/guava/Objects;->anyNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object p1, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->TAG:Ljava/lang/String;

    const-string v0, "No book recommendations found "

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 76
    :cond_0
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$layout;->featuredbooks_activity_main:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-static {p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setupActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->title:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setTitle(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 86
    sget v0, Lcom/amazon/kindle/ea/R$id;->recommendations_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->imageHeight:I

    .line 89
    iget-object v2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->recommendations:Ljava/util/List;

    .line 92
    iget-object v5, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookAsin:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v5

    .line 93
    iget-object v6, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v7, "ViewedInStoreBookDetails"

    invoke-static {v7, v6}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 95
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 96
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-direct {p0, v6, v3}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->createRecommendationView(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)Landroid/view/View;

    move-result-object v6

    .line 97
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iget-object v6, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v7, v6, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v3, v6, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v8, Lcom/amazon/kindle/ea/R$layout;->endactions_list_divider:I

    invoke-virtual {v6, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 105
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_3

    .line 112
    sget-object p1, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->TAG:Ljava/lang/String;

    const-string v0, "Current Book is null; will not log metrics for featured recommendation count."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookAsin:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->bookRecommendationsWidgetDef:Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v0, "FeaturedRecommendationCount"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    invoke-virtual {v5, p1, v0}, Lcom/amazon/startactions/metrics/Metric;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/amazon/ea/ui/ThemeActivity;->onDestroy()V

    .line 142
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 133
    invoke-static {p1, p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->activityOptionItemSelected(Landroid/view/MenuItem;Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
