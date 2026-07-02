.class public Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;
.super Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;
.source "PrimeKUVisibilityStrategy.java"


# instance fields
.field private customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
