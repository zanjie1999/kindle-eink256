.class public final Lcom/amazon/kcp/library/CUVisibilityStrategy;
.super Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;
.source "CUVisibilityStrategy.kt"


# instance fields
.field private final customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V
    .locals 1

    const-string v0, "customerBenefits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "counter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/library/CUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 1

    const-string v0, "customerBenefits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    .line 13
    iput-object p1, p0, Lcom/amazon/kcp/library/CUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/library/CUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v0

    return v0
.end method
