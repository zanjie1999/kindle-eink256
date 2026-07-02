.class public Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;
.super Ljava/lang/Object;
.source "LegacyUnBuyResult.java"


# instance fields
.field private final jsonResult:Ljava/lang/String;

.field private final responseSuccess:Z


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/StoreResponse;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreResponse;->isSuccess()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/sitb/android/StoreResponse;->getJsonResult()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->responseSuccess:Z

    .line 15
    iput-object p2, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->jsonResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJsonResult()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->jsonResult:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->responseSuccess:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/sitb/android/legacyPurchaseModule/LegacyUnBuyResult;->getJsonResult()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "order-canceled"

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
