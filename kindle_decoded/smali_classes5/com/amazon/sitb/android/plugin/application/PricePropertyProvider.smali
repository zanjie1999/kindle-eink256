.class public Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;
.super Ljava/lang/Object;
.source "PricePropertyProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;


# static fields
.field private static final AVAILABLE_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_BOOK_IS_BORROWABLE:Ljava/lang/String; = "sampling_book_is_borrowable"

.field private static final PROPERTY_FORMATTED_PRICE:Ljava/lang/String; = "sampling_formatted_price"

.field private static final PROPERTY_PRICE_AMOUNT:Ljava/lang/String; = "sampling_price_amount"

.field private static final PROPERTY_PRICE_CURRENCY:Ljava/lang/String; = "sampling_price_currency"

.field private static final PROPERTY_PRICE_EXPIRATION:Ljava/lang/String; = "sampling_price_expiration"


# instance fields
.field private priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "sampling_formatted_price"

    const-string/jumbo v1, "sampling_price_amount"

    const-string/jumbo v2, "sampling_price_currency"

    const-string/jumbo v3, "sampling_price_expiration"

    const-string/jumbo v4, "sampling_book_is_borrowable"

    .line 25
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->AVAILABLE_PROPERTIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/cache/price/PriceCache;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    return-void
.end method


# virtual methods
.method public getProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->AVAILABLE_PROPERTIES:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->priceCache:Lcom/amazon/sitb/android/cache/price/PriceCache;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/sitb/android/BookPrice;

    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "sampling_formatted_price"

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->toLocalizedString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v0, "sampling_price_amount"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getPriceAmountString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string/jumbo v0, "sampling_price_currency"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string/jumbo v0, "sampling_price_expiration"

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getTimeCached()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->getMaxAgeInMillis()J

    move-result-wide p1

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string/jumbo v0, "sampling_book_is_borrowable"

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 76
    invoke-virtual {p1}, Lcom/amazon/sitb/android/BookPrice;->isBorrowable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->AVAILABLE_PROPERTIES:Ljava/util/List;

    return-object v0
.end method
