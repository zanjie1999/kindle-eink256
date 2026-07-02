.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;
.super Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;
.source "WifiScanResultCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method
