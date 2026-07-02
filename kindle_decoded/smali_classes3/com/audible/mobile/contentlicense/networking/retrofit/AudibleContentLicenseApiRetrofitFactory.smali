.class public Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;
.super Ljava/lang/Object;
.source "AudibleContentLicenseApiRetrofitFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUDIBLE_API_ENDPOINT:Ljava/lang/String; = "https://api.audible.com/1.0/"

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final TIMEOUT_SECONDS:I = 0xf


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/identity/IdentityManager;

    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 5

    .line 61
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 62
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 64
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 69
    new-instance v2, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;-><init>()V

    invoke-virtual {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/DebugLoggingOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 71
    new-instance v2, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-direct {v2, v3}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-virtual {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 72
    new-instance v2, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;-><init>()V

    invoke-virtual {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 73
    new-instance v2, Lcom/audible/mobile/networking/retrofit/okhttp/AcceptLanguageOkHttpInterceptorFactory;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/AcceptLanguageOkHttpInterceptorFactory;-><init>()V

    invoke-virtual {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/AcceptLanguageOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 74
    new-instance v2, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;

    iget-object v3, p0, Lcom/audible/mobile/contentlicense/networking/retrofit/AudibleContentLicenseApiRetrofitFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-direct {v2, v3}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-virtual {v2}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 76
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 78
    new-instance v1, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;

    invoke-direct {v1}, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;-><init>()V

    .line 79
    invoke-virtual {v1}, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;->get()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 82
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 83
    invoke-static {}, Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;->create()Lcom/audible/mobile/networking/retrofit/EnumRetrofitConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    const-string v1, "https://api.audible.com/1.0/"

    .line 86
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 88
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
