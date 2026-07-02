.class public Lcom/amazon/ea/purchase/model/PurchaseInfo;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# static fields
.field private static final borrowLimitError:Ljava/lang/String; = "You can have up to 10 titles at a time and you currently have 10. To read another title, please tap to launch the store and return one that you currently have."


# instance fields
.field public final asin:Ljava/lang/String;

.field public final downloadPercentage:I

.field public final failure:Lcom/amazon/ea/purchase/model/FailRecord;

.field public final offer:Lcom/amazon/ea/purchase/model/BookOffer;

.field public final recentlyCanceled:Z

.field public final recentlyFailed:Z

.field public final recentlyPurchased:Z

.field public final state:Lcom/amazon/ea/purchase/model/PurchaseState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseState;Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/model/FailRecord;IZZZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->asin:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    .line 64
    iput-object p3, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    .line 65
    iput-object p4, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    .line 66
    iput p5, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->downloadPercentage:I

    .line 67
    iput-boolean p6, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    .line 68
    iput-boolean p7, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    .line 69
    iput-boolean p8, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyFailed:Z

    return-void
.end method


# virtual methods
.method public buyable()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->isAcquirable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/ea/purchase/model/BookOffer;->getBookCoverUrl(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ColorMode;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object v0, v0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object v1, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne v1, v2, :cond_1

    .line 174
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_borrow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    iget-object v0, v0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v0, v1, :cond_2

    .line 177
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_price_increased:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 178
    :cond_2
    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 180
    :cond_3
    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v0, v1, :cond_4

    .line 181
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_mfa_challenge:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 183
    :cond_4
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :cond_5
    :goto_0
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_need_billing_info:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 140
    :cond_0
    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v1}, Lcom/amazon/ea/purchase/model/BookOffer;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v1}, Lcom/amazon/ea/purchase/model/BookOffer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneTapErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object v0, v0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object v1, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    .line 201
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "You can have up to 10 titles at a time and you currently have 10. To read another title, please tap to launch the store and return one that you currently have."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_reach_borrow_limit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    iget-object v1, v0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    if-ne v1, v2, :cond_2

    .line 208
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_general_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_2
    iget-object v0, v0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v0, v1, :cond_3

    .line 211
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_price_increased:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :cond_3
    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 214
    :cond_4
    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    if-ne v0, v1, :cond_5

    .line 215
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_mfa_challenge:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :cond_5
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_onetap_order_processing_fail:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 213
    :cond_6
    :goto_0
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_widget_buy_fail_need_billing_info:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasFailure()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/model/FailRecord;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBorrowable()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->isBorrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKUBook()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->isKuBook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPRBook()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->isPrBook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public priceNotZero()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->getPriceAmount()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo [asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->state:Lcom/amazon/ea/purchase/model/PurchaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->failure:Lcom/amazon/ea/purchase/model/FailRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->downloadPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recentlyPurchased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyPurchased:Z

    const-string v2, "Y"

    const-string v3, "N"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recentlyCanceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyCanceled:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recentlyFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->recentlyFailed:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useSidecarBorrowSetting()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/PurchaseInfo;->offer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->usesSidecarBorrowSetting()Z

    move-result v0

    return v0
.end method
