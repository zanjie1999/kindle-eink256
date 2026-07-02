.class public final Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
.super Ljava/lang/Object;
.source "KRXBadgeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field private altText:Ljava/lang/String;

.field private badge:Ljava/lang/String;

.field private conditional:Z

.field private darkBadge:Ljava/lang/String;

.field private darkMediaServicesPrefix:Ljava/lang/String;

.field private darkSticker:Ljava/lang/String;

.field private isHeadphones:Z

.field private mediaServicesPrefix:Ljava/lang/String;

.field private sticker:Ljava/lang/String;

.field private yAxis:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->conditional:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->darkMediaServicesPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->badge:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->isHeadphones:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->yAxis:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->darkBadge:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->altText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->sticker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->darkSticker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->mediaServicesPrefix:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;
    .locals 2

    .line 208
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;-><init>(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$1;)V

    return-object v0
.end method

.method public setActionProgram(Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method public setAltText(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->altText:Ljava/lang/String;

    return-object p0
.end method

.method public setBadge(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->badge:Ljava/lang/String;

    return-object p0
.end method

.method public setConditional(Z)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->conditional:Z

    return-object p0
.end method

.method public setDarkBadge(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->darkBadge:Ljava/lang/String;

    return-object p0
.end method

.method public setDarkMediaServicesPrefix(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->darkMediaServicesPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setDarkSticker(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->darkSticker:Ljava/lang/String;

    return-object p0
.end method

.method public setIsHeadphones(Z)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->isHeadphones:Z

    return-object p0
.end method

.method public setMediaServicesPrefix(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->mediaServicesPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setSticker(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->sticker:Ljava/lang/String;

    return-object p0
.end method

.method public setYAxis(I)Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    .locals 0

    .line 106
    iput p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->yAxis:I

    return-object p0
.end method
