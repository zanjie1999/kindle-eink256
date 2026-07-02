.class public Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;
.super Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
.source "UnrecognizedPropertyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _referringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _unrecognizedPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/JsonLocation;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    .line 37
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_referringClass:Ljava/lang/Class;

    .line 38
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_unrecognizedPropertyName:Ljava/lang/String;

    return-void
.end method

.method public static from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;
    .locals 3

    if-eqz p1, :cond_1

    .line 47
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), not marked as ignorable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object p0

    invoke-direct {v2, v1, p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getReferringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_referringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUnrecognizedPropertyName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->_unrecognizedPropertyName:Ljava/lang/String;

    return-object v0
.end method
