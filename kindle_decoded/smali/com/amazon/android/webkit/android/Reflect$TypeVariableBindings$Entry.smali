.class Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;
.super Ljava/lang/Object;
.source "Reflect.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/reflect/TypeVariable<",
        "*>;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->key:Ljava/lang/reflect/TypeVariable;

    .line 33
    iput-object p2, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->value:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->getKey()Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->key:Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->value:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->getValue()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/android/Reflect$TypeVariableBindings$Entry;->setValue(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
