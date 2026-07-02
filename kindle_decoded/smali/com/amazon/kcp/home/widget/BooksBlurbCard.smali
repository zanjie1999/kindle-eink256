.class public final Lcom/amazon/kcp/home/widget/BooksBlurbCard;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "BooksBlurbCard.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBooksBlurbCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BooksBlurbCard.kt\ncom/amazon/kcp/home/widget/BooksBlurbCard\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n133#2,3:277\n153#2,3:280\n181#2,2:284\n1#3:283\n*E\n*S KotlinDebug\n*F\n+ 1 BooksBlurbCard.kt\ncom/amazon/kcp/home/widget/BooksBlurbCard\n*L\n76#1,3:277\n79#1,3:280\n68#1,2:284\n*E\n"
.end annotation


# instance fields
.field private final cardData:Lcom/amazon/kindle/home/model/CardData;

.field private final descriptionImageZoneDownloaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/widget/DisplayBlurbItem;",
            ">;"
        }
    .end annotation
.end field

.field private scrollMetricRecorded:Z

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 2

    const-string v0, "fastMetrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->descriptionImageZoneDownloaded:Ljava/util/Map;

    .line 63
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->books_blurb_card:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->viewLayoutId:I

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->itemList:Ljava/util/List;

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    .line 284
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/home/model/HomeZone;

    .line 69
    instance-of v0, p2, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->itemList:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;

    check-cast p2, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    invoke-direct {v1, p3, p2}, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/DescriptionImageZone;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic access$convertPixelsToDp(Lcom/amazon/kcp/home/widget/BooksBlurbCard;I)I
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->convertPixelsToDp(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFastMetrics$p(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-object p0
.end method

.method public static final synthetic access$getScrollMetricRecorded$p(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->scrollMetricRecorded:Z

    return p0
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method public static final synthetic access$reportBlurbCardMetric(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->reportBlurbCardMetric(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method public static final synthetic access$setScrollMetricRecorded$p(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->scrollMetricRecorded:Z

    return-void
.end method

.method private final allImagesDownloaded()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->descriptionImageZoneDownloaded:Ljava/util/Map;

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 278
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v2
.end method

.method private final anyImageDownloadsFailed()Z
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->descriptionImageZoneDownloaded:Ljava/util/Map;

    .line 280
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 79
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private final convertPixelsToDp(I)I
    .locals 2

    .line 273
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    div-int/2addr p1, v0

    return p1
.end method

.method private final getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/BooksBlurbCard$getImage$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/widget/BooksBlurbCard$getImage$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final getShovelerComponentView(Lcom/amazon/kcp/home/widget/DisplayBlurbItem;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    .line 185
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;->getZone()Lcom/amazon/kindle/home/model/DescriptionImageZone;

    move-result-object v0

    .line 187
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->books_blurb_card_shoveler_component:I

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "layoutInflater.inflate(\n\u2026          false\n        )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p3

    if-eqz p3, :cond_0

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p3, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    const/4 v2, 0x1

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/amazon/kcp/home/widget/BooksBlurbCard$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v3, p3

    if-eq p3, v2, :cond_2

    .line 193
    :goto_1
    sget p3, Lcom/amazon/kindle/librarymodule/R$drawable;->booklist_blurb_card_shape_light:I

    goto :goto_2

    .line 192
    :cond_2
    sget p3, Lcom/amazon/kindle/librarymodule/R$drawable;->booklist_blurb_card_shape_dark:I

    .line 195
    :goto_2
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/amazon/kcp/home/widget/BooksBlurbCard$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_5

    .line 197
    :goto_3
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->booklist_blurb_cover_image_pointer_light:I

    goto :goto_4

    .line 196
    :cond_5
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->booklist_blurb_cover_image_pointer_dark:I

    .line 199
    :goto_4
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->blurb_cover_image_pointer:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 200
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_linear_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 202
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 204
    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_shoveler_component_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 203
    check-cast p3, Landroid/widget/ImageView;

    .line 206
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_component_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 205
    check-cast v1, Lcom/amazon/android/ui/UiFontTextView;

    .line 208
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_component_author:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 207
    check-cast v2, Lcom/amazon/android/ui/UiFontTextView;

    const-string v3, "blurbTextView"

    .line 209
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurbAltText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "blurbAuthorTextView"

    .line 211
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurbByLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getBlurbByLineAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "cardImageView"

    .line 213
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->populateImages(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/DescriptionImageZone;)V

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;->getZoneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method private final populateImages(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/DescriptionImageZone;)V
    .locals 2

    .line 238
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForShovelerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/amazon/kcp/home/widget/BooksBlurbCard$populateImages$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/home/widget/BooksBlurbCard$populateImages$1;-><init>(Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/DescriptionImageZone;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final reportBlurbCardMetric(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 10

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;->getZoneName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;

    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;->getZone()Lcom/amazon/kindle/home/model/DescriptionImageZone;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object p3

    move-object v7, p3

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 231
    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;->getZone()Lcom/amazon/kindle/home/model/DescriptionImageZone;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/HomeZone;->getActions()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string/jumbo v0, "tap"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/home/model/HomeAction;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/HomeAction;->getArgs()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string/jumbo v0, "reftag"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v9, p3

    goto :goto_2

    :cond_3
    move-object v9, v2

    .line 232
    :goto_2
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->itemList:Ljava/util/List;

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v8

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    :goto_3
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string/jumbo v0, "view"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    instance-of v0, v7, Lcom/amazon/kcp/home/ui/HomeCardView;

    if-nez v0, :cond_0

    const-string v0, "com.amazon.kcp.home.widget.BooksBlurbCard"

    const-string v1, "Wrong view received, ignoring and returning w/o binding a model to view"

    .line 93
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->blurb_card_header_image:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 97
    iget-object v0, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const/4 v9, 0x0

    if-nez v1, :cond_1

    move-object v0, v9

    :cond_1
    move-object v5, v0

    check-cast v5, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v5, :cond_e

    .line 98
    iget-object v0, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v9

    :goto_0
    const/4 v10, 0x1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/amazon/kcp/home/widget/BooksBlurbCard$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v10, :cond_4

    .line 100
    :goto_1
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 99
    :cond_4
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 103
    :goto_3
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v11

    new-instance v12, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$1;-><init>(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Lcom/amazon/kindle/home/model/ThemedImageZone;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 120
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->blurb_card_header_title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget-object v1, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "titleTextView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_5

    move-object v1, v9

    :cond_5
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_6

    .line 122
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_6
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->blurb_card_header_desc:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "subTitleTextView"

    .line 126
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_7

    move-object v1, v9

    :cond_7
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 127
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    const/16 v1, 0x8

    .line 129
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->blurb_card_article_title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    iget-object v1, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string v3, "articleTitleTextView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v3, :cond_9

    move-object v1, v9

    :cond_9
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_a

    .line 133
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_a
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 137
    iget-object v1, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    const-string v3, "footerButton"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v3, :cond_b

    move-object v1, v9

    :cond_b
    check-cast v1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v1, :cond_c

    .line 139
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    :cond_c
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_shoveler_horizontal_scroller:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    check-cast v1, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;

    .line 147
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_shoveler:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 148
    move-object v4, v7

    check-cast v4, Lcom/amazon/kcp/home/ui/HomeCardView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 149
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    iget-object v5, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->itemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_d

    .line 152
    iget-object v11, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->itemList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kcp/home/widget/DisplayBlurbItem;

    const-string/jumbo v12, "shoveler"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "layoutInflater"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v11, v3, v4}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getShovelerComponentView(Lcom/amazon/kcp/home/widget/DisplayBlurbItem;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v11

    .line 154
    sget v12, Lcom/amazon/kindle/librarymodule/R$id;->books_blurb_shoveler_component_image:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 153
    check-cast v12, Landroid/widget/ImageView;

    .line 155
    iget-object v13, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    .line 157
    new-instance v14, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$6;

    invoke-direct {v14, v6}, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$6;-><init>(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V

    new-array v15, v10, [Landroid/view/View;

    const-string v10, "cardImageView"

    .line 158
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v15, v2

    .line 155
    invoke-interface {v8, v13, v9, v14, v15}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    .line 159
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    goto :goto_5

    .line 162
    :cond_d
    new-instance v3, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;

    invoke-direct {v3, v6, v1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;-><init>(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;)V

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;->addScrollChangedListener(Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;)V

    .line 177
    iget-object v1, v6, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    new-instance v3, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$8;

    invoke-direct {v3, v6}, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$8;-><init>(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    aput-object v0, v4, v2

    invoke-interface {v8, v1, v9, v3, v4}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public final getCardData()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public final getDescriptionImageZoneDownloaded$LibraryModule_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->descriptionImageZoneDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->allImagesDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->anyImageDownloadsFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_0
    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->cardData:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
