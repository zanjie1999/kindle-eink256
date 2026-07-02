.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/RuntimeJsonMappingException;
.super Ljava/lang/RuntimeException;
.source "RuntimeJsonMappingException.java"


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
