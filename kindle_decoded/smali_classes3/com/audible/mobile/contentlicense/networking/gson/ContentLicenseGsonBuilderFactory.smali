.class public Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;
.super Ljava/lang/Object;
.source "ContentLicenseGsonBuilderFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Lcom/google/gson/GsonBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/GsonBuilder;
    .locals 4

    .line 37
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 39
    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    .line 42
    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/audible/mobile/networking/retrofit/gson/DateTypeAdapter;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/gson/DateTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 43
    const-class v1, Lcom/audible/mobile/domain/Asin;

    new-instance v2, Lcom/audible/mobile/networking/retrofit/gson/AsinTypeAdapter;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/gson/AsinTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 44
    const-class v1, Lcom/audible/mobile/domain/ProductId;

    new-instance v2, Lcom/audible/mobile/networking/retrofit/gson/ProductIdTypeAdapter;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/gson/ProductIdTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 45
    const-class v1, Lcom/audible/mobile/domain/ACR;

    new-instance v2, Lcom/audible/mobile/networking/retrofit/gson/AcrTypeAdapter;

    invoke-direct {v2}, Lcom/audible/mobile/networking/retrofit/gson/AcrTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 46
    const-class v1, Lcom/audible/mobile/domain/RequestId;

    new-instance v2, Lcom/audible/mobile/networking/retrofit/gson/GenericTypeAdapter;

    new-instance v3, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory$1;

    invoke-direct {v3, p0}, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory$1;-><init>(Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;)V

    invoke-direct {v2, v3}, Lcom/audible/mobile/networking/retrofit/gson/GenericTypeAdapter;-><init>(Lcom/audible/mobile/networking/retrofit/gson/NullSafeFactory;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 52
    const-class v1, Landroid/net/Uri;

    new-instance v2, Lcom/audible/mobile/networking/retrofit/gson/GenericTypeAdapter;

    new-instance v3, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory$2;

    invoke-direct {v3, p0}, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory$2;-><init>(Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;)V

    invoke-direct {v2, v3}, Lcom/audible/mobile/networking/retrofit/gson/GenericTypeAdapter;-><init>(Lcom/audible/mobile/networking/retrofit/gson/NullSafeFactory;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/audible/mobile/contentlicense/networking/gson/ContentLicenseGsonBuilderFactory;->get()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method
