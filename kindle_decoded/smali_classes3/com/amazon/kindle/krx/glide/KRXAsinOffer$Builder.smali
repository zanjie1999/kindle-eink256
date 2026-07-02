.class public final Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
.super Ljava/lang/Object;
.source "KRXAsinOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field private actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

.field private asin:Ljava/lang/String;

.field private conditional:Z

.field private csrfToken:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private displayablePrice:Ljava/lang/String;

.field private offerId:Ljava/lang/String;

.field private price:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->asin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->csrfToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->offerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->conditional:Z

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/math/BigDecimal;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->price:Ljava/math/BigDecimal;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->displayablePrice:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 2

    .line 193
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;-><init>(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;Lcom/amazon/kindle/krx/glide/KRXAsinOffer$1;)V

    return-object v0
.end method

.method public setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method public setActionType(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->actionType:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0
.end method

.method public setAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->asin:Ljava/lang/String;

    return-object p0
.end method

.method public setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->conditional:Z

    return-object p0
.end method

.method public setCsrfToken(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->csrfToken:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayablePrice(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->displayablePrice:Ljava/lang/String;

    return-object p0
.end method

.method public setOfferId(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->offerId:Ljava/lang/String;

    return-object p0
.end method

.method public setPrice(Ljava/math/BigDecimal;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$Builder;->price:Ljava/math/BigDecimal;

    return-object p0
.end method
