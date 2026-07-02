.class public Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;
.super Ljava/lang/Object;
.source "WikipediaInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;,
        Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaResponseHandler;,
        Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;
    }
.end annotation


# static fields
.field private static final EURO_PFMS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RETRIES:I = 0x1

.field private static final METRICS_NAME:Ljava/lang/String; = "INFO_CARD_WIKIPEDIA"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_DELAY:I = 0x1b58


# instance fields
.field private final CUSTOM_SCHEME:Ljava/lang/String;

.field private view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

.field private final wikipediaAcxId:Ljava/lang/String;

.field private final wikipediaVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 51
    const-class v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->TAG:Ljava/lang/String;

    const-string v1, "A1F83G8C2ARO7P"

    const-string v2, "A1PA6795UKMFR9"

    const-string v3, "A13V1IB3VIYZZH"

    const-string v4, "A1RKKUPIHCS9HS"

    const-string v5, "AJZF8LZ1EJVJN"

    const-string v6, "APJ6JRA9NG5V4"

    const-string v7, "A3HOBANJMCMD83"

    const-string v8, "AD2EMQ3L3PG8S"

    const-string v9, "A38NPJYVS5YHNH"

    .line 52
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->EURO_PFMS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "wiki"

    .line 65
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->CUSTOM_SCHEME:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->getContentView()Lcom/amazon/kcp/reader/ui/ObservableWebView;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebViewClient;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->info_card_wikipedia_version:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->wikipediaVersion:I

    .line 76
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_id:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->wikipediaAcxId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Collection;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->EURO_PFMS:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->wikipediaAcxId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->getPostFormData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->getHtmlFromResult(Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 278
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 281
    :cond_0
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHtmlFromResult(Lorg/json/JSONObject;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 9

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    sget v1, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_html:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    sget v2, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_v2_html_content_font_family_fos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 292
    :cond_0
    sget v2, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_v2_html_content_font_family:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    iget-object v3, v3, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    sget-object v4, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v3, v4, :cond_1

    .line 297
    sget v3, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_v2_html_body_color_dark:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 299
    :cond_1
    sget v3, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_v2_html_body_color_white:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_content_secondary_text_font_size:I

    .line 303
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "px"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_content_horizontal_padding:I

    .line 304
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 305
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "articleHtml"

    goto :goto_2

    :cond_2
    const-string p2, "errorMessage"

    :goto_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    const/4 p2, 0x3

    const-string v5, "licenseMessage"

    .line 307
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, p2

    const/4 p1, 0x4

    const-string/jumbo p2, "wiki"

    aput-object p2, v4, p1

    const/4 p1, 0x5

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->view:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    .line 309
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->getBodyClassName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_wikipedia_content_font_size:I

    .line 310
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x7

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_container_width:I

    .line 311
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/16 p1, 0x8

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_content_vertical_padding:I

    .line 312
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/16 p1, 0x9

    aput-object v3, v4, p1

    const/16 p1, 0xa

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_content_horizontal_padding:I

    .line 314
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/16 p1, 0xb

    aput-object v2, v4, p1

    const/16 p1, 0xc

    sget p2, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_v2_html_hyperlink_color_new:I

    .line 316
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    .line 302
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPostFormData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 126
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 129
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acxId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->wikipediaAcxId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&version="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->wikipediaVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v3, "&aisn="

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&contentGuid="

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "&article="

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "&languageCode="

    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "&deviceLanguageCode="

    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public loadQuery(Ljava/lang/String;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 116
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
