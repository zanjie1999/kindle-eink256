.class public Lcom/amazon/kcp/info/brochure/BrochureAsset;
.super Ljava/lang/Object;
.source "BrochureAsset.java"


# instance fields
.field private brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brochureType"
    .end annotation
.end field

.field private pageAssets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/info/brochure/BrochurePageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/String;


# virtual methods
.method public getBrochureType()Lcom/amazon/kcp/info/brochure/BrochureType;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureType;->SimpleTextImage:Lcom/amazon/kcp/info/brochure/BrochureType;

    iput-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->brochureType:Lcom/amazon/kcp/info/brochure/BrochureType;

    return-object v0
.end method

.method public getPageAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/info/brochure/BrochurePageAsset;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->pageAssets:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrochureAsset{pageAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->pageAssets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureAsset;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brochureType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getBrochureType()Lcom/amazon/kcp/info/brochure/BrochureType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
