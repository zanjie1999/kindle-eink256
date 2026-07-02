.class Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;
.super Ljava/lang/Object;
.source "SearchNodeJSONHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchResponseData"
.end annotation


# instance fields
.field httpResponseCode:I

.field legalEntityId:I

.field queryId:Ljava/lang/String;

.field rank:Ljava/lang/String;

.field remoteAddress:Ljava/lang/String;

.field results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field searchAlias:Ljava/lang/String;

.field searchPageTypeId:Ljava/lang/String;

.field sessionId:Ljava/lang/String;

.field spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

.field total:I

.field userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/store/SearchNodeJSONHandler;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->results:Ljava/util/List;

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->total:I

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    .line 130
    iput p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->httpResponseCode:I

    const-string v0, ""

    .line 133
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->sessionId:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->remoteAddress:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->userAgent:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->searchAlias:Ljava/lang/String;

    .line 145
    iput p1, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->legalEntityId:I

    .line 148
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->queryId:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->searchPageTypeId:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeJSONHandler$SearchResponseData;->rank:Ljava/lang/String;

    return-void
.end method
