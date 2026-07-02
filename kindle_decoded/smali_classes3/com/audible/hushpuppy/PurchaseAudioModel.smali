.class public final Lcom/audible/hushpuppy/PurchaseAudioModel;
.super Ljava/lang/Object;
.source "PurchaseAudioModel.java"


# instance fields
.field private final audiobookAsin:Lcom/audible/mobile/domain/Asin;

.field private final ebookAsin:Lcom/audible/mobile/domain/Asin;

.field private final expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

.field private final inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

.field private final isToaOffer:Z

.field private final upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    .line 37
    iput-object p2, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    .line 38
    iput-object p3, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 39
    iput-object p4, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    .line 40
    iput-object p5, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    .line 41
    iput-boolean p6, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->isToaOffer:Z

    return-void
.end method


# virtual methods
.method public getAudiobookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getEbookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    return-object v0
.end method

.method public getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->inputPerformed:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    return-object v0
.end method

.method public getUpsellSource()Lcom/audible/hushpuppy/service/upsell/UpsellSource;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    return-object v0
.end method

.method public isToaOffer()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/audible/hushpuppy/PurchaseAudioModel;->isToaOffer:Z

    return v0
.end method
