.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;
.super Ljava/lang/Object;
.source "NetworkingModule.java"


# instance fields
.field private final mServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;->mServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    return-void
.end method

.method public static buildOkHttpClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lokhttp3/OkHttpClient;
    .locals 4

    .line 65
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 66
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 72
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 74
    new-instance p0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {p0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 75
    invoke-virtual {p0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 77
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public providesDSSRetroInterface(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Lokhttp3/OkHttpClient;Lretrofit2/converter/jackson/JacksonConverterFactory;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;
    .locals 1
    .annotation build Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/scopes/NetworkingScope;
    .end annotation

    .line 118
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->getBaseUrl()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    .line 120
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 121
    invoke-virtual {v0, p3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 122
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 126
    const-class p2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    return-object p1
.end method

.method providesDSSServiceConfiguration()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;
    .locals 1
    .annotation build Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/scopes/NetworkingScope;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;->mServiceConfiguration:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    return-object v0
.end method

.method public providesFFSApiGatewayInterface(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;Lokhttp3/OkHttpClient;Lretrofit2/converter/jackson/JacksonConverterFactory;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;
    .locals 1
    .annotation build Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/scopes/NetworkingScope;
    .end annotation

    .line 133
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->getApiGatewayBaseUrl()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    .line 135
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 136
    invoke-virtual {v0, p3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 137
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 141
    const-class p2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/FFSApiGatewayInterface;

    return-object p1
.end method

.method public providesJacksonConverterFactory(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lretrofit2/converter/jackson/JacksonConverterFactory;
    .locals 0
    .annotation build Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/scopes/NetworkingScope;
    .end annotation

    .line 87
    invoke-static {p1}, Lretrofit2/converter/jackson/JacksonConverterFactory;->create(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lretrofit2/converter/jackson/JacksonConverterFactory;

    move-result-object p1

    return-object p1
.end method

.method public providesOkHttpClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lokhttp3/OkHttpClient;
    .locals 0
    .annotation build Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/scopes/NetworkingScope;
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;->buildOkHttpClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public proviesObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3
    .annotation build Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/scopes/NetworkingScope;
    .end annotation

    .line 93
    const-class v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/ProvisioneeDetailsMixin;

    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 94
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 99
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 102
    const-class v2, Lcom/amazon/devicesetupservice/ProvisioneeDetails;

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 103
    const-class v2, Lcom/amazon/devicesetupservice/ProvisionerDetails;

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 104
    const-class v0, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;

    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/DiscoveryInputParametersMixin;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 105
    const-class v0, Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;

    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/ProvisioneeIdentifierMixin;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 106
    const-class v0, Lcom/amazon/devicesetupservice/v1/AuthMaterialIdentifier;

    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/AuthMaterialIdentifierMixin;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 107
    const-class v0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;

    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/BarcodeIdentifierMixin;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 108
    const-class v0, Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/jackson/DiscoveryOutputParametersMixin;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v1
.end method
