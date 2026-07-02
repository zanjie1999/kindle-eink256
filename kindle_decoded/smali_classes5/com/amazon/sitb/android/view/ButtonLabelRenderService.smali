.class public Lcom/amazon/sitb/android/view/ButtonLabelRenderService;
.super Ljava/lang/Object;
.source "ButtonLabelRenderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderBuyButtonLabel(Landroid/content/res/Resources;Lcom/amazon/sitb/android/BookPrice;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->isFree()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_buy_for_free_nln:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 25
    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 26
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 27
    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_buy_for_price:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    :goto_0
    sget p2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_buy:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
