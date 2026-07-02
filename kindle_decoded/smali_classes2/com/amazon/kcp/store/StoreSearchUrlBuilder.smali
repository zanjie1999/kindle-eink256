.class public Lcom/amazon/kcp/store/StoreSearchUrlBuilder;
.super Ljava/lang/Object;
.source "StoreSearchUrlBuilder.java"


# static fields
.field private static final ANYWHERE_ARGUMENTS:Ljava/lang/String; = "/gp/aw/s/ref=kina_tsw_{SUFFIX}?i=digital-text&k={QUERY}&x=-320&y=-7&ie=UTF8"

.field private static final ENCODING_PARAM:Ljava/lang/String; = "ie=UTF8"

.field private static final QUERY_PARAM:Ljava/lang/String; = "{QUERY}"

.field private static final REF_SUFFIX:Ljava/lang/String; = "{SUFFIX}"

.field private static final RETAIL_WEB_ARGUMENTS:Ljava/lang/String; = "/s/ref=nb_sb_noss_1{SUFFIX}?url=search-alias%3Ddigital-text&field-keywords={QUERY}&ie=UTF8"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destination:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->getSearchUrl(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->url:Ljava/lang/String;

    return-void
.end method

.method private static formatKeywords(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\s+"

    const-string v1, "+"

    .line 93
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateStoreUrl(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateStoreUrl arguments after add refMarker suffix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    invoke-interface {p2}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultPath()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->store_url_additional_parameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 88
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->formatKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&tag="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{QUERY}"

    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSearchUrl(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 48
    invoke-static {p1}, Lcom/amazon/kcp/store/StoreDestinationFinder;->getStoreDestination(Landroid/content/Context;)Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->destination:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    .line 49
    sget-object v1, Lcom/amazon/kcp/store/StoreSearchUrlBuilder$1;->$SwitchMap$com$amazon$kcp$store$StoreDestinationFinder$StoreDestination:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string/jumbo v3, "{SUFFIX}"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 62
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string p4, "/s/ref=nb_sb_noss_1{SUFFIX}?url=search-alias%3Ddigital-text&field-keywords={QUERY}&ie=UTF8"

    invoke-virtual {p4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->generateStoreUrl(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string p1, "storeType"

    const-string v0, "all"

    .line 56
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "keywords"

    .line 57
    invoke-interface {v3, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p1, Lcom/amazon/kcp/store/StoreUrlBuilder;

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p4, v2

    :cond_3
    const-string v0, "/gp/aw/s/ref=kina_tsw_{SUFFIX}?i=digital-text&k={QUERY}&x=-320&y=-7&ie=UTF8"

    invoke-virtual {v0, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->generateStoreUrl(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public getStoreDestination()Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->destination:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->url:Ljava/lang/String;

    return-object v0
.end method
