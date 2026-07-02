.class public Lcom/amazon/kcp/info/brochure/BrochureShareActionFactory;
.super Ljava/lang/Object;
.source "BrochureShareActionFactory.java"


# direct methods
.method public static getShareAction(Lcom/amazon/kcp/info/brochure/BrochureShareType;)Lcom/amazon/kcp/info/brochure/IBrochureShareAction;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureShareActionFactory$1;->$SwitchMap$com$amazon$kcp$info$brochure$BrochureShareType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 37
    new-instance p0, Lcom/amazon/kcp/info/brochure/BrochureNoShareAction;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureNoShareAction;-><init>()V

    return-object p0

    .line 34
    :cond_0
    new-instance p0, Lcom/amazon/kcp/info/brochure/BrochureShareQuoteWithImageAction;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureShareQuoteWithImageAction;-><init>()V

    return-object p0

    .line 32
    :cond_1
    new-instance p0, Lcom/amazon/kcp/info/brochure/BrochureRecommendBookWithImageAction;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureRecommendBookWithImageAction;-><init>()V

    return-object p0

    .line 30
    :cond_2
    new-instance p0, Lcom/amazon/kcp/info/brochure/BrochureQuoteShareAction;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureQuoteShareAction;-><init>()V

    return-object p0

    .line 28
    :cond_3
    new-instance p0, Lcom/amazon/kcp/info/brochure/BrochureRecommendBookAction;

    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureRecommendBookAction;-><init>()V

    return-object p0
.end method
