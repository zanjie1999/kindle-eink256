.class public abstract Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;
.super Ljava/lang/Object;
.source "JsonCallMetadata.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/webrpc/CallMetadata;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createObjectMapper()Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    return-object v0
.end method

.method public getDispatcher()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getResponseClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TResponseType;>;"
        }
    .end annotation
.end method

.method public needToReadResponseBody()Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;->getResponseClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
