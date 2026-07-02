.class public Lcom/amazon/ea/util/StoreManager;
.super Ljava/lang/Object;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/util/StoreManager$PurchaseInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AMOUNT_CONTENT_KEY:Ljava/lang/String; = "sampling_price_amount"

.field private static final CURRENCY_CONTENT_KEY:Ljava/lang/String; = "sampling_price_currency"

.field private static final EXPIRATION_CONTENT_KEY:Ljava/lang/String; = "sampling_price_expiration"

.field private static final FORMATTED_PRICE_CONTENT_KEY:Ljava/lang/String; = "sampling_formatted_price"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.StoreManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    invoke-static {p2, p3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    sget-object p3, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    if-ne p3, p1, :cond_1

    .line 87
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    sget-object p3, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->AUTHOR_DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    if-ne p3, p1, :cond_2

    .line 89
    invoke-interface {v0, p0, p2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadAuthorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    :goto_0
    sget-object p0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p0

    const-string p1, "Store"

    invoke-interface {p0, p4, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z
    .locals 3

    .line 157
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    .line 158
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 163
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    if-ne v1, p1, :cond_1

    .line 164
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {p2}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->AUTHOR_DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    if-ne v1, p1, :cond_2

    .line 166
    invoke-virtual {p2}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadAuthorPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->SEARCH_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    if-ne v1, p1, :cond_3

    .line 168
    invoke-virtual {p2}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadSearchResults(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    sget-object p0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p0

    const-string p1, "Store"

    invoke-interface {p0, p3, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public static supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 225
    :cond_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/store/IStoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result p0

    return p0
.end method
