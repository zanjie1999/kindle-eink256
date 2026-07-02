.class public Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;
.super Ljava/lang/Object;
.source "AuthenticatedOkHttpInterceptorFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;
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


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The identityManager param cannot be null"

    .line 30
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;)Lcom/audible/mobile/identity/IdentityManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Interceptor;
    .locals 2

    .line 37
    new-instance v0, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$AuthenticatedInterceptor;-><init>(Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory;Lcom/audible/mobile/networking/retrofit/okhttp/AuthenticatedOkHttpInterceptorFactory$1;)V

    return-object v0
.end method
