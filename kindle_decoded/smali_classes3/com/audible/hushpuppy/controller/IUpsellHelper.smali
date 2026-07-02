.class public interface abstract Lcom/audible/hushpuppy/controller/IUpsellHelper;
.super Ljava/lang/Object;
.source "IUpsellHelper.java"


# static fields
.field public static final DELAY_DURATION_FOR_PURCHASE_TIME:Lcom/audible/mobile/domain/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/IUpsellHelper;->DELAY_DURATION_FOR_PURCHASE_TIME:Lcom/audible/mobile/domain/Time;

    return-void
.end method


# virtual methods
.method public abstract cancelQueuedPurchaseOrder(Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract enqueuePurchaseRequestAndSetUpsellState(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;Lcom/audible/hushpuppy/service/upsell/UpsellSource;Z)V
.end method

.method public abstract processQueuedPurchaseOrderImmediately(Lcom/audible/mobile/domain/Asin;Z)Z
.end method

.method public abstract startAutoDisappearTimer(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
.end method

.method public abstract viewDisplayed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
.end method
