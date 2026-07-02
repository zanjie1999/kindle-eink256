.class public Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;
.super Ljava/lang/Object;
.source "ResponseMetadata.java"


# instance fields
.field protected final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    const-string v1, "AWS_REQUEST_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
