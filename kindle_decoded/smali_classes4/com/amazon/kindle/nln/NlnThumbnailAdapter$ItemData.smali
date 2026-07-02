.class abstract Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;
.super Ljava/lang/Object;
.source "NlnThumbnailAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ItemData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;",
        ">;"
    }
.end annotation


# instance fields
.field relativeIndex:I

.field public type:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    .line 137
    iput p2, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;)I
    .locals 5

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, " - "

    const-string v2, "compareTo: KRF PAGES DO NOT FOLLOW POSITION ORDER!!!! "

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 153
    iget v4, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-ne v4, v3, :cond_0

    iget v3, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    iget v4, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    sub-int/2addr v3, v4

    mul-int v3, v3, v0

    if-gez v3, :cond_0

    .line 157
    sget-object v3, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    .line 161
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    iget v4, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    sub-int v4, v0, v4

    if-eqz v4, :cond_2

    return v4

    :cond_2
    if-ne v0, v3, :cond_3

    .line 167
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    iget v3, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    sub-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 131
    check-cast p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->compareTo(Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 180
    :cond_0
    instance-of v1, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 181
    check-cast p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;

    .line 182
    iget v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    iget v3, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-ne v1, v3, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->getPosition()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    .line 187
    :cond_1
    iget v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    iget v1, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "equals: KRF PAGES DO NOT FOLLOW POSITION ORDER!!!! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method public abstract getPosition()I
.end method

.method public hashCode()I
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->getPosition()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget v1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->type:I

    if-nez v0, :cond_0

    const-string v0, "HEADER"

    goto :goto_0

    :cond_0
    const-string v0, "PAGE"

    .line 211
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- pos: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->getPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;->relativeIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
