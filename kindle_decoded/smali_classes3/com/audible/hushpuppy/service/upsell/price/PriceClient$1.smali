.class Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;
.super Ljava/lang/Object;
.source "PriceClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->fetchPriceAsynchronously(Lcom/audible/mobile/domain/Asin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/common/upsell/PriceData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

.field final synthetic val$audiobookAsin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/service/upsell/price/PriceClient;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;->this$0:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;->val$audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/common/upsell/PriceData;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;->this$0:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    invoke-static {v0}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;->access$000(Lcom/audible/hushpuppy/service/upsell/price/PriceClient;)Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;->val$audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1, p1}, Lcom/audible/hushpuppy/service/upsell/price/CachedPrices;->updatePrice(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/audible/hushpuppy/common/upsell/PriceData;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/service/upsell/price/PriceClient$1;->execute(Lcom/audible/hushpuppy/common/upsell/PriceData;)V

    return-void
.end method
