.class Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;
.super Ljava/util/HashMap;
.source "CollectionItemsCountCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/CollectionItemsCountCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 315
    invoke-static {}, Lcom/amazon/kindle/krx/library/LibraryGroupType;->values()[Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/CollectionItemsCountCache$1;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;-><init>()V

    return-void
.end method
