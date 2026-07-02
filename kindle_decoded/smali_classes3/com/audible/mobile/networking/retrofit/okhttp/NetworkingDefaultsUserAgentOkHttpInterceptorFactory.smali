.class public Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;
.super Ljava/lang/Object;
.source "NetworkingDefaultsUserAgentOkHttpInterceptorFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$UserAgentInterceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Lokhttp3/Interceptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Interceptor;
    .locals 2

    .line 20
    new-instance v0, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$UserAgentInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$UserAgentInterceptor;-><init>(Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory;Lcom/audible/mobile/networking/retrofit/okhttp/NetworkingDefaultsUserAgentOkHttpInterceptorFactory$1;)V

    return-object v0
.end method
