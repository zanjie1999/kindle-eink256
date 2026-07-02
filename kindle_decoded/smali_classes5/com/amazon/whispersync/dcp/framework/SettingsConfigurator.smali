.class final Lcom/amazon/whispersync/dcp/framework/SettingsConfigurator;
.super Ljava/lang/Object;
.source "SettingsConfigurator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;


# instance fields
.field private final mPreConfigurators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SettingsConfigurator;->mPreConfigurators:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SettingsConfigurator;->mPreConfigurators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;

    .line 24
    invoke-interface {v1, p1}, Lcom/amazon/whispersync/dcp/framework/FrameworkInit$Configurator;->configure(Landroid/content/Context;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->setContext(Landroid/content/Context;)V

    return-void
.end method
