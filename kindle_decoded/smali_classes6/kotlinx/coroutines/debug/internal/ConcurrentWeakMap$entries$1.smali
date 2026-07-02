.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConcurrentWeakMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getEntries()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;->INSTANCE:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
