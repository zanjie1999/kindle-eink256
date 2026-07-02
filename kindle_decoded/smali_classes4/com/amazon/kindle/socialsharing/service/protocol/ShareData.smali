.class public Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;
.super Ljava/lang/Object;
.source "ShareData.java"


# instance fields
.field private note:Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

.field private progress:I

.field private quoteData:Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;

.field private shareType:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->progress:I

    return v0
.end method

.method public getQuoteData()Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->quoteData:Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;

    return-object v0
.end method

.method public getShareType()Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->shareType:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    return-object v0
.end method

.method public setProgress(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->progress:I

    return-void
.end method

.method public setQuoteData(Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->quoteData:Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;

    return-void
.end method

.method public setShareType(Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->shareType:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    return-void
.end method
