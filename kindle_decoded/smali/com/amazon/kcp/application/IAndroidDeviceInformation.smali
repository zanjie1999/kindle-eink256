.class public interface abstract Lcom/amazon/kcp/application/IAndroidDeviceInformation;
.super Ljava/lang/Object;
.source "IAndroidDeviceInformation.java"


# virtual methods
.method public abstract getAndroidApiLevel()I
.end method

.method public abstract getAvailableStorageSize(Ljava/lang/String;)J
.end method

.method public abstract getBrand()Ljava/lang/String;
.end method

.method public abstract getCPUArchitecture()Ljava/lang/String;
.end method

.method public abstract getCPUFeatures()Ljava/lang/String;
.end method

.method public abstract getCPUInstructionSets()Ljava/lang/String;
.end method

.method public abstract getDataPartitionAvailable()J
.end method

.method public abstract getDeviceManufacturer()Ljava/lang/String;
.end method

.method public abstract getDeviceModelId()Ljava/lang/String;
.end method

.method public abstract getDisplayDiagnonal()F
.end method

.method public abstract getExternalStorageAvailable()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGpuExtensions()Ljava/lang/String;
.end method

.method public abstract getGpuRenderer()Ljava/lang/String;
.end method

.method public abstract getGpuVendor()Ljava/lang/String;
.end method

.method public abstract getGpuVersion()Ljava/lang/String;
.end method

.method public abstract getHardware()Ljava/lang/String;
.end method

.method public abstract getMaxApplicationMemory()J
.end method

.method public abstract getMaxCpuSpeed()J
.end method

.method public abstract getOsVersion()Ljava/lang/String;
.end method

.method public abstract getProcessor()Ljava/lang/String;
.end method

.method public abstract getTotalMemory()J
.end method

.method public abstract setGpuExtensions(Ljava/lang/String;)V
.end method

.method public abstract setGpuRenderer(Ljava/lang/String;)V
.end method

.method public abstract setGpuVendor(Ljava/lang/String;)V
.end method

.method public abstract setGpuVersion(Ljava/lang/String;)V
.end method
