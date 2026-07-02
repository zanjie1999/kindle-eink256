.class public Lcom/amazon/sitb/android/reftag/SeriesReftagBundle;
.super Ljava/lang/Object;
.source "SeriesReftagBundle.java"

# interfaces
.implements Lcom/amazon/sitb/android/reftag/ReftagBundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBorrowReftagPrefix()I
    .locals 1

    .line 45
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_borrow_button_reftag_prefix:I

    return v0
.end method

.method public getDetailReftagPrefix()I
    .locals 1

    .line 15
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_detail_link_reftag_prefix:I

    return v0
.end method

.method public getInlineBuyReftagPrefix()I
    .locals 1

    .line 33
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_buyAsin_reftag_prefix:I

    return v0
.end method

.method public getInlineUnbuyReftagPrefix()I
    .locals 1

    .line 39
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_unBuy_reftag_prefix:I

    return v0
.end method

.method public getPaymentErrorReftagPrefix()I
    .locals 1

    .line 57
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_payment_error_reftag_prefix:I

    return v0
.end method

.method public getPrepareBuyReftagPrefix()I
    .locals 1

    .line 51
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_prepareBuy_reftag_prefix:I

    return v0
.end method

.method public getStoreBuyReftagPrefix()I
    .locals 1

    .line 27
    sget v0, Lcom/amazon/kindle/sitb/R$string;->series_bar_buy_button_reftag_prefix:I

    return v0
.end method
