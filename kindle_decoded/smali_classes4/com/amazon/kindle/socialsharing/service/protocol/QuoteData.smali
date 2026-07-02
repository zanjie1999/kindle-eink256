.class public Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;
.super Ljava/lang/Object;
.source "QuoteData.java"


# instance fields
.field private endLocation:I

.field private quote:Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

.field private startLocation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndLocation()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->endLocation:I

    return v0
.end method

.method public getQuote()Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->quote:Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

    return-object v0
.end method

.method public getStartLocation()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->startLocation:I

    return v0
.end method

.method public setEndLocation(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->endLocation:I

    return-void
.end method

.method public setQuote(Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->quote:Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

    return-void
.end method

.method public setStartLocation(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->startLocation:I

    return-void
.end method
