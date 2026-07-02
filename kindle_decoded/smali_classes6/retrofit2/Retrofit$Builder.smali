.class public final Lretrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseUrl:Lokhttp3/HttpUrl;

.field private final callAdapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private callFactory:Lokhttp3/Call$Factory;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final platform:Lretrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 408
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Platform;)V

    return-void
.end method

.method constructor <init>(Lretrofit2/Platform;)V
    .locals 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    .line 404
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2

    .line 544
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2

    .line 535
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "baseUrl == null"

    .line 469
    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    return-object p0
.end method

.method public baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;
    .locals 3

    const-string v0, "baseUrl == null"

    .line 524
    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    return-object p0

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lretrofit2/Retrofit;
    .locals 9

    .line 586
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    :cond_0
    move-object v2, v0

    .line 595
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 597
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v0}, Lretrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->callAdapterFactories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 602
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v1, v6}, Lretrofit2/Platform;->defaultCallAdapterFactories(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 606
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v4}, Lretrofit2/Platform;->defaultConverterFactoriesSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 610
    new-instance v3, Lretrofit2/BuiltInConverters;

    invoke-direct {v3}, Lretrofit2/BuiltInConverters;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v3}, Lretrofit2/Platform;->defaultConverterFactories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 614
    new-instance v8, Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 615
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-boolean v7, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lretrofit2/Retrofit;-><init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v8

    .line 587
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "factory == null"

    .line 449
    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lokhttp3/Call$Factory;

    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "client == null"

    .line 440
    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lokhttp3/Call$Factory;

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    return-object p0
.end method
