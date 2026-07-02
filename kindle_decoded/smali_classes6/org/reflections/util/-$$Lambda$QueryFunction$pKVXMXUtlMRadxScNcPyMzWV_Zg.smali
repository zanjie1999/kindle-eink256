.class public final synthetic Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/util/QueryFunction;

.field private final synthetic f$1:Ljava/lang/Class;

.field private final synthetic f$2:Ljava/util/Set;

.field private final synthetic f$3:[Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;Ljava/util/Set;[Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$0:Lorg/reflections/util/QueryFunction;

    iput-object p2, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$3:[Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$0:Lorg/reflections/util/QueryFunction;

    iget-object v1, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;->f$3:[Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/reflections/util/QueryFunction$-CC;->lambda$null$11(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;Ljava/util/Set;[Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
