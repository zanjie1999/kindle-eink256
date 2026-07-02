.class public final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 56
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$2;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$2;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 311
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$9;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$9;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static emptyIterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->EMPTY_ITERATOR:Ljava/util/Iterator;

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    return-object v0
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;

    return-object v0
.end method

.method public static varargs forArray([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$6;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$6;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forArray([Ljava/lang/Object;II)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(Z)V

    add-int/2addr p2, p1

    .line 267
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkPositionIndexes(III)V

    .line 271
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$7;

    invoke-direct {v0, p1, p2, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$7;-><init>(II[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 135
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one element but was: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ", ..."

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, ">"

    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljava/util/Iterator;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TF;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TF;+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;-><init>(Ljava/util/Iterator;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$3;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$3;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
