.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Predicates$CompositionPredicate;,
        Lcom/google/common/base/Predicates$InPredicate;,
        Lcom/google/common/base/Predicates$IsEqualToPredicate;,
        Lcom/google/common/base/Predicates$AndPredicate;,
        Lcom/google/common/base/Predicates$NotPredicate;,
        Lcom/google/common/base/Predicates$ObjectPredicate;
    }
.end annotation


# static fields
.field private static final COMMA_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    .line 370
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method static synthetic access$800()Lcom/google/common/base/Joiner;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/common/base/Predicates;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method public static alwaysTrue()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public static and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/google/common/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/common/base/Predicate;

    invoke-static {p0, p1}, Lcom/google/common/base/Predicates;->asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method private static asList(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 709
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate<",
            "TB;>;",
            "Lcom/google/common/base/Function<",
            "TA;+TB;>;)",
            "Lcom/google/common/base/Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/google/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Predicates$CompositionPredicate;-><init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 162
    invoke-static {}, Lcom/google/common/base/Predicates;->isNull()Lcom/google/common/base/Predicate;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lcom/google/common/base/Predicates$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/google/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->IS_NULL:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public static not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate<",
            "TT;>;)",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/google/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$NotPredicate;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static notNull()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->NOT_NULL:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/Predicate;

    return-object v0
.end method
