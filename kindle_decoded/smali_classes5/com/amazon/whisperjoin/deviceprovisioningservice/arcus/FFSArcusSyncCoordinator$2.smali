.class Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator$2;
.super Ljava/lang/Object;
.source "FFSArcusSyncCoordinator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;->getFFSArcusSettings()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getFFSArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p1

    return-object p1
.end method
