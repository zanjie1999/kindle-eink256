.class Lcom/amazon/kindle/utils/StoreOpeners$NullBuyPageStoreOpener;
.super Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;
.source "StoreOpeners.java"

# interfaces
.implements Lcom/amazon/kindle/store/BuyPageStoreOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/utils/StoreOpeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullBuyPageStoreOpener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, v0}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/amazon/kindle/utils/StoreOpeners$NullBuyPageStoreOpener;-><init>()V

    return-void
.end method


# virtual methods
.method public setPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;
    .locals 0

    return-object p0
.end method
