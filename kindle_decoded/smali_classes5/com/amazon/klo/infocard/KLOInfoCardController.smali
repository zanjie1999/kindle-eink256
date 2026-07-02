.class public Lcom/amazon/klo/infocard/KLOInfoCardController;
.super Ljava/lang/Object;
.source "KLOInfoCardController.java"


# static fields
.field private static final CREATIVE_COMMONS:I

.field private static final CREATIVE_COMMONS_URL:Ljava/lang/String; = "http://creativecommons.org/licenses/by-sa/3.0/legalcode"

.field private static final DEFAULT_SOURCE:I

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.infocard.KLOInfoCardController"

.field private static final WIKI_SOURCE:I


# instance fields
.field private licenseHtml:Ljava/lang/String;

.field private termMatcher:Lcom/amazon/klo/search/TermMatcher;

.field private view:Lcom/amazon/klo/infocard/KLOInfoCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget v0, Lcom/amazon/klo/R$string;->klo_glossary_definition:I

    sput v0, Lcom/amazon/klo/infocard/KLOInfoCardController;->DEFAULT_SOURCE:I

    .line 22
    sget v0, Lcom/amazon/klo/R$string;->klo_wiki_from:I

    sput v0, Lcom/amazon/klo/infocard/KLOInfoCardController;->WIKI_SOURCE:I

    .line 24
    sget v0, Lcom/amazon/klo/R$string;->klo_wiki_license:I

    sput v0, Lcom/amazon/klo/infocard/KLOInfoCardController;->CREATIVE_COMMONS:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/klo/search/TermMatcher;

    invoke-direct {v0}, Lcom/amazon/klo/search/TermMatcher;-><init>()V

    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->termMatcher:Lcom/amazon/klo/search/TermMatcher;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->licenseHtml:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    return-void
.end method

.method private buildCard(Lcom/amazon/klo/sidecar/SidecarHandler;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 123
    invoke-virtual {p1, p2, p3}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 124
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 126
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 127
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p5, :cond_0

    .line 131
    iget-object p5, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-direct {p0, p3, p5}, Lcom/amazon/klo/infocard/KLOInfoCardController;->setSourceAndLicense(Lorg/json/JSONArray;Lcom/amazon/klo/infocard/KLOInfoCardView;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p3, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    sget p5, Lcom/amazon/klo/infocard/KLOInfoCardController;->DEFAULT_SOURCE:I

    const/4 v0, 0x0

    invoke-virtual {p3, p5, v0}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setSource(ILjava/lang/String;)V

    .line 137
    :goto_0
    iget-object p3, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    iget-object p5, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->licenseHtml:Ljava/lang/String;

    invoke-virtual {p3, p4, p5}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setContentFromHTML(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p3, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-virtual {p1, p2}, Lcom/amazon/klo/sidecar/SidecarHandler;->generateTermListItem(Lorg/json/JSONObject;)Lcom/amazon/klo/list/TermListItem;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setTermListItemForXrayButton(Lcom/amazon/klo/list/TermListItem;Lcom/amazon/klo/sidecar/SidecarHandler;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private closeEnoughMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, " "

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->termMatcher:Lcom/amazon/klo/search/TermMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/klo/search/TermMatcher;->termFoundInText([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private setSourceAndLicense(Lorg/json/JSONArray;Lcom/amazon/klo/infocard/KLOInfoCardView;)V
    .locals 3

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "source"

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wiki"

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget p1, Lcom/amazon/klo/infocard/KLOInfoCardController;->WIKI_SOURCE:I

    invoke-virtual {p2, p1, v1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setSource(ILjava/lang/String;)V

    .line 154
    sget p1, Lcom/amazon/klo/infocard/KLOInfoCardController;->CREATIVE_COMMONS:I

    const-string p2, "http://creativecommons.org/licenses/by-sa/3.0/legalcode"

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/amazon/klo/infocard/KLOInfoCardController;->setLicense(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sourceDescription"

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p2, v0, v1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setSource(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "licenseDescription"

    .line 162
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "licenseUrl"

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p2, p1}, Lcom/amazon/klo/infocard/KLOInfoCardController;->setLicense(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public loadQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/amazon/klo/sidecar/SidecarHandler;)Z
    .locals 7

    .line 38
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string v2, "Start building KLO info card"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[\\p{Punct}&&[^-\'~&]]"

    const-string p3, ""

    .line 53
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 57
    :goto_0
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string/jumbo v2, "term"

    if-ge p3, v1, :cond_4

    .line 61
    :try_start_1
    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/amazon/klo/infocard/KLOInfoCardController;->closeEnoughMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v1

    goto :goto_2

    .line 75
    :cond_1
    invoke-static {v3}, Lcom/amazon/klo/search/TermMatcher;->getTermsForSearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1, v3}, Lcom/amazon/klo/infocard/KLOInfoCardController;->closeEnoughMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object p3, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "JSON parsing exception, not displaying KLO info card. Exception:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string p3, "Returning no KLO info card: JSON parsing exception"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    if-eqz p2, :cond_7

    .line 94
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/klo/infocard/KLOInfoCardView;->setQuery(Ljava/lang/String;)V

    const/4 v6, 0x1

    const-string v4, ".XrayDetailedDefinitionAsset"

    const-string v5, "definition"

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    .line 95
    invoke-direct/range {v1 .. v6}, Lcom/amazon/klo/infocard/KLOInfoCardController;->buildCard(Lcom/amazon/klo/sidecar/SidecarHandler;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    .line 97
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string p4, "Returning KLO info card: from DetailedDefinitionAsset"

    invoke-interface {p1, p2, p4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_5
    const/4 v6, 0x0

    const-string v4, ".XrayDefinitionAsset"

    const-string v5, "definition"

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    .line 100
    invoke-direct/range {v1 .. v6}, Lcom/amazon/klo/infocard/KLOInfoCardController;->buildCard(Lcom/amazon/klo/sidecar/SidecarHandler;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string p4, "Returning KLO info card: from DefinitionAsset"

    invoke-interface {p1, p2, p4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_6
    const/4 v6, 0x1

    const-string v4, ".XrayDescriptionAsset"

    const-string v5, "description"

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    .line 105
    invoke-direct/range {v1 .. v6}, Lcom/amazon/klo/infocard/KLOInfoCardController;->buildCard(Lcom/amazon/klo/sidecar/SidecarHandler;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 107
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string p4, "Returning KLO info card: from DescriptionAsset"

    invoke-interface {p1, p2, p4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    .line 111
    :cond_7
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string p3, "Returning no KLO info card: selection did not match an Xray term"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 46
    :catch_1
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/klo/infocard/KLOInfoCardController;->TAG:Ljava/lang/String;

    const-string p3, "Returning no KLO info card: something wrong with the selection"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setLicense(ILjava/lang/String;)V
    .locals 3

    .line 171
    sget v0, Lcom/amazon/klo/R$string;->klo_wiki_license:I

    if-ne p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/klo/R$dimen;->klo_infocard_license_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    .line 174
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"+>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</a>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<span style=\"font-size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "px\">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    .line 177
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/klo/R$string;->klo_infocard_wiki_license_with_url:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</span>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->licenseHtml:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->view:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/klo/infocard/KLOInfoCardController;->setLicense(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"+>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</a>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardController;->licenseHtml:Ljava/lang/String;

    return-void
.end method
