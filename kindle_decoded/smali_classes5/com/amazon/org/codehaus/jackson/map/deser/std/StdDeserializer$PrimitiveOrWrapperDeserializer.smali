.class public abstract Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "PrimitiveOrWrapperDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final _nullValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 693
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 694
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;->_nullValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getNullValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method
