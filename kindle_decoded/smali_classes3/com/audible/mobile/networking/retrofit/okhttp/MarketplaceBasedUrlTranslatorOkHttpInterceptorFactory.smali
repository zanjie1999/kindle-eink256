.class public Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;
.super Ljava/lang/Object;
.source "MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;
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

.field private final uriTranslator:Lcom/audible/mobile/framework/UriTranslator;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/network/framework/MarketplaceUriTranslatorImpl;-><init>(Lcom/audible/mobile/identity/IdentityManager;)V

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/framework/UriTranslator;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The identityManager param cannot be null"

    .line 55
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/identity/IdentityManager;

    iput-object p1, p0, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    const-string p1, "The uriTranslator param cannot be null"

    .line 56
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/framework/UriTranslator;

    iput-object p2, p0, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;)Lcom/audible/mobile/framework/UriTranslator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Interceptor;
    .locals 2

    .line 63
    new-instance v0, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$UrlTranslatorInterceptor;-><init>(Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory;Lcom/audible/mobile/networking/retrofit/okhttp/MarketplaceBasedUrlTranslatorOkHttpInterceptorFactory$1;)V

    return-object v0
.end method
