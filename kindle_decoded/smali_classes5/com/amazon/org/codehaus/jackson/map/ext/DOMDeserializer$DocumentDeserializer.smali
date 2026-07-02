.class public Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer$DocumentDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer;
.source "DOMDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    const-class v0, Lorg/w3c/dom/Document;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer$DocumentDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ext/DOMDeserializer;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method
