.class public abstract Lcom/amazon/org/codehaus/jackson/map/SerializerFactory$Config;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hasKeySerializers()Z
.end method

.method public abstract hasSerializerModifiers()Z
.end method

.method public abstract hasSerializers()Z
.end method

.method public abstract keySerializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation
.end method

.method public abstract serializerModifiers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanSerializerModifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract serializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation
.end method

.method public abstract withAdditionalKeySerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)Lcom/amazon/org/codehaus/jackson/map/SerializerFactory$Config;
.end method

.method public abstract withAdditionalSerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)Lcom/amazon/org/codehaus/jackson/map/SerializerFactory$Config;
.end method

.method public abstract withSerializerModifier(Lcom/amazon/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/amazon/org/codehaus/jackson/map/SerializerFactory$Config;
.end method
