.class public Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;
.super Ljava/lang/Object;
.source "KRXReturnOfferResponse.java"


# instance fields
.field private final error:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

.field private final link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

.field private final localizedMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/ReturnOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->localizedMessage:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->error:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    .line 26
    iput-object p3, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    return-void
.end method


# virtual methods
.method public getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->error:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    return-object v0
.end method

.method public getLink()Lcom/amazon/kindle/krx/glide/KRXGlideLink;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KRXReturnOfferResponse{localizedMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->localizedMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->error:Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
