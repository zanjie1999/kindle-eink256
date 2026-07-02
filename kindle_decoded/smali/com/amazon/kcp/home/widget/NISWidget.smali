.class public final Lcom/amazon/kcp/home/widget/NISWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "NISWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNISWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NISWidget.kt\ncom/amazon/kcp/home/widget/NISWidget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1#2:279\n1819#3,2:280\n*E\n*S KotlinDebug\n*F\n+ 1 NISWidget.kt\ncom/amazon/kcp/home/widget/NISWidget\n*L\n269#1,2:280\n*E\n"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field private bookAuthorView:Landroid/widget/TextView;

.field private bookInfoView:Landroid/widget/TextView;

.field private bookTitleView:Landroid/widget/TextView;

.field private buyButton:Landroid/widget/Button;

.field private buyInfoView:Landroid/widget/TextView;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private coverView:Lcom/amazon/kcp/cover/BadgeableCover;

.field private download:Ljava/lang/String;

.field private downloading:Ljava/lang/String;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private incompleteDownload:Ljava/lang/String;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final priority:I

.field private ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

.field private readNow:Ljava/lang/String;

.field private reviewCountView:Landroid/widget/TextView;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private seeAllView:Landroid/widget/TextView;

.field private shouldIgnore:Z

.field private subTitleTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private unableToDownload:Ljava/lang/String;

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCacheManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/NISWidget;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/NISWidget;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p5, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    .line 60
    invoke-virtual {p5}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->priority:I

    .line 61
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->nis_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->viewLayoutId:I

    return-void
.end method

.method public static final synthetic access$getBuyButton$p(Lcom/amazon/kcp/home/widget/NISWidget;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "buyButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getBuyInfoView$p(Lcom/amazon/kcp/home/widget/NISWidget;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyInfoView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "buyInfoView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/NISWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/NISWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final checkAndUpdateBuyButtonIfOwned()V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->asin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/amazon/kcp/library/HomeUtils;->bookIdForAsin(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/NISWidget;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->shouldIgnore:Z

    if-eqz v0, :cond_9

    .line 208
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 209
    sget-object v2, Lcom/amazon/kcp/home/widget/NISWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-string/jumbo v2, "readNow"

    const-string v3, "download"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->readNow:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->incompleteDownload:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v5, v2}, Lcom/amazon/kcp/home/widget/NISWidget;->updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "incompleteDownload"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->download:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->unableToDownload:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v5, v2}, Lcom/amazon/kcp/home/widget/NISWidget;->updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "unableToDownload"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->downloading:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0, v4, v1}, Lcom/amazon/kcp/home/widget/NISWidget;->updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "downloading"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->readNow:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0, v5, v1}, Lcom/amazon/kcp/home/widget/NISWidget;->updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 210
    :pswitch_4
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->download:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-direct {p0, v0, v5, v1}, Lcom/amazon/kcp/home/widget/NISWidget;->updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    return-void

    :cond_a
    const-string v0, "asin"

    .line 202
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 250
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/NISWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 253
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 254
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actionSource"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 250
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {p3, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;-><init>(Lcom/amazon/kcp/home/widget/NISWidget;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    instance-of v0, p1, Lcom/amazon/kcp/home/ui/NISCardView;

    const-string v1, "com.amazon.kcp.home.widget.NISWidget"

    if-nez v0, :cond_0

    const-string p1, "Non-NISView received, ignoring and returning w/o binding a model to view"

    .line 97
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 103
    check-cast p1, Lcom/amazon/kcp/home/ui/NISCardView;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->titleTextView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->subTitleTextView:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getBookTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookTitleView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getBookAuthorView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookAuthorView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getRatingView()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    .line 108
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getReviewCountView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getBookInfoView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookInfoView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getSeeAllView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->seeAllView:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getNisCover()Lcom/amazon/kcp/cover/BadgeableCover;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->coverView:Lcom/amazon/kcp/cover/BadgeableCover;

    .line 112
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getBuyButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getBuyInfoView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyInfoView:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getReadNow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->readNow:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getDownload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->download:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getDownloading()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->downloading:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getUnableToDownload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->unableToDownload:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/NISCardView;->getIncompleteDownload()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->incompleteDownload:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "titleTextView"

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v0, :cond_1

    move-object p1, v3

    :cond_1
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->subTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v0, "subTitleTextView"

    if-eqz p1, :cond_3f

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/NISWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v4, :cond_4

    move-object v2, v3

    :cond_4
    check-cast v2, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_6

    .line 126
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    const/16 v0, 0x8

    .line 128
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->coverView:Lcom/amazon/kcp/cover/BadgeableCover;

    const-string v2, "coverView"

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kindle/home/model/ImageZone;

    if-nez v0, :cond_7

    move-object p1, v3

    :cond_7
    check-cast p1, Lcom/amazon/kindle/home/model/ImageZone;

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 131
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->coverView:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v6, :cond_c

    .line 132
    new-instance v7, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8, p1}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/ImageZone;)V

    .line 133
    invoke-virtual {v6, v7}, Lcom/amazon/kcp/cover/BadgeableCover;->setLibraryItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 134
    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    sget-object v9, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v8, v7, v9}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/kcp/cover/BadgeableCover;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V

    .line 136
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v0

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    move-object v7, v3

    :goto_2
    if-eqz v7, :cond_9

    .line 137
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 139
    :cond_9
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->asin:Ljava/lang/String;

    .line 141
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    .line 132
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookTitleView:Landroid/widget/TextView;

    const-string v7, "bookTitleView"

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v6, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v6, :cond_e

    move-object p1, v3

    :cond_e
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_10

    .line 144
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_f

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 144
    :cond_f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookAuthorView:Landroid/widget/TextView;

    const-string v7, "bookAuthorView"

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v6, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v6, :cond_11

    move-object p1, v3

    :cond_11
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_13

    .line 148
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookAuthorView:Landroid/widget/TextView;

    if-eqz v6, :cond_12

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 148
    :cond_12
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_13
    :goto_5
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v6, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    const-string/jumbo v7, "ratingView"

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Landroid/widget/RatingBar;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v6, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v6, :cond_14

    move-object p1, v3

    :cond_14
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    const-string/jumbo v6, "reviewCountView"

    if-eqz p1, :cond_22

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    int-to-float v8, v4

    cmpl-float v8, p1, v8

    if-lez v8, :cond_1d

    .line 155
    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v8, :cond_1c

    invoke-virtual {v8, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 156
    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v8, :cond_1b

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    new-instance p1, Lcom/amazon/kcp/home/actions/ActionHandler;

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v9, Lcom/amazon/kcp/home/widget/NISWidget$bindView$6$handler$1;

    invoke-direct {v9, p0}, Lcom/amazon/kcp/home/widget/NISWidget$bindView$6$handler$1;-><init>(Lcom/amazon/kcp/home/widget/NISWidget;)V

    invoke-direct {p1, v8, v3, v9}, Lcom/amazon/kcp/home/actions/ActionHandler;-><init>(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 158
    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v8, :cond_1a

    new-instance v9, Lcom/amazon/kcp/home/widget/NISWidget$bindView$6$1;

    invoke-direct {v9, p1}, Lcom/amazon/kcp/home/widget/NISWidget$bindView$6$1;-><init>(Lcom/amazon/kcp/home/actions/ActionHandler;)V

    invoke-virtual {v8, v9}, Lcom/amazon/kcp/home/ui/RatingBarButton;->setOnClickListener(Lkotlin/jvm/functions/Function1;)V

    .line 159
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz p1, :cond_19

    invoke-virtual {p1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v8, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v8, :cond_15

    move-object p1, v3

    :cond_15
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_22

    .line 161
    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    if-eqz v8, :cond_17

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    .line 162
    :cond_16
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    throw v3

    .line 161
    :cond_17
    :try_start_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    throw v3

    .line 160
    :cond_18
    :try_start_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    throw v3

    .line 159
    :cond_19
    :try_start_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    throw v3

    .line 158
    :cond_1a
    :try_start_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    throw v3

    .line 156
    :cond_1b
    :try_start_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    throw v3

    .line 155
    :cond_1c
    :try_start_6
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    throw v3

    .line 165
    :cond_1d
    :try_start_7
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    :cond_1e
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0

    throw v3

    .line 165
    :cond_1f
    :try_start_8
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0

    throw v3

    :catch_0
    nop

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz p1, :cond_21

    invoke-virtual {p1, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    if-eqz p1, :cond_20

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string v7, "RatingZoneError"

    invoke-interface {p1, v1, v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    .line 170
    :cond_20
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_21
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_22
    :goto_6
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookInfoView:Landroid/widget/TextView;

    const-string v7, "bookInfoView"

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v1, :cond_23

    move-object p1, v3

    :cond_23
    check-cast p1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz p1, :cond_25

    .line 176
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->bookInfoView:Landroid/widget/TextView;

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    .line 176
    :cond_24
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_25
    :goto_7
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->seeAllView:Landroid/widget/TextView;

    const-string/jumbo v7, "seeAllView"

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v1, :cond_26

    move-object p1, v3

    :cond_26
    check-cast p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz p1, :cond_28

    .line 180
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->seeAllView:Landroid/widget/TextView;

    if-eqz v1, :cond_27

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    .line 180
    :cond_27
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_28
    :goto_8
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyInfoView:Landroid/widget/TextView;

    const-string v1, "buyInfoView"

    if-eqz p1, :cond_37

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v8}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyInfoView:Landroid/widget/TextView;

    if-eqz v9, :cond_36

    invoke-virtual {v9}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v9, :cond_29

    move-object v8, v3

    :cond_29
    check-cast v8, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v8, :cond_2b

    .line 184
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyInfoView:Landroid/widget/TextView;

    if-eqz v5, :cond_2a

    invoke-virtual {v8}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    goto :goto_9

    :cond_2a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_2b
    :goto_9
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    const-string v5, "buyButton"

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v1, :cond_2c

    move-object p1, v3

    :cond_2c
    check-cast p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz p1, :cond_30

    .line 189
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    if-eqz v1, :cond_2e

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    if-eqz v1, :cond_2d

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_a

    .line 192
    :cond_2d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_2e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_2f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_30
    :goto_a
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v1, Lcom/amazon/kcp/home/widget/NISWidget$bindView$11;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/NISWidget$bindView$11;-><init>(Lcom/amazon/kcp/home/widget/NISWidget;)V

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Lcom/amazon/kcp/home/widget/NISWidget;->seeAllView:Landroid/widget/TextView;

    if-eqz v9, :cond_34

    aput-object v9, v8, v4

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/NISWidget;->coverView:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v4, :cond_33

    aput-object v4, v8, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->reviewCountView:Landroid/widget/TextView;

    if-eqz v2, :cond_32

    aput-object v2, v8, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget;->buyButton:Landroid/widget/Button;

    if-eqz v2, :cond_31

    aput-object v2, v8, v0

    invoke-interface {p2, p1, v3, v1, v8}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    .line 198
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/NISWidget;->checkAndUpdateBuyButtonIfOwned()V

    return-void

    .line 196
    :cond_31
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_32
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_33
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_34
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_35
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_36
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_37
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_38
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_39
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_3a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_3b
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_3c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_3d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_3e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_40
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->shouldIgnore:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_0
    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->viewLayoutId:I

    return v0
.end method

.method public final declared-synchronized onContentUpdate(Ljava/util/Collection;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 280
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 270
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->asin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v3, "metadata"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/NISWidget;->checkAndUpdateBuyButtonIfOwned()V

    .line 273
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "asin"

    .line 271
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 277
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 263
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 234
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 233
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 240
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/NISWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
