.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;
.super Ljava/lang/Object;
.source "NetworkingModule_ProvidesJacksonConverterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/converter/jackson/JacksonConverterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

.field private final objectMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;",
            "Ljavax/inject/Provider<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    .line 19
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;->objectMapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;",
            "Ljavax/inject/Provider<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lretrofit2/converter/jackson/JacksonConverterFactory;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;->get()Lretrofit2/converter/jackson/JacksonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/converter/jackson/JacksonConverterFactory;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;->module:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule_ProvidesJacksonConverterFactoryFactory;->objectMapperProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;->providesJacksonConverterFactory(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lretrofit2/converter/jackson/JacksonConverterFactory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lretrofit2/converter/jackson/JacksonConverterFactory;

    return-object v0
.end method
