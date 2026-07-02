.class public final Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;
.super Ljava/lang/Object;
.source "KRXBadgeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;
    }
.end annotation


# instance fields
.field private final actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field private final altText:Ljava/lang/String;

.field private final badge:Ljava/lang/String;

.field private final conditional:Z

.field private final darkBadge:Ljava/lang/String;

.field private final darkMediaServicesPrefix:Ljava/lang/String;

.field private final darkSticker:Ljava/lang/String;

.field private final isHeadphones:Z

.field private final mediaServicesPrefix:Ljava/lang/String;

.field private final sticker:Ljava/lang/String;

.field private final yAxis:I


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$100(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->conditional:Z

    .line 215
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$200(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->badge:Ljava/lang/String;

    .line 216
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$300(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->isHeadphones:Z

    .line 217
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$400(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->yAxis:I

    .line 218
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$500(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->darkBadge:Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$600(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->altText:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$700(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->sticker:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$800(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->darkSticker:Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$900(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->mediaServicesPrefix:Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$1000(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->darkMediaServicesPrefix:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;->access$1100(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;-><init>(Lcom/amazon/kindle/krx/glide/KRXBadgeInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->actionProgram:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object v0
.end method

.method public getAltText()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public getBadge()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkBadge()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->darkBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkMediaServicesPrefix()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->darkMediaServicesPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkSticker()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->darkSticker:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaServicesPrefix()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->mediaServicesPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSticker()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->sticker:Ljava/lang/String;

    return-object v0
.end method

.method public getyAxis()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->yAxis:I

    return v0
.end method

.method public isConditional()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->conditional:Z

    return v0
.end method

.method public isHeadphones()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->isHeadphones:Z

    return v0
.end method
