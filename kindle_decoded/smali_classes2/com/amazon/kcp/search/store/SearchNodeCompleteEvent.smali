.class public Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;
.super Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;
.source "SearchNodeCompleteEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

.field private storeSearchResponseMetadata:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

.field private total:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;",
            "Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;",
            "Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput p3, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->total:I

    .line 22
    iput-object p4, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->results:Ljava/util/List;

    .line 23
    iput-object p5, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    .line 24
    iput-object p6, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->storeSearchResponseMetadata:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->results:Ljava/util/List;

    return-object v0
.end method

.method public getSpellerMetadata()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    return-object v0
.end method

.method public getStoreSearchResponseMetadata()Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->storeSearchResponseMetadata:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->total:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
