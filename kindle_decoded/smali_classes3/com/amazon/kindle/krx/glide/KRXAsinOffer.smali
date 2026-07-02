.class public final Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
.super Ljava/lang/Object;
.source "KRXAsinOffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;,
        Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;,
        Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    }
.end annotation


# instance fields
.field private final actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field private final actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

.field private final asin:Ljava/lang/String;

.field private final conditional:Z

.field private final csrfToken:Ljava/lang/String;

.field private final currency:Ljava/lang/String;

.field private final displayablePrice:Ljava/lang/String;

.field private final offerId:Ljava/lang/String;

.field private final price:Ljava/math/BigDecimal;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$100(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->asin:Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$200(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->csrfToken:Ljava/lang/String;

    .line 201
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$300(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->offerId:Ljava/lang/String;

    .line 202
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$400(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    .line 203
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$500(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    .line 204
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$600(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->conditional:Z

    .line 205
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$700(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->price:Ljava/math/BigDecimal;

    .line 206
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$800(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->currency:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->access$900(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->displayablePrice:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;Lcom/amazon/kindle/krx/glide/KRXAsinOffer$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;-><init>(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object v0
.end method

.method public getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getCsrfToken()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->csrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayablePrice()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->displayablePrice:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->price:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public isConditional()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->conditional:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KRXAsinOffer{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "asin=\'"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", csrfToken=\'"

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->csrfToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offerId=\'"

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->offerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionProgram="

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actionType="

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conditional="

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->conditional:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", displayablePrice="

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->displayablePrice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", price="

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->price:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currency=\'"

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->currency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
