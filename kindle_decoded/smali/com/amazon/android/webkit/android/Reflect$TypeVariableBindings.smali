.class Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/android/Reflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeVariableBindings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;
    }
.end annotation


# instance fields
.field private final bindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/webkit/android/Reflect$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;

    .line 63
    invoke-virtual {v1}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->getKey()Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->getValue()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public pop(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 86
    iget-object p1, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-lt p1, v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/reflect/TypeVariable;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->bindings:Ljava/util/List;

    new-instance v1, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;

    invoke-direct {v1, p1, p2}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;-><init>(Ljava/lang/reflect/TypeVariable;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolve(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 74
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 76
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 77
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;->get(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
