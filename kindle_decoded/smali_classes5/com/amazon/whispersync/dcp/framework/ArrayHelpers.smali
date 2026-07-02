.class public final Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;
.super Ljava/lang/Object;
.source "ArrayHelpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "[TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 14
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    invoke-static {p0, v1}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->makeArraySafely(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 22
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p0, v3}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->makeArraySafely(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 28
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 30
    aget-object v3, p1, v0

    array-length v3, v3

    .line 31
    aget-object v4, p1, v0

    invoke-static {v4, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private static makeArraySafely(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "[TT;>;I)[TT;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method
