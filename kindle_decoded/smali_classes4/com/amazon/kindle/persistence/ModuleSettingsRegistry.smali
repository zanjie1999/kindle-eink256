.class public Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;
.super Ljava/lang/Object;
.source "ModuleSettingsRegistry.java"


# static fields
.field private static INSTANCE:Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

.field private static final RESTORABLE_SETTINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/application/AbstractModuleSettingsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->RESTORABLE_SETTINGS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->INSTANCE:Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->INSTANCE:Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

    .line 24
    :cond_0
    sget-object v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->INSTANCE:Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;

    return-object v0
.end method


# virtual methods
.method forceDiskRead()V
    .locals 2

    .line 47
    sget-object v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->RESTORABLE_SETTINGS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/persistence/AbstractSettingsController;

    .line 48
    invoke-virtual {v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->readFromDisk()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getRestorableSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/application/AbstractModuleSettingsController;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/amazon/kindle/persistence/ModuleSettingsRegistry;->RESTORABLE_SETTINGS:Ljava/util/Map;

    return-object v0
.end method
