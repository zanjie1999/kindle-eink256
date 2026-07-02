.class Lcom/amazon/kindle/utils/StoreOpeners$NullFeatureDocOpener;
.super Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;
.source "StoreOpeners.java"

# interfaces
.implements Lcom/amazon/kindle/store/FeatureDocStoreOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/utils/StoreOpeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullFeatureDocOpener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/amazon/kindle/utils/StoreOpeners$NullFeatureDocOpener;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionData(Ljava/util/Map;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kindle/store/FeatureDocStoreOpener;"
        }
    .end annotation

    return-object p0
.end method
