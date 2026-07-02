.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I

.field loadFactor:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 135
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->loadFactor:F

    const/16 v0, 0x10

    .line 136
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 137
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public buildComputingMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy<",
            "TK;TV;TE;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 257
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V

    return-object v0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "computer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "strategy"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy<",
            "TK;TV;TE;>;)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {v0, p1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;)V

    return-object v0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "strategy"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concurrencyLevel(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 188
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    return-object p0

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public initialCapacity(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;
    .locals 0

    if-ltz p1, :cond_0

    .line 164
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->initialCapacity:I

    return-object p0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public loadFactor(F)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 148
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->loadFactor:F

    return-object p0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
