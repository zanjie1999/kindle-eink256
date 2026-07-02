.class public Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;
.super Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;
.source "StandaloneAndroidDeviceHardwareInfoProvider.java"


# static fields
.field private static final CPU_INFO_FILE:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cpuArchitecture:Ljava/lang/String;

.field private cpuFeatures:Ljava/lang/String;

.field private cpuInstructionSets:Ljava/lang/String;

.field private cpuName:Ljava/lang/String;

.field private gpuExtensions:Ljava/lang/String;

.field private gpuRenderer:Ljava/lang/String;

.field private gpuVendor:Ljava/lang/String;

.field private gpuVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->populateCPUInfo()V

    return-void
.end method

.method private populateCPUInfo()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->populateCPUInstructionSets()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Processor"

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Features"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CPU architecture"

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->grepCpuInfoForFields(Ljava/util/List;)V

    return-void
.end method

.method private populateCPUInstructionSets()V
    .locals 1

    .line 77
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuInstructionSets:Ljava/lang/String;

    return-void
.end method

.method private static readLineInFileMatchingString(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Couldn\'t close the file "

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 138
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, ":"

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 144
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    .line 146
    aget-object v7, v4, v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    .line 147
    aget-object v7, v4, v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 159
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 161
    sget-object v1, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v3

    .line 154
    :goto_2
    :try_start_3
    sget-object v1, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read cpu info from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 159
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 161
    sget-object v1, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_3
    return-object v3

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v2, :cond_5

    .line 159
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 161
    sget-object v1, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 165
    :cond_5
    :goto_5
    throw p1
.end method


# virtual methods
.method public getCPUArchitecture()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUFeatures()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUInstructionSets()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuInstructionSets:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuExtensions()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuExtensions:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuRenderer()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuVendor()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuVersion()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessor()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuName:Ljava/lang/String;

    return-object v0
.end method

.method public grepCpuInfoForFields(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "/proc/cpuinfo"

    .line 96
    invoke-static {v0, p1}, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->readLineInFileMatchingString(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Processor"

    .line 101
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuName:Ljava/lang/String;

    :cond_1
    const-string v0, "Features"

    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuFeatures:Ljava/lang/String;

    :cond_2
    const-string v0, "CPU architecture"

    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->cpuArchitecture:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setGpuExtensions(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuExtensions:Ljava/lang/String;

    return-void
.end method

.method public setGpuRenderer(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuRenderer:Ljava/lang/String;

    return-void
.end method

.method public setGpuVendor(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuVendor:Ljava/lang/String;

    return-void
.end method

.method public setGpuVersion(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneAndroidDeviceHardwareInfoProvider;->gpuVersion:Ljava/lang/String;

    return-void
.end method
