.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;
.super Ljava/lang/Object;
.source "EnumResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final _enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected final _enumsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[TT;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 24
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 25
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    return-void
.end method

.method public static constructFor(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ET:",
            "Ljava/lang/Enum<",
            "TET;>;>(",
            "Ljava/lang/Class<",
            "TET;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "TET;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    if-eqz v0, :cond_1

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 40
    invoke-virtual {p1, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    invoke-direct {p1, p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No enum constants for class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static constructUnsafe(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;"
        }
    .end annotation

    .line 74
    invoke-static {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->constructFor(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object p0

    return-object p0
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;"
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->constructUsingToString(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object p0

    return-object p0
.end method

.method public static constructUsingToString(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ET:",
            "Ljava/lang/Enum<",
            "TET;>;>(",
            "Ljava/lang/Class<",
            "TET;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "TET;>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    array-length v2, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 57
    aget-object v3, v0, v2

    .line 58
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-object v2
.end method


# virtual methods
.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public getEnum(I)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public lastValidIndex()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
