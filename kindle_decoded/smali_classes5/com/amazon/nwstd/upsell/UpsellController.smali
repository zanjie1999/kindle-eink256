.class public Lcom/amazon/nwstd/upsell/UpsellController;
.super Ljava/lang/Object;
.source "UpsellController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;
    }
.end annotation


# static fields
.field private static final CENT:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBannerButtonText:Ljava/lang/String;

.field private mBannerNeedsUpdate:Z

.field private mBannerTextDescription:Ljava/lang/String;

.field private mBannerTextTitle:Ljava/lang/String;

.field private mChromeBannerFrequencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCoverHeight:I

.field private mCoverImage:Landroid/graphics/drawable/Drawable;

.field private final mCoverWidth:I

.field protected final mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

.field private final mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

.field private final mFilesDir:Ljava/io/File;

.field private mFullPageAdCardBackgroundImage:Landroid/graphics/drawable/Drawable;

.field private mFullPageButtonText:Ljava/lang/String;

.field private mFullPageFrequencyList:[D

.field private mFullPageTextDescription:Ljava/lang/String;

.field private mFullPageTextTitle:Ljava/lang/String;

.field private mListOfArticlesInTextViewEligibleForChromeBanner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

.field private mOnClickListenerFullPage:Landroid/view/View$OnClickListener;

.field private final mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

.field private mReplicaUpsellFullPageViewRetainCount:I

.field private final mResources:Landroid/content/res/Resources;

.field private mTargetAsin:Ljava/lang/String;

.field private mTargetPage:Ljava/lang/String;

.field private mTempCoverImage:Landroid/graphics/drawable/Drawable;

.field private mTempFullPageButtonText:Ljava/lang/String;

.field private mTempFullPageTextDescription:Ljava/lang/String;

.field private mTempFullPageTextTitle:Ljava/lang/String;

.field protected mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

.field public mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field private final mWebStoreController:Lcom/amazon/kcp/store/IWebStoreController;

.field private final mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/UpsellController;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/store/IWebStoreController;Landroid/view/View$OnClickListener;Lcom/amazon/nwstd/resources/DynamicResourcesController;Landroid/content/Context;Lcom/amazon/nwstd/metrics/IMetricsHelper;Lcom/amazon/nwstd/upsell/IReadingHelper;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 6

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const-string v1, ""

    .line 106
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextTitle:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextTitle:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextTitle:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextDescription:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextDescription:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextDescription:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerButtonText:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageButtonText:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageButtonText:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetAsin:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetPage:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverImage:Landroid/graphics/drawable/Drawable;

    .line 166
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempCoverImage:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mOnClickListenerFullPage:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    .line 212
    iput v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    .line 217
    iput-boolean v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerNeedsUpdate:Z

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mChromeBannerFrequencyList:Ljava/util/List;

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mListOfArticlesInTextViewEligibleForChromeBanner:Ljava/util/List;

    .line 231
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageFrequencyList:[D

    .line 236
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageAdCardBackgroundImage:Landroid/graphics/drawable/Drawable;

    .line 241
    new-instance v2, Lcom/amazon/nwstd/upsell/UpsellController$1;

    invoke-direct {v2, p0}, Lcom/amazon/nwstd/upsell/UpsellController$1;-><init>(Lcom/amazon/nwstd/upsell/UpsellController;)V

    iput-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "book must not be null"

    .line 321
    invoke-static {v3, v4}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v5, "webStoreController must not be null"

    .line 322
    invoke-static {v3, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz p4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-string v5, "dynamicResourcesController must not be null"

    .line 323
    invoke-static {v3, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz p5, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 324
    :goto_3
    invoke-static {v3, v4}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz p6, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const-string v4, "metricsHelper shouldn\'t be null"

    .line 325
    invoke-static {v3, v4}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz p8, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    const-string/jumbo v3, "origin type shouldn\'t be null"

    .line 326
    invoke-static {v2, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 328
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 329
    iput-object p2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mWebStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    .line 330
    iput-object p3, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mOnClickListenerFullPage:Landroid/view/View$OnClickListener;

    .line 331
    iput-object p5, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    .line 333
    invoke-virtual {p5, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFilesDir:Ljava/io/File;

    .line 334
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_fullpage_magazine_cover_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverWidth:I

    .line 335
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->upsell_fullpage_magazine_cover_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverHeight:I

    .line 336
    iput-object p4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    .line 337
    iput-object p6, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    .line 338
    iput-object p7, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    .line 339
    iput v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    .line 340
    iput-object p8, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    .line 341
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    invoke-virtual {p4, p1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->registerEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V

    .line 342
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->fetchCoverData()V

    .line 343
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->fetchLocaleData()V

    .line 344
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->fetchFullPageAdCardBackground()V

    return-void
.end method

.method public static createInstance(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/store/IWebStoreController;Landroid/view/View$OnClickListener;Lcom/amazon/nwstd/resources/DynamicResourcesController;Landroid/content/Context;Lcom/amazon/nwstd/metrics/IMetricsHelper;Lcom/amazon/nwstd/upsell/IReadingHelper;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Lcom/amazon/nwstd/upsell/UpsellController;
    .locals 10

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance v9, Lcom/amazon/nwstd/upsell/UpsellController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/nwstd/upsell/UpsellController;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/store/IWebStoreController;Landroid/view/View$OnClickListener;Lcom/amazon/nwstd/resources/DynamicResourcesController;Landroid/content/Context;Lcom/amazon/nwstd/metrics/IMetricsHelper;Lcom/amazon/nwstd/upsell/IReadingHelper;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    return-object v9

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private fetchCoverData()V
    .locals 5

    .line 1007
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1012
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1013
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v1, "The number of resources returned is more than one"

    invoke-static {v3, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 1015
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1016
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1018
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->loadDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverImage:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method

.method private fetchFullPageAdCardBackground()V
    .locals 4

    .line 995
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_card_background:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 997
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 998
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v1, "The number of resources returned is more than one"

    invoke-static {v3, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 1000
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1001
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageAdCardBackgroundImage:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method private fetchLocaleData()V
    .locals 9

    .line 893
    invoke-static {}, Lcom/amazon/nwstd/utils/LocaleUtils;->getDefaultLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_ASIN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    iget-object v6, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v2, v6}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 897
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 898
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetAsin:Ljava/lang/String;

    .line 900
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_PAGE:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v5, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    iget-object v6, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v2, v6}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 901
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 902
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetPage:Ljava/lang/String;

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    iget-object v5, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1, v4, v5, v0, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 906
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    const-string v5, "The number of resources returned is more than one"

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 907
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 909
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 910
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerButtonText:Ljava/lang/String;

    goto :goto_1

    .line 912
    :cond_4
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_banner_button_text:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerButtonText:Ljava/lang/String;

    .line 920
    :goto_1
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 921
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetPage:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v7, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->RETAIL:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    invoke-virtual {v7}, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 922
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 924
    :cond_5
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v7, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    iget-object v8, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v8}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1, v7, v0, v8}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 925
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_6

    .line 926
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v7, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v4, v1, v7, v0, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 928
    :cond_6
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 929
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v6, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 931
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 932
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextDescription:Ljava/lang/String;

    goto :goto_3

    .line 934
    :cond_9
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_banner_text_description:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextDescription:Ljava/lang/String;

    .line 937
    :goto_3
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    iget-object v7, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1, v4, v7, v0, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 938
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 939
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 941
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 942
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextTitle:Ljava/lang/String;

    goto :goto_5

    .line 944
    :cond_c
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_banner_text_title:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextTitle:Ljava/lang/String;

    const-string v1, "NewsstandUpsellBanner"

    const-string v4, "UpsellBannerDefaultStrings"

    .line 945
    invoke-virtual {p0, v1, v4}, Lcom/amazon/nwstd/upsell/UpsellController;->reportOperationalMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_5
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    iget-object v7, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1, v4, v7, v0, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 949
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 950
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_d

    const/4 v4, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 952
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 953
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageButtonText:Ljava/lang/String;

    goto :goto_7

    .line 955
    :cond_f
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_full_page_button_text:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageButtonText:Ljava/lang/String;

    .line 963
    :goto_7
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 964
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetPage:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget-object v7, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->RETAIL:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    invoke-virtual {v7}, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 965
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 967
    :cond_10
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v7, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    iget-object v8, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v8}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1, v7, v0, v8}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 968
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_11

    .line 969
    iget-object v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v7, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v4, v1, v7, v0, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 971
    :cond_11
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 972
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v6, :cond_12

    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 974
    :cond_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 975
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextDescription:Ljava/lang/String;

    goto :goto_9

    .line 977
    :cond_14
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_full_page_text_description:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextDescription:Ljava/lang/String;

    .line 980
    :goto_9
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    iget-object v7, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v1, v4, v7, v0, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 981
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 982
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v6, :cond_15

    goto :goto_a

    :cond_15
    const/4 v6, 0x0

    :goto_a
    invoke-static {v6, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 984
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 985
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextTitle:Ljava/lang/String;

    goto :goto_b

    .line 987
    :cond_17
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_full_page_text_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextTitle:Ljava/lang/String;

    const-string v0, "NewsstandUpsellFullPage"

    const-string v1, "UpsellFullPageDefaultStrings"

    .line 988
    invoke-virtual {p0, v0, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->reportOperationalMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_b
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->getFrequencyList(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageFrequencyList:[D

    return-void
.end method

.method private getReadingMode()Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0}, Lcom/amazon/nwstd/utils/BookItemUtils;->isYellowJerseyMagazine(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->YJ:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    return-object v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    invoke-interface {v0}, Lcom/amazon/nwstd/upsell/IReadingHelper;->isInTextView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->TEXTVIEW:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    return-object v0

    .line 671
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->REPLICA:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    return-object v0
.end method

.method public static hasMinimumHeightForUpsell(Landroid/content/Context;)Z
    .locals 1

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/newsstand/core/R$bool;->show_upsell:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 265
    invoke-static {p1}, Lcom/amazon/nwstd/utils/MultiWindowUtils;->isActivityInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/UpsellController;->hasMinimumHeightForUpsell(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 741
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFilesDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 743
    sget-object p1, Lcom/amazon/nwstd/upsell/UpsellController;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "Couldn\'t load the drawable from the DB, using the default one"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->loadDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private setBannerButtonText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 603
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 604
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerButtonText:Ljava/lang/String;

    .line 605
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setButtonText(Ljava/lang/String;)V

    goto :goto_1

    .line 608
    :cond_1
    iput-boolean v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerNeedsUpdate:Z

    :goto_1
    return-void
.end method

.method private setBannerDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 589
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextDescription:Ljava/lang/String;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 594
    iput-boolean p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerNeedsUpdate:Z

    :goto_0
    return-void
.end method

.method private setBannerTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 574
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextTitle:Ljava/lang/String;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 579
    iput-boolean p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerNeedsUpdate:Z

    :goto_0
    return-void
.end method

.method public static shouldEnableUpsell(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/content/Context;)Z
    .locals 1

    .line 275
    invoke-static {p0}, Lcom/amazon/nwstd/upsell/UpsellUtils;->fetchOriginType(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->shouldEnableUpsell(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private updateFullPageButton(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 870
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    if-nez v0, :cond_0

    .line 873
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageButtonText:Ljava/lang/String;

    goto :goto_0

    .line 877
    :cond_0
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageButtonText:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFullPageCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 816
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    if-nez v0, :cond_0

    .line 819
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 823
    :cond_0
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempCoverImage:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFullPageDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 852
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    if-nez v0, :cond_0

    .line 855
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextDescription:Ljava/lang/String;

    goto :goto_0

    .line 859
    :cond_0
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextDescription:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFullPageTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 834
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    if-nez v0, :cond_0

    .line 837
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextTitle:Ljava/lang/String;

    goto :goto_0

    .line 841
    :cond_0
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public decreaseUpsellFullPageViewRetainCount()V
    .locals 2

    .line 1105
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1108
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 1112
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    if-nez v0, :cond_4

    .line 1113
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempCoverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1114
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverImage:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 1115
    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempCoverImage:Landroid/graphics/drawable/Drawable;

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextTitle:Ljava/lang/String;

    .line 1120
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextTitle:Ljava/lang/String;

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextDescription:Ljava/lang/String;

    .line 1125
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageTextDescription:Ljava/lang/String;

    .line 1128
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1129
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageButtonText:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageButtonText:Ljava/lang/String;

    .line 1130
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTempFullPageButtonText:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesController:Lcom/amazon/nwstd/resources/DynamicResourcesController;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mDynamicResourcesEventsListener:Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->unregisterEventListener(Lcom/amazon/nwstd/resources/IDynamicResourcesListener;)V

    .line 714
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->destroy()V

    .line 716
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    .line 718
    :cond_0
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mOnClickListenerFullPage:Landroid/view/View$OnClickListener;

    .line 719
    iput-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    return-void
.end method

.method public getChromeBannerConfiguredArticleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1139
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mListOfArticlesInTextViewEligibleForChromeBanner:Ljava/util/List;

    return-object v0
.end method

.method public getChromeBannerFrequency()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mChromeBannerFrequencyList:Ljava/util/List;

    return-object v0
.end method

.method public getCoverImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFrequencyList(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)[D
    .locals 7

    .line 1027
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1033
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1034
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-virtual {v0}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1038
    :goto_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1046
    :cond_1
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object v4, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1047
    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "10,25,50"

    goto :goto_1

    .line 1049
    :cond_2
    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "10,20,40,60,80"

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const/16 p1, 0x2c

    .line 1056
    invoke-static {p1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    .line 1057
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1058
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [D

    .line 1059
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1060
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v2

    :catchall_0
    move-exception p1

    .line 1038
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 1039
    throw p1
.end method

.method public getFullPageAdCardBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageAdCardBackgroundImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFullPageButtonText()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPageFrequency()[D
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageFrequencyList:[D

    if-eqz v0, :cond_0

    return-object v0

    .line 395
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellUtils;->UPSELL_POSITIONS:[D

    return-object v0
.end method

.method public getFullPageTextDescription()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPageTextTitle()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mFullPageTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListenerFullPage()Landroid/view/View$OnClickListener;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mOnClickListenerFullPage:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getUpsellBannerView()Lcom/amazon/nwstd/upsell/UpsellBannerView;
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    return-object v0
.end method

.method protected handleButtonClick(Ljava/lang/String;)V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetAsin:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetPage:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->RETAIL:Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;

    invoke-virtual {v2}, Lcom/amazon/nwstd/upsell/UpsellController$TargetPageType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 686
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getRetailDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 690
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 694
    invoke-static {v1}, Lcom/amazon/kindle/store/StoreManager;->getStoreContext(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v1

    .line 695
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mWebStoreController:Lcom/amazon/kcp/store/IWebStoreController;

    invoke-interface {v2, v0, p1, v1}, Lcom/amazon/kcp/store/IWebStoreController;->showDetailPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleButtonClickFromBanner()V
    .locals 9

    .line 619
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v0}, Lcom/amazon/nwstd/upsell/IReadingHelper;->getReadingPercentage()D

    move-result-wide v0

    .line 621
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    invoke-interface {v2}, Lcom/amazon/nwstd/upsell/IReadingHelper;->getCurrentArticleID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, ""

    :goto_0
    move-wide v5, v0

    move-object v7, v2

    .line 623
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->getReadingMode()Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->onUpsellLinkClicked(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;DLjava/lang/String;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V

    .line 625
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_banner_referral_tag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClick(Ljava/lang/String;)V

    goto :goto_1

    .line 627
    :cond_1
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne v0, v1, :cond_2

    .line 628
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->ku_upsell_banner_referral_tag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClick(Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :cond_2
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne v0, v1, :cond_3

    .line 630
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->pr_upsell_banner_referral_tag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClick(Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_3
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellController;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Upsell origin can not be null in handleButtonClickFromBanner"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public handleButtonClickFromFullPage()V
    .locals 9

    .line 643
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Lcom/amazon/nwstd/upsell/IReadingHelper;->getReadingPercentage()D

    move-result-wide v0

    .line 645
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    invoke-interface {v2}, Lcom/amazon/nwstd/upsell/IReadingHelper;->getCurrentArticleID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, ""

    :goto_0
    move-wide v5, v0

    move-object v7, v2

    .line 647
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    sget-object v4, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->getReadingMode()Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->onUpsellLinkClicked(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;DLjava/lang/String;Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V

    .line 649
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne v0, v1, :cond_1

    .line 650
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_page_referral_tag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClick(Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_1
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne v0, v1, :cond_2

    .line 652
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->ku_upsell_page_referral_tag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClick(Ljava/lang/String;)V

    goto :goto_1

    .line 653
    :cond_2
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne v0, v1, :cond_3

    .line 654
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->pr_upsell_page_referral_tag:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->handleButtonClick(Ljava/lang/String;)V

    goto :goto_1

    .line 656
    :cond_3
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellController;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Upsell origin can not be null in handleButtonClickFromFullPage"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public hideBanner()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    invoke-interface {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->onUpsellBannerHidden()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->hide()V

    :cond_1
    return-void
.end method

.method public increaseUpsellFullPageViewRetainCount()V
    .locals 1

    .line 1092
    iget v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReplicaUpsellFullPageViewRetainCount:I

    return-void
.end method

.method public initializeBanner(Landroid/view/ViewStub;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellBannerView;

    invoke-direct {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;-><init>(Landroid/view/ViewStub;)V

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    .line 354
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setTitle(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setDescription(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setButtonText(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    new-instance v0, Lcom/amazon/nwstd/upsell/UpsellController$2;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/upsell/UpsellController$2;-><init>(Lcom/amazon/nwstd/upsell/UpsellController;)V

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initializeBannerFrequencyList(I)V
    .locals 8

    .line 370
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->getFrequencyList(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)[D

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    array-length v1, v0

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    .line 372
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 373
    iget-object v5, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mChromeBannerFrequencyList:Ljava/util/List;

    int-to-double v6, p1

    mul-double v3, v3, v6

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isCurrentPageConfuigerdForUpsellChrome(I)Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mChromeBannerFrequencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mChromeBannerFrequencyList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isDefaultLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 728
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 729
    invoke-static {p1}, Lcom/amazon/nwstd/utils/LocaleUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 731
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected loadDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    new-instance v1, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    invoke-direct {v1}, Lcom/amazon/android/system/drawing/AndroidImageFactory;-><init>()V

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverWidth:I

    iget v4, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mCoverHeight:I

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/android/drawing/AndroidImage;

    if-eqz v0, :cond_0

    .line 756
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 758
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellController;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "No default cover available"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onOrientationChanged(Z)V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->onOrientationChanged(Z)V

    :cond_0
    return-void
.end method

.method public onResourceAdded(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 4

    .line 768
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getOriginType()Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellOrigin:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isTextResource(Lcom/amazon/nwstd/resources/DynamicResource;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 771
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellController$3;->$SwitchMap$com$amazon$nwstd$resources$DynamicResourceTargetType:[I

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 806
    sget-object v0, Lcom/amazon/nwstd/upsell/UpsellController;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown resource has been added : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getTargetType()Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", resource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetPage:Ljava/lang/String;

    goto :goto_0

    .line 796
    :pswitch_1
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mTargetAsin:Ljava/lang/String;

    goto :goto_0

    .line 791
    :pswitch_2
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mbook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->updateFullPageCover(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 788
    :pswitch_3
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->updateFullPageTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :pswitch_4
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->updateFullPageDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :pswitch_5
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->updateFullPageButton(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :pswitch_6
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->setBannerTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :pswitch_7
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->setBannerDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :pswitch_8
    invoke-virtual {p1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->setBannerButtonText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResourceRemoved(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 0

    return-void
.end method

.method public populateUpsellBannerAccessibilityNodeInfoIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->populateAccessibilityNodeInfoIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method protected reportOperationalMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1073
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBannerBottomMargin(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setBannerButtomMargin(I)V

    :cond_0
    return-void
.end method

.method public setChromeBnnerFrequencyListInTextMode(Ljava/lang/String;)V
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mListOfArticlesInTextViewEligibleForChromeBanner:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showBanner()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 413
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    if-eqz v2, :cond_0

    .line 414
    invoke-interface {v2}, Lcom/amazon/nwstd/upsell/IReadingHelper;->getReadingPercentage()D

    move-result-wide v0

    .line 415
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mReadingHelper:Lcom/amazon/nwstd/upsell/IReadingHelper;

    invoke-interface {v2}, Lcom/amazon/nwstd/upsell/IReadingHelper;->getCurrentArticleID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 417
    :goto_0
    iget-object v3, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mMetricsHelper:Lcom/amazon/nwstd/metrics/IMetricsHelper;

    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/UpsellController;->getReadingMode()Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object v4

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->onUpsellBannerShown(Ljava/lang/String;DLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;)V

    .line 418
    iget-boolean v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setButtonText(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setDescription(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mBannerNeedsUpdate:Z

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController;->mUpsellBannerView:Lcom/amazon/nwstd/upsell/UpsellBannerView;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->show()V

    :cond_2
    return-void
.end method
