.class public final Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;
.super Ljava/lang/Object;
.source "SourceProvider.java"


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

.field public static final UNKNOWN_SOURCE:Ljava/lang/Object;


# instance fields
.field private final classNamesToSkip:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[unknown source]"

    .line 30
    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->DEFAULT_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->classNamesToSkip:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-void
.end method

.method private static varargs asStrings([Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 50
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/StackTraceElement;
    .locals 6

    .line 60
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->classNamesToSkip:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-virtual {v5, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public varargs plusSkippedClasses([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;
    .locals 2

    .line 43
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->classNamesToSkip:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->asStrings([Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
