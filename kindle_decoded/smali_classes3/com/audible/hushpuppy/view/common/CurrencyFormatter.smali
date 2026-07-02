.class public final Lcom/audible/hushpuppy/view/common/CurrencyFormatter;
.super Ljava/lang/Object;
.source "CurrencyFormatter.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    const-string v0, "displayPrice failed to identify currency code "

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_1

    .line 62
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->free:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez p2, :cond_2

    .line 68
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    :cond_2
    invoke-static {p2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    .line 77
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 87
    invoke-virtual {p2, v0}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 89
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    .line 82
    sget-object v2, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p2

    .line 79
    sget-object v2, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v1
.end method
