.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;
.super Ljava/util/AbstractList;
.source "GraphObject.java"

# interfaces
.implements Lcom/facebook/model/GraphObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Lcom/facebook/model/GraphObjectList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final itemType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final state:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 710
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const-string v0, "state"

    .line 711
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    .line 712
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    iput-object p1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    .line 715
    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 825
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private put(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 830
    invoke-static {p2}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 834
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->put(ILjava/lang/Object;)V

    return-void

    .line 729
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Only adding items at the end of the list is supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 727
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lcom/facebook/model/GraphObjectList<",
            "TU;>;"
        }
    .end annotation

    .line 784
    const-class v0, Lcom/facebook/model/GraphObject;

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object p1

    return-object p1

    .line 793
    :cond_1
    new-instance p1, Lcom/facebook/FacebookGraphObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t cast GraphObjectCollection of non-GraphObject type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 805
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 755
    :cond_1
    const-class v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 759
    :cond_2
    check-cast p1, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    .line 760
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 766
    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->checkIndex(I)V

    .line 768
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 772
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getInnerJSONArray()Lorg/json/JSONArray;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 810
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 815
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 820
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 737
    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->checkIndex(I)V

    .line 739
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 740
    invoke-direct {p0, p1, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 720
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GraphObjectList{itemType=%s, state=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
