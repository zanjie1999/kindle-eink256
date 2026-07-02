.class final Lcom/amazon/whispersync/dcp/framework/KCPSDKConfigurator;
.super Ljava/lang/Object;
.source "KCPSDKConfigurator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureDynamicConfig()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SettingsKCPSDKAdapter;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/SettingsKCPSDKAdapter;-><init>()V

    .line 21
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->setStorage(Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;)V

    return-void
.end method

.method private configureLogging(Landroid/content/Context;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;-><init>()V

    .line 28
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->setLogOutput(Lcom/amazon/whispersync/AmazonDevice/Common/ILogOutput;)V

    .line 30
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getBuildType()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelDebug:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->setLogLevel(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/KCPSDKLog;->setShouldFilterPII(Z)V

    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;->SdkLogLevelInfo:Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;

    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->setLogLevel(Lcom/amazon/whispersync/AmazonDevice/Common/SdkLogLevel;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/KCPSDKConfigurator;->configureDynamicConfig()V

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/KCPSDKConfigurator;->configureLogging(Landroid/content/Context;)V

    return-void
.end method
