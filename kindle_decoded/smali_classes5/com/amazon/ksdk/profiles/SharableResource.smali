.class public final Lcom/amazon/ksdk/profiles/SharableResource;
.super Ljava/lang/Object;
.source "SharableResource.java"


# instance fields
.field final mAsin:Ljava/lang/String;

.field final mType:Lcom/amazon/ksdk/profiles/SharableType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/ksdk/profiles/SharableType;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/ksdk/profiles/SharableResource;->mAsin:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amazon/ksdk/profiles/SharableResource;->mType:Lcom/amazon/ksdk/profiles/SharableType;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/SharableResource;->mAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/ksdk/profiles/SharableType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/SharableResource;->mType:Lcom/amazon/ksdk/profiles/SharableType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharableResource{mAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/SharableResource;->mAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/SharableResource;->mType:Lcom/amazon/ksdk/profiles/SharableType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
