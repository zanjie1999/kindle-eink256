.class public Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;
.super Ljava/lang/Object;
.source "ProvisionerConfigurationInfo.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private bleScanFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private featureSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.smarthome.ProvisionerConfigurationInfo"

    aput-object v2, v0, v1

    .line 30
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 48
    instance-of v0, p1, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;

    .line 54
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->bleScanFilterList:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->bleScanFilterList:Ljava/util/List;

    .line 55
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->featureSettings:Ljava/util/Map;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->featureSettings:Ljava/util/Map;

    .line 56
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBleScanFilterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->bleScanFilterList:Ljava/util/List;

    return-object v0
.end method

.method public getFeatureSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->featureSettings:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    sget v1, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->classNameHashCode:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->bleScanFilterList:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->featureSettings:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBleScanFilterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->bleScanFilterList:Ljava/util/List;

    return-void
.end method

.method public setFeatureSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/ProvisionerConfigurationInfo;->featureSettings:Ljava/util/Map;

    return-void
.end method
