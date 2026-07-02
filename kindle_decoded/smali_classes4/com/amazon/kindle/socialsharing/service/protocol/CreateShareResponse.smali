.class public Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;
.super Ljava/lang/Object;
.source "CreateShareResponse.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/service/IWithHeaders;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private metadata:Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;

.field private state:Lcom/amazon/kindle/socialsharing/service/protocol/State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->metadata:Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;

    return-object v0
.end method

.method public getState()Lcom/amazon/kindle/socialsharing/service/protocol/State;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->state:Lcom/amazon/kindle/socialsharing/service/protocol/State;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->headers:Ljava/util/Map;

    return-void
.end method
