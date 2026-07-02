.class public Lcom/amazon/org/codehaus/jackson/JsonParseException;
.super Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
.source "JsonParseException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method
