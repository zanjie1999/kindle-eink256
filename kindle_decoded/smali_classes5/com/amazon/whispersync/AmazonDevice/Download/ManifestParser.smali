.class public Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;
.super Ljava/lang/Object;
.source "ManifestParser.java"


# static fields
.field private static final DOWNLOADITEM_NAME:Ljava/lang/String; = "name"

.field private static final DOWNLOADITEM_TYPE:Ljava/lang/String; = "type"

.field private static final DOWNLOADITEM_URL:Ljava/lang/String; = "url"

.field private static final DOWNLOADMANIFEST_CONTENTS:Ljava/lang/String; = "contents"

.field private static final DOWNLOADMANIFEST_ID:Ljava/lang/String; = "id"

.field private static final DOWNLOADMANIFEST_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

.field private mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorNotInitialized:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    return-void
.end method

.method private isFormatValid(Lcom/amazon/whispersync/org/json/simple/JSONObject;)Z
    .locals 8

    .line 78
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "contents"

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "id"

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string/jumbo v5, "type"

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 85
    const-class v6, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    invoke-static {p1, v4, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    const/4 v4, 0x0

    .line 86
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 88
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-static {v6, v7}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    if-nez v6, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_5

    const-string/jumbo v1, "url"

    .line 94
    invoke-static {v6, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_6

    .line 95
    invoke-static {v6, v5, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_7

    const-string v1, "name"

    .line 96
    invoke-static {v6, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    return v1
.end method

.method private parseDownloadManifest(Lcom/amazon/whispersync/org/json/simple/JSONObject;)V
    .locals 6

    .line 105
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->isFormatValid(Lcom/amazon/whispersync/org/json/simple/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorInvalidFormat:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    return-void

    .line 116
    :cond_1
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    invoke-direct {v1}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;-><init>()V

    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    const-string v2, "id"

    .line 117
    invoke-static {p1, v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->setDownloadId(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    const-string/jumbo v2, "type"

    invoke-static {p1, v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->setDownloadType(Ljava/lang/String;)V

    .line 120
    const-class v1, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    const-string v3, "contents"

    invoke-static {p1, v3, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-static {v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    if-nez v3, :cond_2

    goto :goto_1

    .line 129
    :cond_2
    new-instance v4, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;

    invoke-direct {v4}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;-><init>()V

    const-string/jumbo v5, "url"

    .line 130
    invoke-static {v3, v5, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->setUrl(Ljava/lang/String;)V

    .line 131
    invoke-static {v3, v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->setType(Ljava/lang/String;)V

    const-string v5, "name"

    .line 132
    invoke-static {v3, v5, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;->setName(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;->addDownloadItem(Lcom/amazon/whispersync/AmazonDevice/Download/DownloadItem;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getDownloadManifest()Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mDownloadManifest:Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    return-object v0
.end method

.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    return-object v0
.end method

.method public getParseErrorFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    if-ne v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "JSON Parse Error"

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->getDownloadManifest()Lcom/amazon/whispersync/AmazonDevice/Download/DownloadManifest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ManifestParser: Trying to parse multiple manifests using the same parser."

    .line 34
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->parse(Ljava/lang/String;)Lcom/amazon/whispersync/org/json/simple/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 42
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->MainfestParserErrorInvalidJson:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;->ManifestParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParserError;

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Download/ManifestParser;->parseDownloadManifest(Lcom/amazon/whispersync/org/json/simple/JSONObject;)V

    return-void
.end method
