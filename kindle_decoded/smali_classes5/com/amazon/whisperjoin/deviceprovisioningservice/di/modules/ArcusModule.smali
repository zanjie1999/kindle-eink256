.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;
.super Ljava/lang/Object;
.source "ArcusModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesDefaultArcuConfiguration()Lorg/json/JSONObject;
    .locals 2

    .line 58
    :try_start_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public providesFFSArcusSyncClient(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;)V

    return-object v0
.end method

.method public providesFFSArcusSyncCoordinator(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
    .locals 8

    .line 35
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;-><init>(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)V

    return-object v7
.end method

.method public providesRemoteConfigurationManager(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
    .locals 2

    .line 47
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    const-string v1, "arn:aws:remote-config:us-west-2:044929725723:appConfig:acx30c6w"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->withDefaultConfiguration(Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;

    .line 49
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->createOrGet()Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;

    move-result-object p1

    return-object p1
.end method
