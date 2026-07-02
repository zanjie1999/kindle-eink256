.class final Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;
.super Ljava/lang/Object;
.source "SSLTrustConfigurator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;


# static fields
.field private static final TRUST_ALL_SSL_HOSTS:Lcom/amazon/whispersync/dcp/settings/SettingBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    const-string v1, "internal.test.trust.ssl.hosts"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;->TRUST_ALL_SSL_HOSTS:Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;->applySSLTrustSettings()V

    return-void
.end method

.method private applySSLTrustSettings()V
    .locals 2

    .line 29
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;-><init>()V

    .line 30
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;->TRUST_ALL_SSL_HOSTS:Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;->getValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SSLConfiguration;->toggleTrustSSLHosts(Z)V

    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object p1

    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;)V

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->addListener(Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;)V

    return-void
.end method
