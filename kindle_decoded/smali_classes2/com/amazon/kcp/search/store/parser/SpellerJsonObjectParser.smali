.class public Lcom/amazon/kcp/search/store/parser/SpellerJsonObjectParser;
.super Ljava/lang/Object;
.source "SpellerJsonObjectParser.java"

# interfaces
.implements Lcom/amazon/kcp/search/store/parser/IJsonObjectParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/search/store/parser/IJsonObjectParser<",
        "Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALTERNATE_QUERY:Ljava/lang/String; = "alternateQuery"

.field private static final ALTERNATE_QUERY_LINK_TYPE:Ljava/lang/String; = "alternateQueryLinkType"

.field private static final DISPLAY_QUERY:Ljava/lang/String; = "displayQuery"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.search.store.parser.SpellerJsonObjectParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/json/JSONObject;)Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;
    .locals 3

    const-string v0, "alternateQueryLinkType"

    const-string v1, "alternateQuery"

    .line 25
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v2, Lcom/amazon/kcp/search/store/model/Confidence;->OPT_OUT:Lcom/amazon/kcp/search/store/model/Confidence;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/store/model/Confidence;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    sget-object v0, Lcom/amazon/kcp/search/store/model/Confidence;->OPT_OUT:Lcom/amazon/kcp/search/store/model/Confidence;

    goto :goto_0

    .line 34
    :cond_0
    sget-object v2, Lcom/amazon/kcp/search/store/model/Confidence;->DID_YOU_MEAN:Lcom/amazon/kcp/search/store/model/Confidence;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/store/model/Confidence;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/amazon/kcp/search/store/model/Confidence;->DID_YOU_MEAN:Lcom/amazon/kcp/search/store/model/Confidence;

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/store/model/Confidence;->NONE:Lcom/amazon/kcp/search/store/model/Confidence;

    :goto_0
    const-string v2, "displayQuery"

    .line 40
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance v2, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    invoke-direct {v2, v1, v0, p1}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;-><init>(Ljava/lang/String;Lcom/amazon/kcp/search/store/model/Confidence;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/amazon/kcp/search/store/parser/SpellerJsonObjectParser;->TAG:Ljava/lang/String;

    const-string v0, "Found spell correction information"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 48
    sget-object v0, Lcom/amazon/kcp/search/store/parser/SpellerJsonObjectParser;->TAG:Ljava/lang/String;

    const-string v1, "Error in parsing JSON context"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/store/parser/SpellerJsonObjectParser;->get(Lorg/json/JSONObject;)Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-result-object p1

    return-object p1
.end method
