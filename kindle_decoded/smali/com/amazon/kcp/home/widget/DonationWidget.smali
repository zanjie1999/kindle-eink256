.class public final Lcom/amazon/kcp/home/widget/DonationWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "DonationWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationWidget.kt\ncom/amazon/kcp/home/widget/DonationWidget\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n133#2,3:139\n153#2,3:142\n1#3:145\n1147#4,2:146\n1221#4,4:148\n*E\n*S KotlinDebug\n*F\n+ 1 DonationWidget.kt\ncom/amazon/kcp/home/widget/DonationWidget\n*L\n49#1,3:139\n50#1,3:142\n43#1,2:146\n43#1,4:148\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final data:Lcom/amazon/kindle/home/model/CardData;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final priority:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final themedImageDownloaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/home/model/CardData;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/16 p1, 0xa

    .line 146
    invoke-static {p5, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 147
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 148
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 149
    check-cast p3, Ljava/lang/String;

    .line 43
    new-instance p4, Lkotlin/Pair;

    const/4 p5, 0x0

    invoke-direct {p4, p3, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->themedImageDownloaded:Ljava/util/Map;

    .line 45
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->priority:I

    .line 46
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->donation_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->viewLayoutId:I

    return-void
.end method

.method public static final synthetic access$dismiss(Lcom/amazon/kcp/home/widget/DonationWidget;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/DonationWidget;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/DonationWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/DonationWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final dismiss(Landroid/view/View;)V
    .locals 4

    .line 119
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->addDismissedCard(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/amazon/kindle/home/model/HomeAction;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "tap"

    const-string v3, "DISMISS"

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/home/widget/DonationWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    .line 121
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange(Z)V

    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 125
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 127
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 128
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 129
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actionSource"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {p3, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->donation_body_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.donation_body_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v1, :cond_d

    .line 63
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v4, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/amazon/kcp/home/widget/DonationWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    if-eq v2, v4, :cond_3

    .line 65
    :goto_1
    sget-object v2, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 64
    :cond_3
    sget-object v2, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_c

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/librarymodule/R$dimen;->home_donation_image_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 69
    sget-object v7, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v7, v2, v6, v6}, Lcom/amazon/kcp/library/HomeUtils;->decodeImageFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_c

    .line 77
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->donation_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.donation_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/android/ui/UiFontTextView;

    .line 78
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v5, :cond_5

    move-object v2, v3

    :cond_5
    check-cast v2, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v2, :cond_b

    .line 79
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->donation_body:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.donation_body)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/android/ui/UiFontTextView;

    .line 82
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v5, :cond_6

    move-object v2, v3

    :cond_6
    check-cast v2, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v2, :cond_b

    .line 83
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.home_card_footer_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v5, :cond_7

    move-object v2, v3

    :cond_7
    check-cast v2, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz v2, :cond_b

    .line 87
    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->donation_close_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v2, "view.findViewById(R.id.donation_close_button)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 90
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v5, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v2, v5}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v3

    :goto_4
    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    sget-object v5, Lcom/amazon/kcp/home/widget/DonationWidget$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    if-eq v2, v4, :cond_a

    .line 92
    :goto_5
    sget v2, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_close_light:I

    goto :goto_6

    .line 91
    :cond_a
    sget v2, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_close_dark:I

    .line 90
    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v2, Lcom/amazon/kcp/home/widget/DonationWidget$bindView$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/DonationWidget$bindView$4;-><init>(Lcom/amazon/kcp/home/widget/DonationWidget;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    new-instance v2, Lcom/amazon/kcp/home/widget/DonationWidget$bindView$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/widget/DonationWidget$bindView$5;-><init>(Lcom/amazon/kcp/home/widget/DonationWidget;)V

    new-array v4, v4, [Landroid/view/View;

    aput-object v1, v4, v0

    invoke-interface {p2, p1, v3, v2, v4}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    :cond_b
    return-void

    :cond_c
    const/16 p2, 0x8

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public final getData()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->themedImageDownloaded:Ljava/util/Map;

    .line 139
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 140
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

    const/4 v0, 0x0

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->themedImageDownloaded:Ljava/util/Map;

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 143
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 50
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    if-eqz v0, :cond_7

    .line 53
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 54
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_3

    .line 55
    :cond_8
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_3
    return-object v0
.end method

.method public final getThemedImageDownloaded()Ljava/util/Map;
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

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->themedImageDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 102
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/DonationWidget;->data:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method
