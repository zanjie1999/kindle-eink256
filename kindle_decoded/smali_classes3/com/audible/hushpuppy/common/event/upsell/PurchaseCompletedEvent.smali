.class public final Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;
.super Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;
.source "PurchaseCompletedEvent.java"


# instance fields
.field private final autodownload:Z

.field private final isToaRedeem:Z


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;-><init>(Lcom/audible/mobile/domain/Identifier;)V

    .line 31
    iput-boolean p2, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->autodownload:Z

    .line 32
    iput-boolean p3, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->isToaRedeem:Z

    return-void
.end method


# virtual methods
.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->identifier:Lcom/audible/mobile/domain/Identifier;

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public isAutodownload()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->autodownload:Z

    return v0
.end method

.method public isToaRedeem()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->isToaRedeem:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseCompletedEvent{asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/common/AudiobookEvent;->identifier:Lcom/audible/mobile/domain/Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autodownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->autodownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isToaOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;->isToaRedeem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
