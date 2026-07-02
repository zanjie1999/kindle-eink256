.class public Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;
.super Ljava/lang/Object;
.source "BaseBookOpenPattern.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseBookOpenPattern.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseBookOpenPattern.kt\ncom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n305#2,7:48\n305#2,7:55\n305#2,7:62\n305#2,7:69\n1586#3,2:76\n1586#3,2:78\n*E\n*S KotlinDebug\n*F\n+ 1 BaseBookOpenPattern.kt\ncom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern\n*L\n13#1,7:48\n23#1,7:55\n29#1,7:62\n39#1,7:69\n41#1,2:76\n41#1,2:78\n*E\n"
.end annotation


# instance fields
.field private failureHandler:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;

.field private final transitioners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->transitioners:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->transitioners:Ljava/util/Map;

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V

    .line 58
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    check-cast v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;

    .line 25
    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    return-void
.end method

.method public addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->transitioners:Ljava/util/Map;

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V

    .line 65
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    check-cast v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;

    .line 31
    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V

    return-void
.end method

.method public getFailureHandler()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->failureHandler:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;

    return-object v0
.end method

.method public getTransitioner(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->transitioners:Ljava/util/Map;

    .line 48
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V

    .line 51
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    check-cast v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;

    return-object v1
.end method

.method public replaceFailureHandler(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;)V
    .locals 1

    const-string v0, "failureHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->failureHandler:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;

    return-void
.end method

.method public replaceTransitioner(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitioner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->transitioners:Ljava/util/Map;

    .line 69
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenStateTransitioner;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V

    .line 72
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    check-cast v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;

    .line 42
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->getMetrics()Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    .line 42
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->getValidation()Ljava/util/List;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;

    .line 43
    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V

    goto :goto_1

    :cond_2
    return-void
.end method
