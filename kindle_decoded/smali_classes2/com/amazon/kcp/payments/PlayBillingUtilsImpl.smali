.class public final Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;
.super Ljava/lang/Object;
.source "PlayBillingUtilsImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/payment/PlayBillingUtils;


# instance fields
.field private final shouldUsePaymentFlows$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl$shouldUsePaymentFlows$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl$shouldUsePaymentFlows$2;-><init>(Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;->shouldUsePaymentFlows$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getShouldUsePaymentFlows()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;->shouldUsePaymentFlows$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getShouldUsePaymentFlows$KindleReaderLibrary_release(ZZZLjava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "weblabTreatment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_5

    if-eqz p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 p2, 0x43

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa5d

    if-eq p1, p2, :cond_2

    const/16 p2, 0xa5e

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "T2"

    .line 89
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "T1"

    .line 91
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_4

    goto :goto_0

    :cond_3
    const-string p1, "C"

    .line 90
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public shouldUsePaymentFlows()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/payments/PlayBillingUtilsImpl;->getShouldUsePaymentFlows()Z

    move-result v0

    return v0
.end method
