.class public final Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;
.super Ljava/lang/Object;
.source "AppExpanModule_ProvideDebugSettingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/util/DebugSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    return-void
.end method

.method public static create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;-><init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/DebugSettings;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;->proxyProvideDebugSetting(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/DebugSettings;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDebugSetting(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/DebugSettings;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule;->provideDebugSetting()Lcom/amazon/appexpan/client/util/DebugSettings;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/appexpan/client/util/DebugSettings;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/util/DebugSettings;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    invoke-static {v0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;->provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/DebugSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideDebugSettingFactory;->get()Lcom/amazon/appexpan/client/util/DebugSettings;

    move-result-object v0

    return-object v0
.end method
