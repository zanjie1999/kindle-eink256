.class public interface abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;
.super Ljava/lang/Object;
.source "BaseComponent.java"


# virtual methods
.method public abstract getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
.end method

.method public abstract getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
.end method

.method public abstract getDevicePowerStatusProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;
.end method

.method public abstract getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
.end method

.method public abstract getGson()Lcom/google/gson/Gson;
.end method

.method public abstract getJobInfoProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;
.end method

.method public abstract getJobScheduler()Landroid/app/job/JobScheduler;
.end method

.method public abstract getLocationPermissionHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
.end method

.method public abstract getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
.end method

.method public abstract getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;
.end method
