.class public Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
.super Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
.source "JsonGenerationException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
