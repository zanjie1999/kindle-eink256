.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$SerializedForm;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_IMMUTABLE_LIST:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->EMPTY_IMMUTABLE_LIST:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;-><init>()V

    return-void
.end method

.method public static builder()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 609
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;-><init>()V

    return-object v0
.end method

.method private static varargs copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 533
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 535
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 539
    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 537
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 145
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-object p0

    .line 153
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 155
    check-cast p0, Ljava/util/Collection;

    .line 156
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOfInternal(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    return-object p0

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOfInternal(Ljava/util/ArrayList;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOfInternal(Ljava/util/ArrayList;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 574
    new-array v0, p1, [Ljava/lang/Object;

    .line 575
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/ArrayList;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->nullChecked([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static copyOfInternal(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 195
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->createFromIterable(Ljava/lang/Iterable;I)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static createFromIterable(Ljava/lang/Iterable;I)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;I)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 546
    new-array v0, p1, [Ljava/lang/Object;

    .line 549
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, p1, :cond_0

    .line 552
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x3

    .line 553
    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 558
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 556
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v2, :cond_3

    .line 562
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    return-object p0

    :cond_3
    if-eq v2, p1, :cond_4

    .line 566
    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 569
    :cond_4
    new-instance p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;IILcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-object p0
.end method

.method private static nullChecked([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 185
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 186
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->EMPTY_IMMUTABLE_LIST:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 124
    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 597
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 247
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 229
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract indexOf(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
.end method

.method public abstract iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract lastIndexOf(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 256
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 238
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract subList(II)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->subList(II)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 601
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
