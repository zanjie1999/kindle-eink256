.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;
.super Ljava/lang/Object;
.source "DaggerDSSComponent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DSSComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    }
.end annotation


# instance fields
.field private authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

.field private clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

.field private contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

.field private providesDSSRetroInterfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;",
            ">;"
        }
    .end annotation
.end field

.field private providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesFFSApiGatewayInterfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;",
            ">;"
        }
    .end annotation
.end field

.field private providesJacksonConverterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/converter/jackson/JacksonConverterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private proviesObjectMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

.field private sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->initialize(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 2

    .line 60
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$1;)V

    return-object v0
.end method

.method private getMAPAccountManager()Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    .line 67
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 66
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 65
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesMapAccountManager(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v0

    .line 64
    invoke-static {v0, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-object v0
.end method

.method private getMapAccessTokenProvider()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    .line 93
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->getMAPAccountManager()Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->getTokenManagement()Lcom/amazon/identity/auth/device/api/TokenManagement;

    move-result-object v2

    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->getString()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesAccessTokenProvider(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 91
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    return-object v0
.end method

.method private getSharedPreferencesProvider()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    .line 101
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 100
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 99
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;->provideSharedPreferencesProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    move-result-object v0

    .line 98
    invoke-static {v0, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    return-object v0
.end method

.method private getString()Ljava/lang/String;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    .line 85
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 84
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 83
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesTokenKeys(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getTokenManagement()Lcom/amazon/identity/auth/device/api/TokenManagement;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    .line 76
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 75
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 74
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;->providesTokenManagement(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/TokenManagement;

    move-result-object v0

    .line 73
    invoke-static {v0, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)V
    .locals 4

    .line 108
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    .line 112
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesDSSServiceConfigurationFactory;->create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 110
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 116
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 115
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesOkHttpClientFactory;->create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesOkHttpClientProvider:Ljavax/inject/Provider;

    .line 119
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProviesObjectMapperFactory;->create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 118
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->proviesObjectMapperProvider:Ljavax/inject/Provider;

    .line 123
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->proviesObjectMapperProvider:Ljavax/inject/Provider;

    .line 122
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;->create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesJacksonConverterFactoryProvider:Ljavax/inject/Provider;

    .line 127
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesOkHttpClientProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesJacksonConverterFactoryProvider:Ljavax/inject/Provider;

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesDSSRetroInterfaceFactory;->create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesDSSRetroInterfaceProvider:Ljavax/inject/Provider;

    .line 134
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesOkHttpClientProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesJacksonConverterFactoryProvider:Ljavax/inject/Provider;

    .line 133
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 132
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesFFSApiGatewayInterfaceProvider:Ljavax/inject/Provider;

    .line 138
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    .line 139
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    .line 140
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$500(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    .line 141
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->access$600(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    return-void
.end method

.method private injectDSSClientImpl(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    .line 153
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;->providesClock()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 152
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;

    .line 150
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMClock(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Clock;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesDSSRetroInterfaceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMDssApi(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesFFSApiGatewayInterfaceProvider:Ljavax/inject/Provider;

    .line 157
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    .line 156
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMFFSApiGatewayInterface(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;)V

    .line 158
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->getMapAccessTokenProvider()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMAccessTokenProvider(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)V

    .line 160
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    move-result-object v0

    .line 159
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMSharedPreferencesProvider(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    .line 164
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;->providesBackgroundWorkerScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 163
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lio/reactivex/Scheduler;

    .line 161
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMBackgroundScheduler(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lio/reactivex/Scheduler;)V

    .line 166
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    .line 169
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;->providesMainThreadScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 168
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lio/reactivex/Scheduler;

    .line 166
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectMMainThreadScheduler(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lio/reactivex/Scheduler;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->providesJacksonConverterFactoryProvider:Ljavax/inject/Provider;

    .line 172
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/converter/jackson/JacksonConverterFactory;

    .line 171
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl_MembersInjector;->injectJacksonConverterFactory(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lretrofit2/converter/jackson/JacksonConverterFactory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;->injectDSSClientImpl(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    return-void
.end method
