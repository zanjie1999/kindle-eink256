.class public final Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;
.super Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;
.source "PriceUpdateEvent.java"


# instance fields
.field private priceData:Lcom/audible/hushpuppy/common/upsell/PriceData;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;-><init>(Lcom/audible/mobile/domain/Identifier;)V

    .line 35
    iput-object p2, p0, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;->priceData:Lcom/audible/hushpuppy/common/upsell/PriceData;

    return-void
.end method


# virtual methods
.method public getPriceData()Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/upsell/PriceUpdateEvent;->priceData:Lcom/audible/hushpuppy/common/upsell/PriceData;

    return-object v0
.end method
