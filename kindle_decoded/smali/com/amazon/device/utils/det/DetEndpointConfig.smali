.class public Lcom/amazon/device/utils/det/DetEndpointConfig;
.super Ljava/lang/Object;
.source "DetEndpointConfig.java"


# static fields
.field private static final endPointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/device/utils/det/Domain;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/utils/det/DetEndpointConfig;->endPointMap:Ljava/util/Map;

    return-void
.end method

.method public static addEndPoint(Lcom/amazon/device/utils/det/Domain;Ljava/lang/String;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/device/utils/det/DetEndpointConfig;->endPointMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getServiceEndpoint(Lcom/amazon/device/utils/det/Domain;)Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/device/utils/det/DetEndpointConfig;->endPointMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
