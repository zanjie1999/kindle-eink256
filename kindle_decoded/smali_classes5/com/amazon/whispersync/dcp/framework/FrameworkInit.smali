.class public final Lcom/amazon/whispersync/dcp/framework/FrameworkInit;
.super Ljava/lang/Object;
.source "FrameworkInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;
    }
.end annotation


# static fields
.field private static final CONFIGURATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTINGS_PRE_CONFIGURATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->SETTINGS_PRE_CONFIGURATORS:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    .line 24
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->addDefaultConfigurators()V

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;-><init>()V

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->addSettingsPreConfigurator(Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDefaultConfigurators()V
    .locals 3

    .line 30
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/GuiceLoggingConfigurator;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/GuiceLoggingConfigurator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SettingsConfigurator;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->SETTINGS_PRE_CONFIGURATORS:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/dcp/framework/SettingsConfigurator;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/StrictModeConfigurator;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/StrictModeConfigurator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/KCPSDKConfigurator;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/KCPSDKConfigurator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isMapR5Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/MAPConfigurator;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/MAPConfigurator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addSettingsPreConfigurator(Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->SETTINGS_PRE_CONFIGURATORS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 43
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/FrameworkInit;->CONFIGURATORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;

    .line 45
    invoke-interface {v1, p1}, Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;->configure(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
