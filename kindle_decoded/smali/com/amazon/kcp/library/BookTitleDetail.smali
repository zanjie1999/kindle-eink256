.class public final Lcom/amazon/kcp/library/BookTitleDetail;
.super Ljava/lang/Object;
.source "BookTitleDetail.kt"


# instance fields
.field private final level:Lcom/amazon/kcp/library/DetailLevel;

.field private final text:Ljava/lang/String;

.field private final type:Lcom/amazon/kcp/library/DetailType;


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kcp/library/BookTitleDetail;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/amazon/kcp/library/DetailType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kcp/library/BookTitleDetail;->type:Lcom/amazon/kcp/library/DetailType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookTitleDetail [level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookTitleDetail;->level:Lcom/amazon/kcp/library/DetailLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookTitleDetail;->type:Lcom/amazon/kcp/library/DetailType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookTitleDetail;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
