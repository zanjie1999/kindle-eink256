.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;
.super Ljava/lang/Object;
.source "NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private final dssServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final jacksonConverterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/converter/jackson/JacksonConverterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/converter/jackson/JacksonConverterFactory;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->dssServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->jacksonConverterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/converter/jackson/JacksonConverterFactory;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->dssServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->jacksonConverterFactoryProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/converter/jackson/JacksonConverterFactory;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;->providesFFSApiGatewayInterface(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Lokhttp3/OkHttpClient;Lretrofit2/converter/jackson/JacksonConverterFactory;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesFFSApiGatewayInterfaceFactory;->get()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    move-result-object v0

    return-object v0
.end method
