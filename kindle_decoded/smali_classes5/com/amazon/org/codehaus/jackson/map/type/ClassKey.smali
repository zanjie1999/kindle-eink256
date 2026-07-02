.class public final Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;
.super Ljava/lang/Object;
.source "ClassKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
        ">;"
    }
.end annotation


# instance fields
.field private _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private _className:Ljava/lang/String;

.field private _hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;)I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->compareTo(Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    if-eq v2, v3, :cond_2

    return v1

    .line 78
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    .line 87
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    return v0
.end method

.method public reset(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    return-object v0
.end method
