.class public final Lcom/amazon/kcp/home/debug/SidekickDebugCards;
.super Ljava/lang/Object;
.source "SidekickDebugCards.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidekickDebugCards.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidekickDebugCards.kt\ncom/amazon/kcp/home/debug/SidekickDebugCards\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,611:1\n1#2:612\n*E\n"
.end annotation


# instance fields
.field private final settings:Lcom/amazon/kcp/home/debug/SidekickSettings;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    return-void
.end method

.method private final createAnnouncementCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 14

    .line 411
    new-instance v0, Lcom/amazon/kindle/home/model/HomeAction;

    const-string/jumbo v1, "url"

    const-string v2, "https://blog.aboutamazon.com/company-news/amazons-actions-to-help-employees-communities-and-customers-affected-by-covid-19?token=GW&utm_source=gateway&utm_medium=card&utm_campaign=gw03162020&utm_content=COVID-19_roundup&pf_rd_r=MNKRC4RNYBJP5KS7H55V&pf_rd_p=23c4607b-9bdb-4c23-8956-dc67b9fa3fbb"

    .line 415
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "tap"

    const-string v3, "WEB"

    .line 411
    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 418
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    .line 419
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "See how Amazon is helping customers & communities affected by COVID-19."

    .line 418
    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/amazon/kindle/home/model/CardData;

    .line 424
    sget-object v2, Lcom/amazon/kcp/home/models/CardType;->ANNOUNCEMENT:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "TEXT_1"

    .line 425
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const-string v4, "announcement-card"

    const-string v7, "announcement-card"

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    const-string v11, "debug"

    const-string v12, ""

    const-string v13, ""

    move-object v3, v0

    .line 422
    invoke-direct/range {v3 .. v13}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createAuthorFollowCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 31

    .line 243
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "FOLLOW THE AUTHOR"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 244
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "Because I need to test"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 245
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    const/4 v3, 0x2

    new-array v4, v3, [Lkotlin/Pair;

    const-string v5, "/kindle-dbs/author/ref=sk-ios-fta?_encoding=UTF8&asin=B00SX7116Y"

    const-string/jumbo v6, "url"

    .line 249
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    const-string/jumbo v7, "sk-kfa-fta"

    const-string/jumbo v9, "reftag"

    .line 250
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v4, v11

    .line 248
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v10, "STORE"

    const-string/jumbo v12, "tap"

    .line 245
    invoke-direct {v2, v12, v10, v4}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    new-instance v4, Lcom/amazon/kindle/home/model/ImageZone;

    .line 254
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, ""

    const-string v16, "https://images-na.ssl-images-amazon.com/images/I/41fgUbUVFRL._UX600_CR0,0,600,600_RO300,1,255,255,255,255,255,255,15_._GR_.jpg"

    const-string v17, "B00SX7116Y"

    const-string v18, ""

    const-string v19, ""

    move-object v13, v4

    .line 253
    invoke-direct/range {v13 .. v19}, Lcom/amazon/kindle/home/model/ImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v13, Lcom/amazon/kindle/home/model/TextZone;

    .line 262
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v14, "Amy Boyles"

    .line 261
    invoke-direct {v13, v2, v14}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 265
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    new-array v14, v3, [Lkotlin/Pair;

    .line 269
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v14, v8

    .line 270
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v14, v11

    .line 268
    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 265
    invoke-direct {v2, v12, v10, v5}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    new-instance v5, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "Hey, I\'m Amy,<br/>I write books for folks who crave laugh-out-loud paranormal mysteries. I help bring humor into readers\' lives. I\'ve got a Pharm D in pharmacy, a BA in Creative Writing and a Masters in Screwing Up.<br/><br/> <br/>And when I\'m not writing or chasing around two small children (one of which is four going on thirteen), I can be found antique shopping for a great deal, getting my roots touched up (because that\'s an every four week job) and figuring out when I can get back to Disney World.<br/><br/> <br/>If you\'re dying to know more about my wacky life, here are three things you don\'t know about me.<br/><br/> <br/>In college I spent a semester at Marvel Comics working in the X-Men office.<br/><br/>I worked at Carnegie Hall.<br/><br/>I grew up in a barbecue restaurant--literally. My parents owned one.  <br/><br/> <br/>To keep track of what I\'m up to--follow me on Facebook here: facebook.com/amyboylesauthor or visit my website at: amyboyles.com.<br/> <br/>Happy reading!"

    invoke-direct {v5, v2, v6}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    .line 275
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    const-string v16, "SEE MORE"

    const-string v17, "SEE LESS"

    const-string v18, ""

    const-string v19, ""

    move-object v14, v2

    .line 274
    invoke-direct/range {v14 .. v19}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v6, Lcom/amazon/kindle/home/model/HomeAction;

    new-array v10, v3, [Lkotlin/Pair;

    const-string v14, "asin"

    const-string v15, "B00SX7116Y"

    .line 285
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    aput-object v14, v10, v8

    .line 286
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v10, v11

    .line 284
    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    const-string v9, "AUTHOR_FOLLOW"

    .line 281
    invoke-direct {v6, v12, v9, v7}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    new-instance v7, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    .line 290
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v16, "FOLLOW"

    const-string v17, "FOLLOWING"

    const-string v18, ""

    const-string v19, ""

    move-object v14, v7

    .line 289
    invoke-direct/range {v14 .. v19}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v6, Lcom/amazon/kindle/home/model/CardData;

    .line 298
    sget-object v9, Lcom/amazon/kcp/home/models/CardType;->AUTHOR_FOLLOW:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v9}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v22

    const/4 v9, 0x7

    new-array v9, v9, [Lkotlin/Pair;

    const-string v10, "TITLE"

    .line 300
    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v8

    const-string v0, "TEXT_1"

    .line 301
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v11

    const-string v0, "TEXT_2"

    .line 302
    invoke-static {v0, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v3

    const-string v0, "TEXT_3"

    .line 303
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v9, v1

    const-string v0, "IMAGE_1"

    .line 304
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v9, v1

    const-string v0, "TWO_STATE_BUTTON_1"

    .line 305
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v9, v1

    const-string v0, "TWO_STATE_BUTTON_2"

    .line 306
    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v9, v1

    .line 299
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v23

    const-string v21, "fta-card-mock"

    const-string/jumbo v24, "sk-kfa-fta-mock"

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    const-string/jumbo v28, "session-id-mock"

    const-string v29, "link-params-mock"

    const/16 v30, 0x0

    move-object/from16 v20, v6

    .line 296
    invoke-direct/range {v20 .. v30}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private final createBookEntityCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 19

    .line 187
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BOOK ENTITY SHOVELER MOCK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "Because they meet testing requirements"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    const/4 v3, 0x2

    new-array v4, v3, [Lkotlin/Pair;

    const-string/jumbo v5, "reftag"

    const-string v6, "dbs_h_def_kam_0000_sk-kfa-mlb3"

    .line 190
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "url"

    const-string v7, "/kindle-dbs/browse?metadata=deviceFormFactor%3Aunknown%24cardAppType%3AKFA%24deviceTypeID%3AA3VNNDO1I14V03%24clientRequestId%3ANTC7RN1C81S1B21XSPN6%24deviceAppType%3AKFA%24ipAddress%3A54.240.196.185%24userAgent%3ADalvik%2F2.1.0+%28Linux%3B+U%3B+Android+7.0%3B+SM-G950U+Build%2FNRD90M%29%2FKindle+8.18.0.4+AMZN%28SmartPhone%2FA3VNNDO1I14V03%2CAndroid%2F7.0%2CeBookHome%2FKindle+for+Android%2F8.18.0.4%29%24deviceFamily%3ARedding%24cardSurfaceType%3Amobile%24cardMobileOS%3AAndroid%24deviceSurfaceType%3Amobile$FirstReadsBenefitAvailable:false$isKU:false$isPrimeReadingEligible:false$sidekickLocale:en_US$KindleDeviceType:kfa&storeType=ebooks&widgetId=unified-ebooks-home-ruby_PurchaseSimsStrategy_3&callbackCache=%7B%22sourceGroups%22%3A%22B002VBV1R2%22%2C%22sourceGroupKey%22%3A%22B002VBV1R2%22%7D&refTagFromService=&pf_rd_p=21493a64-fdda-4c7e-94d5-3cb85864c9a0&sourceType=recs&pd_rd_wg=HkQUX&ref_=dbs_h_def_kam_0000_sk-kfa-mlb3&page=1&pd_rd_w=gqXSc&pd_rd_r=60e3c609-c37d-4d13-a41a-61b1c95baeb3&title=More+Like+Your+Recent+Books"

    .line 191
    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 189
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "tap"

    const-string v8, "STORE"

    invoke-direct {v2, v5, v8, v4}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    new-instance v4, Lcom/amazon/kindle/home/model/ButtonZone;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "SEE ALL"

    const-string v8, ""

    invoke-direct {v4, v2, v5, v8}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v2, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;->getBookEntityList()Ljava/util/List;

    move-result-object v2

    .line 196
    new-instance v5, Lcom/amazon/kindle/home/model/CardData;

    .line 198
    sget-object v8, Lcom/amazon/kcp/home/models/CardType;->BOOK_ENTITY_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v8}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x4

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "TITLE"

    .line 200
    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v6

    const-string v0, "TEXT_1"

    .line 201
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v7

    .line 202
    new-instance v0, Lcom/amazon/kindle/home/model/BookEntityListZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/BookEntityListZone;-><init>(Ljava/util/List;Ljava/util/List;)V

    const-string v1, "BOOK_ENTITY_LIST"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v0, "BUTTON_1"

    .line 203
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v8, v1

    .line 199
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    const-string v9, "books-entity-card-mock"

    const-string/jumbo v12, "sk-kfa-book-entity-mock"

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string/jumbo v16, "session-id-mock"

    const-string v17, "link-params-mock"

    const/16 v18, 0x0

    move-object v8, v5

    .line 196
    invoke-direct/range {v8 .. v18}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private final createBookEntityNoSubtitleCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 18

    .line 216
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BOOK ENTITY SHOVELER W/O SUBTITLE MOCK"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/amazon/kindle/home/model/HomeAction;

    const/4 v2, 0x2

    new-array v3, v2, [Lkotlin/Pair;

    const-string/jumbo v4, "reftag"

    const-string v5, "dbs_h_def_kam_0000_sk-kfa-mlb3"

    .line 218
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "url"

    const-string v6, "/kindle-dbs/browse?metadata=deviceFormFactor%3Aunknown%24cardAppType%3AKFA%24deviceTypeID%3AA3VNNDO1I14V03%24clientRequestId%3ANTC7RN1C81S1B21XSPN6%24deviceAppType%3AKFA%24ipAddress%3A54.240.196.185%24userAgent%3ADalvik%2F2.1.0+%28Linux%3B+U%3B+Android+7.0%3B+SM-G950U+Build%2FNRD90M%29%2FKindle+8.18.0.4+AMZN%28SmartPhone%2FA3VNNDO1I14V03%2CAndroid%2F7.0%2CeBookHome%2FKindle+for+Android%2F8.18.0.4%29%24deviceFamily%3ARedding%24cardSurfaceType%3Amobile%24cardMobileOS%3AAndroid%24deviceSurfaceType%3Amobile$FirstReadsBenefitAvailable:false$isKU:false$isPrimeReadingEligible:false$sidekickLocale:en_US$KindleDeviceType:kfa&storeType=ebooks&widgetId=unified-ebooks-home-ruby_PurchaseSimsStrategy_3&callbackCache=%7B%22sourceGroups%22%3A%22B002VBV1R2%22%2C%22sourceGroupKey%22%3A%22B002VBV1R2%22%7D&refTagFromService=&pf_rd_p=21493a64-fdda-4c7e-94d5-3cb85864c9a0&sourceType=recs&pd_rd_wg=HkQUX&ref_=dbs_h_def_kam_0000_sk-kfa-mlb3&page=1&pd_rd_w=gqXSc&pd_rd_r=60e3c609-c37d-4d13-a41a-61b1c95baeb3&title=More+Like+Your+Recent+Books"

    .line 219
    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 217
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "tap"

    const-string v7, "STORE"

    invoke-direct {v1, v4, v7, v3}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    new-instance v3, Lcom/amazon/kindle/home/model/ButtonZone;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "SEE ALL"

    const-string v7, ""

    invoke-direct {v3, v1, v4, v7}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;->getBookEntityList()Ljava/util/List;

    move-result-object v1

    .line 224
    new-instance v4, Lcom/amazon/kindle/home/model/CardData;

    .line 226
    sget-object v7, Lcom/amazon/kcp/home/models/CardType;->BOOK_ENTITY_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v7}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x3

    new-array v7, v7, [Lkotlin/Pair;

    const-string v8, "TITLE"

    .line 228
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v7, v5

    .line 229
    new-instance v0, Lcom/amazon/kindle/home/model/BookEntityListZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/amazon/kindle/home/model/BookEntityListZone;-><init>(Ljava/util/List;Ljava/util/List;)V

    const-string v1, "BOOK_ENTITY_LIST"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v7, v6

    const-string v0, "BUTTON_1"

    .line 230
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v7, v2

    .line 227
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    const-string v8, "books-entity-card-no-subtitle-mock"

    const-string/jumbo v11, "sk-kfa-book-entity-mock"

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string/jumbo v15, "session-id-mock"

    const-string v16, "link-params-mock"

    const/16 v17, 0x0

    move-object v7, v4

    .line 224
    invoke-direct/range {v7 .. v17}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private final createBooksBlurbCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 36

    .line 48
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "Amazon Book Review"

    .line 48
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "\"Because you read: Blacktop Wasteland: A Novel\""

    .line 51
    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/amazon/kindle/home/model/TextZone;

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const-string v4, "Mystery & thrillers: Our editors\' recent favorites"

    .line 54
    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 57
    new-instance v3, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    const-string v6, "https://d1ysvut1l4lkly.cloudfront.net/Mastheads/B08743F76Y/Bug_Light.png"

    const-string v7, "https://d1ysvut1l4lkly.cloudfront.net/Mastheads/B08743F76Y/Bug_Dark.png"

    .line 57
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v4, Lcom/amazon/kindle/home/model/HomeAction;

    const/4 v5, 0x2

    new-array v6, v5, [Lkotlin/Pair;

    const-string/jumbo v7, "reftag"

    const-string v8, "dbs_h_def_iom_0000_sk-ios-er-test-blurb_0"

    .line 66
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const-string/jumbo v8, "url"

    const-string v10, "/gp/aw/d/B06Y55Z36S?pf_rd_m=ATVPDKIKX0DER&storeType=ebooks&pageType=KINDLEREADERHOME&pf_rd_p=&pf_rd_r=BF88TC73VGDJ9C70QNW5&pf_rd_t=&ref_=dbs_h_def_iom_0000_sk-ios-er-test-blurb_0&pf_rd_i="

    .line 67
    invoke-static {v8, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v6, v11

    .line 65
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const-string v10, "STORE"

    const-string/jumbo v12, "tap"

    .line 62
    invoke-direct {v4, v12, v10, v6}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    new-instance v6, Lcom/amazon/kindle/home/model/HomeAction;

    new-array v13, v5, [Lkotlin/Pair;

    const-string v14, "dbs_h_def_iom_0000_sk-ios-er-test-blurb_1"

    .line 74
    invoke-static {v7, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    aput-object v14, v13, v9

    const-string v14, "/gp/aw/d/B078M5G7XH?pf_rd_m=ATVPDKIKX0DER&storeType=ebooks&pageType=KINDLEREADERHOME&pf_rd_p=&pf_rd_r=BF88TC73VGDJ9C70QNW5&pf_rd_t=&ref_=dbs_h_def_iom_0000_sk-ios-er-test-blurb_1&pf_rd_i="

    .line 75
    invoke-static {v8, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    aput-object v14, v13, v11

    .line 73
    invoke-static {v13}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    .line 70
    invoke-direct {v6, v12, v10, v13}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    new-instance v13, Lcom/amazon/kindle/home/model/HomeAction;

    new-array v14, v5, [Lkotlin/Pair;

    const-string v15, "dbs_h_def_iom_0000_sk-ios-er-test-blurb_2"

    .line 82
    invoke-static {v7, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v14, v9

    const-string v7, "/gp/aw/d/B07R3QYGHY?pf_rd_m=ATVPDKIKX0DER&storeType=ebooks&pageType=KINDLEREADERHOME&pf_rd_p=&pf_rd_r=BF88TC73VGDJ9C70QNW5&pf_rd_t=&ref_=dbs_h_def_iom_0000_sk-ios-er-test-blurb_2&pf_rd_i="

    .line 83
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v14, v11

    .line 81
    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 78
    invoke-direct {v13, v12, v10, v7}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    new-instance v7, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    .line 87
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v16, "The Woman in the Window: A Novel by A. J. Finn"

    const-string v17, "https://m.media-amazon.com/images/I/41ArKWcubgS._UX266_.jpg"

    const-string v18, "B06Y55Z36S"

    const-string v19, "The Woman in the Window: A Novel"

    const-string v20, "A. J. Finn"

    const-string v21, "\"Finn takes an old trope, the unreliable narrator, and lights a fire under it in this twisty thriller.\""

    const-string/jumbo v22, "\u2014 Elizabeth Vargas, Amazon Editor"

    const-string v23, "Book review for The Woman in the Window: A Novel: \"Finn takes an old trope, the unreliable narrator, and lights a fire under it in this twisty thriller.\""

    const-string/jumbo v24, "\u2014 Vannessa Cronin, Amazon Editor"

    move-object v14, v7

    .line 86
    invoke-direct/range {v14 .. v24}, Lcom/amazon/kindle/home/model/DescriptionImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v4, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    .line 99
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const-string v27, "The Outsider: A Novel by Stephen King"

    const-string v28, "https://m.media-amazon.com/images/I/51jv4ITqI6L._UX266_.jpg"

    const-string v29, "B078M5G7XH"

    const-string v30, "The Outsider: A Novel"

    const-string v31, "Stephen King"

    const-string v32, "\"A classic King story of mystery and the supernatural, with a twist that will leave you reeling.\""

    const-string/jumbo v33, "\u2014 Vannessa Cronin, Amazon Editor"

    const-string v34, "Book review for The Outsider: A Novel: \"A classic King story of mystery and the supernatural, with a twist that will leave you reeling.\""

    const-string/jumbo v35, "\u2014 Vannessa Cronin, Amazon Editor"

    move-object/from16 v25, v4

    .line 98
    invoke-direct/range {v25 .. v35}, Lcom/amazon/kindle/home/model/DescriptionImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v6, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    .line 111
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v16, "Last Day by Luanne Rice"

    const-string v17, "https://m.media-amazon.com/images/I/41AUKdIpuWL._UX266_.jpg"

    const-string v18, "B07R3QYGHY"

    const-string v19, "Last Day"

    const-string v20, "Luanne Rice"

    const-string v21, "\"Family secrets, broken marriage vows, and dubious motivations drive this twisty domestic thriller.\""

    const-string/jumbo v22, "\u2014 Vannessa Cronin, Amazon Editor"

    const-string v23, "Book review for Last Day: \"Family secrets, broken marriage vows, and dubious motivations drive this twisty domestic thriller.\""

    const-string/jumbo v24, "\u2014 Vannessa Cronin, Amazon Editor"

    move-object v14, v6

    .line 110
    invoke-direct/range {v14 .. v24}, Lcom/amazon/kindle/home/model/DescriptionImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v13, Lcom/amazon/kindle/home/model/HomeAction;

    const-string v14, "/kindle-dbs/abr/arp/B08KRP8WRM?theme=light&title=Discover+Your+Next+Read"

    .line 125
    invoke-static {v8, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 122
    invoke-direct {v13, v12, v10, v8}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    new-instance v8, Lcom/amazon/kindle/home/model/ButtonZone;

    .line 128
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "READ ARTICLE"

    const-string v13, "Read Article Mystery & thrillers: Our editors\' recent favorites"

    .line 127
    invoke-direct {v8, v10, v12, v13}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v10, Lcom/amazon/kindle/home/model/CardData;

    .line 134
    sget-object v12, Lcom/amazon/kcp/home/models/CardType;->BOOKS_BLURB_CARD:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v12}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v16

    const/16 v12, 0x8

    new-array v12, v12, [Lkotlin/Pair;

    const-string v13, "TITLE"

    .line 136
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v12, v9

    const-string v0, "TEXT_1"

    .line 137
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v12, v11

    const-string v0, "TEXT_2"

    .line 138
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v12, v5

    const-string v0, "THEMED_IMAGE_1"

    .line 139
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v12, v1

    const-string v0, "BLURB_IMAGE_1"

    .line 140
    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v12, v1

    const-string v0, "BLURB_IMAGE_2"

    .line 141
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v12, v1

    const-string v0, "BLURB_IMAGE_3"

    .line 142
    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v12, v1

    const-string v0, "BUTTON_1"

    .line 143
    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v12, v1

    .line 135
    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v17

    const-string v15, "BooksBlurbCard"

    const-string v18, "booksBlurbCardRef"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string/jumbo v22, "session-id-mock"

    const-string v23, "link-params-mock"

    const/16 v24, 0x0

    move-object v14, v10

    .line 132
    invoke-direct/range {v14 .. v24}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method private final createDonationCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 17

    .line 437
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    .line 438
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "Donate to the COVID-19 response"

    .line 437
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 441
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    .line 442
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "You can help support charities impacted by COVID-19 by donating to Feeding America, the American Red Cross, and Save the Children. Or just ask: \"Alexa, make a donation to Feeding America COVID-19 Response.\""

    .line 441
    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 445
    new-instance v2, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 446
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const-string v4, "https://m.media-amazon.com/images/G/01/Books/Reader/COVID/Donation_Icon_3x._CB1198675309_.png"

    const-string v5, "Books"

    .line 445
    invoke-direct {v2, v3, v5, v4, v4}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v3, Lcom/amazon/kindle/home/model/HomeAction;

    const-string/jumbo v4, "url"

    const-string v5, "https://www.amazon.com/l/17285237011?pf_rd_r=MNKRC4RNYBJP5KS7H55V&pf_rd_p=f86d42be-c4f0-4466-82c1-2ccee4cc7690"

    .line 455
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 454
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "tap"

    const-string v6, "STORE"

    .line 451
    invoke-direct {v3, v5, v6, v4}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    new-instance v4, Lcom/amazon/kindle/home/model/ButtonZone;

    .line 459
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "DONATE"

    .line 458
    invoke-direct {v4, v3, v5, v5}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v3, Lcom/amazon/kindle/home/model/CardData;

    .line 465
    sget-object v5, Lcom/amazon/kcp/home/models/CardType;->DONATION:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v5}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x4

    new-array v5, v5, [Lkotlin/Pair;

    const-string v6, "THEMED_IMAGE_1"

    .line 467
    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "TEXT_1"

    .line 468
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const-string v0, "TEXT_2"

    .line 469
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const-string v0, "BUTTON_1"

    .line 470
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v5, v1

    .line 466
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    const-string v7, "DonationsCard"

    const-string v10, "DonationsCard"

    const/16 v11, 0x12c

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-string v14, "debug"

    const-string v15, ""

    const-string v16, ""

    move-object v6, v3

    .line 463
    invoke-direct/range {v6 .. v16}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final createFreeBooksCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 17

    .line 376
    new-instance v0, Lcom/amazon/kindle/home/model/HomeAction;

    const-string/jumbo v1, "url"

    const-string v2, "https://www.amazon.com/gp/browse.html?node=20102661011"

    .line 379
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "tap"

    const-string v3, "STORE"

    .line 376
    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 381
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "FREE BOOKS NOW AVAILABLE"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 382
    new-instance v2, Lcom/amazon/kindle/home/model/TextZone;

    .line 383
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "A collection of Kindle books for the whole family. Free for all."

    .line 382
    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 386
    new-instance v3, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 387
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v4, "https://m.media-amazon.com/images/G/01/Books/Reader/COVID/image_Block_3x._CB1198675309_.png"

    const-string v5, "Free books"

    .line 386
    invoke-direct {v3, v0, v5, v4, v4}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/amazon/kindle/home/model/CardData;

    .line 394
    sget-object v4, Lcom/amazon/kcp/home/models/CardType;->FREE_BOOKS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlin/Pair;

    const-string v5, "THEMED_IMAGE_1"

    .line 396
    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "TITLE"

    .line 397
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const-string v1, "TEXT_1"

    .line 398
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 395
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    const-string v7, "free-books-card"

    const-string v10, "free-books-card"

    const/4 v11, 0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    const-string v14, "debug"

    const-string v15, ""

    const-string v16, ""

    move-object v6, v0

    .line 392
    invoke-direct/range {v6 .. v16}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createHeroCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 22

    .line 154
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "Hero Card Mock"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "Because you are interested in top books"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 156
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    const/4 v3, 0x2

    new-array v4, v3, [Lkotlin/Pair;

    const-string/jumbo v5, "reftag"

    const-string v6, "dbs_h_def_kam_0000_sk-kfa-mlb3"

    .line 157
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "url"

    const-string v7, "https://www.amazon.com/Charts"

    .line 158
    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 156
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "tap"

    const-string v8, "STORE"

    invoke-direct {v2, v5, v8, v4}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    new-instance v4, Lcom/amazon/kindle/home/model/ButtonZone;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "Browse Now"

    const-string v9, ""

    invoke-direct {v4, v5, v8, v9}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v5, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 162
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v8, "Amazon Charts"

    const-string v9, "https://m.media-amazon.com/images/G/01/books/SAILWayfinder/CBBE_Wayfinding_imgAsset_Charts_MostReadSold.png"

    const-string v10, "https://m.media-amazon.com/images/G/01/books/SAILWayfinder/CBBE_Wayfinding_imgAsset_Charts_MostReadSold_Dark.png"

    .line 161
    invoke-direct {v5, v2, v8, v9, v10}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v2, Lcom/amazon/kindle/home/model/CardData;

    .line 169
    sget-object v8, Lcom/amazon/kcp/home/models/CardType;->HERO_CARD:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v8}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x4

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "TITLE"

    .line 171
    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v6

    const-string v0, "TEXT_1"

    .line 172
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v7

    const-string v0, "THEMED_IMAGE_1"

    .line 173
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v0, "BUTTON_1"

    .line 174
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v8, v1

    .line 170
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v14

    const-string v12, "hero-card-mock"

    const-string/jumbo v15, "sk-kfa-hero-mock"

    const/16 v16, -0x3

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string/jumbo v19, "session-id-mock"

    const-string v20, "link-params-mock"

    const/16 v21, 0x0

    move-object v11, v2

    .line 167
    invoke-direct/range {v11 .. v21}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final createKindleUnlimitedUpsellCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 21

    .line 319
    new-instance v0, Lcom/amazon/kindle/home/model/ColorZone;

    .line 320
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "#FDA500"

    .line 319
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/ColorZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "Subscriptions purchased on Amazon are available here."

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 325
    new-instance v2, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 326
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const-string v4, "Kindle Unlimited"

    const-string v5, "https://m.media-amazon.com/images/G/01/hoa_kfa/ic_home_kulogo_light_xxxhdpi_updated._CB1554155667_.png"

    const-string v6, "https://m.media-amazon.com/images/G/01/hoa_kfa/ic_home_kulogo_dark_xxxhdpi_updated._CB1554155668_.png"

    .line 325
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v3, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string v6, "Try unlimited reading & listening"

    invoke-direct {v3, v5, v6}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 332
    new-instance v5, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    const-string v7, "Unlimited access to over 1 million books and thousands of audiobooks with Kindle Unlimited"

    invoke-direct {v5, v6, v7}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 334
    new-instance v6, Lcom/amazon/kindle/home/model/ThemedImageZone;

    .line 335
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    const-string v8, "https://m.media-amazon.com/images/G/01/kindle/ku/sidekick/ku_kfa_android_homecard.jpg"

    .line 334
    invoke-direct {v6, v7, v4, v8, v8}, Lcom/amazon/kindle/home/model/ThemedImageZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v4, Lcom/amazon/kindle/home/model/HomeAction;

    const-string/jumbo v7, "url"

    const-string v8, "https://www.amazon.com/gp/browse.html?node=20102661011"

    .line 344
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    const-string/jumbo v8, "tap"

    const-string v9, "STORE"

    .line 341
    invoke-direct {v4, v8, v9, v7}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 346
    new-instance v7, Lcom/amazon/kindle/home/model/ButtonZone;

    .line 347
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v8, "Start your free trial"

    const-string v9, ""

    .line 346
    invoke-direct {v7, v4, v8, v9}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v4, Lcom/amazon/kindle/home/model/CardData;

    .line 354
    sget-object v8, Lcom/amazon/kcp/home/models/CardType;->KU_UPSELL:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v8}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x7

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "COLOR_1"

    .line 356
    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const-string v0, "THEMED_IMAGE_1"

    .line 357
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v8, v2

    const-string v0, "TEXT_1"

    .line 358
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v8, v1

    const-string v0, "THEMED_IMAGE_2"

    .line 359
    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v8, v1

    const-string v0, "TEXT_2"

    .line 360
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v8, v1

    const-string v0, "TEXT_3"

    .line 361
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v8, v1

    const-string v0, "BUTTON_1"

    .line 362
    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v8, v1

    .line 355
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const-string v11, "ku-upsell-card"

    const-string v14, "ku-card"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "NA"

    const-string v19, "NA"

    const/16 v20, 0x0

    move-object v10, v4

    .line 352
    invoke-direct/range {v10 .. v20}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private final createTipsAndTricksCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 27

    .line 486
    new-instance v0, Lcom/amazon/kindle/home/model/TextZone;

    .line 487
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "Tips & Tricks"

    .line 486
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 490
    new-instance v1, Lcom/amazon/kindle/home/model/TextZone;

    .line 491
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "Get more out of reading with these Kindle app features"

    .line 490
    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/home/model/TextZone;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 494
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    const-string v3, "/b/ref=s9_acss_bw_cg_3PLP717_4a1_w?node=11516960011&pf_rd_m=ATVPDKIKX0DER"

    const-string/jumbo v4, "url"

    .line 498
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 497
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "STORE"

    const-string/jumbo v7, "tap"

    .line 494
    invoke-direct {v2, v7, v6, v5}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 502
    new-instance v5, Lcom/amazon/kindle/home/model/HomeAction;

    .line 506
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 505
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 502
    invoke-direct {v5, v7, v6, v3}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 510
    new-instance v3, Lcom/amazon/kindle/home/model/HomeAction;

    const-string v8, "/b/ref=s9_acss_bw_cg_3PLP717_3a1_w?node=17717476011"

    .line 514
    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 513
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    .line 510
    invoke-direct {v3, v7, v6, v9}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 518
    new-instance v9, Lcom/amazon/kindle/home/model/HomeAction;

    .line 522
    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 521
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 518
    invoke-direct {v9, v7, v6, v8}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    new-instance v8, Lcom/amazon/kindle/home/model/HomeAction;

    const-string v10, "/s/ref=s9_acss_bw_cg_3PLP717_6a1_w?node=11627044011"

    .line 530
    invoke-static {v4, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 529
    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    .line 526
    invoke-direct {v8, v7, v6, v10}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 534
    new-instance v10, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    .line 535
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "Customize your reading"

    const-string v14, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/01_Adj-Font_iOS_Light.png"

    const-string v15, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/01_Adj-Font_Dark_Android.png"

    const-string v16, "View options feature (note: Aa menu is called view options in book, so we want to align to that text for consistency)"

    const-string v17, "Adjust your text size, font type, background color and more."

    const-string v18, "Browse the Kindle store"

    move-object v11, v10

    .line 534
    invoke-direct/range {v11 .. v18}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v2, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    .line 544
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const-string v21, "Flip pages or scroll vertically"

    const-string v22, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/02_Cont-Scroll_Light.png"

    const-string v23, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/02_Cont-Scroll_Dark_Android.png"

    const-string v24, "Continuous scroll feature"

    const-string v25, "Read your book by flipping pages or scroll vertically with continuous scroll."

    const-string v26, "Learn more"

    move-object/from16 v19, v2

    .line 543
    invoke-direct/range {v19 .. v26}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v5, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    .line 553
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "Look up words as you read"

    const-string v14, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/03_Lookup_Light.png"

    const-string v15, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/03_Lookup_Dark_Android.png"

    const-string v16, "Dictionary feature"

    const-string v17, "Get dictionary definitions and Wikipedia references\u2014right from your book."

    const-string v18, "Learn more"

    move-object v11, v5

    .line 552
    invoke-direct/range {v11 .. v18}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v3, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    .line 562
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const-string v21, "Keep track of characters and places"

    const-string v22, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/04_X-Ray_Light.png"

    const-string v23, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/04_X-Ray_Dark_Android.png"

    const-string v24, "X-Ray feature"

    const-string v25, "Explore your book by character, place, topic or idea with the X-ray feature."

    const-string v26, ""

    move-object/from16 v19, v3

    .line 561
    invoke-direct/range {v19 .. v26}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v9, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    .line 571
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "Capture, share and save"

    const-string v14, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/05_Notes-Highlights_Android_Light.png"

    const-string v15, "https://m.media-amazon.com/images/G/01/sidekick/tipsTricks/05_Notes-Highlights_Android_Dark.png"

    const-string v16, "Notes and highlights feature"

    const-string v17, "Make notes and highlights in your book, search and see them in one place."

    const-string v18, ""

    move-object v11, v9

    .line 570
    invoke-direct/range {v11 .. v18}, Lcom/amazon/kindle/home/model/WaysToReadBlock;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v8, Lcom/amazon/kindle/home/model/HomeAction;

    const-string v11, "/b?ie=UTF8&node=16571048011"

    .line 582
    invoke-static {v4, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 579
    invoke-direct {v8, v7, v6, v4}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 584
    new-instance v4, Lcom/amazon/kindle/home/model/ButtonZone;

    .line 585
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "See more reading features"

    const-string/jumbo v8, "see more reading features"

    .line 584
    invoke-direct {v4, v6, v7, v8}, Lcom/amazon/kindle/home/model/ButtonZone;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v6, Lcom/amazon/kindle/home/model/CardData;

    .line 591
    sget-object v7, Lcom/amazon/kcp/home/models/CardType;->TIPS_AND_TRICKS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v7}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v13

    const/16 v7, 0x8

    new-array v7, v7, [Lkotlin/Pair;

    const-string v8, "TITLE"

    .line 593
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const-string v0, "TEXT_1"

    .line 594
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const-string v0, "WAYS_TO_READ_BLOCK_1"

    .line 595
    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v7, v1

    const-string v0, "WAYS_TO_READ_BLOCK_2"

    .line 596
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v7, v1

    const-string v0, "WAYS_TO_READ_BLOCK_3"

    .line 597
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v7, v1

    const-string v0, "WAYS_TO_READ_BLOCK_4"

    .line 598
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v7, v1

    const-string v0, "WAYS_TO_READ_BLOCK_5"

    .line 599
    invoke-static {v0, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v7, v1

    const-string v0, "BUTTON_1"

    .line 600
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v7, v1

    .line 592
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v14

    const-string v12, "TipsAndTricksCard"

    const-string v15, "TipsAndTricksCardRef"

    const/16 v16, 0x163

    const/16 v17, 0x5

    const/16 v18, 0x1

    const-string v19, "debug"

    const-string v20, ""

    const-string v21, ""

    move-object v11, v6

    .line 589
    invoke-direct/range {v11 .. v21}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final addToList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isDebugCardsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 33
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createAuthorFollowCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createKindleUnlimitedUpsellCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createFreeBooksCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createAnnouncementCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createDonationCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createTipsAndTricksCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createBookEntityCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createBookEntityNoSubtitleCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_8
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createHeroCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_9
    invoke-direct {p0}, Lcom/amazon/kcp/home/debug/SidekickDebugCards;->createBooksBlurbCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object p1
.end method
