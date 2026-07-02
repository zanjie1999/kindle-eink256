.class public Lcom/amazon/ea/purchase/model/BadgeInfo;
.super Ljava/lang/Object;
.source "BadgeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;
    }
.end annotation


# instance fields
.field private final darkStiker:Ljava/lang/String;

.field private final sticker:Ljava/lang/String;

.field private final yAxis:I


# direct methods
.method private constructor <init>(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->access$000(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo;->sticker:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->access$100(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo;->darkStiker:Ljava/lang/String;

    .line 28
    iget p1, p1, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->yAxis:I

    iput p1, p0, Lcom/amazon/ea/purchase/model/BadgeInfo;->yAxis:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;Lcom/amazon/ea/purchase/model/BadgeInfo$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/model/BadgeInfo;-><init>(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getDarkStiker()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo;->darkStiker:Ljava/lang/String;

    return-object v0
.end method

.method public getSticker()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo;->sticker:Ljava/lang/String;

    return-object v0
.end method

.method public getyAxis()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo;->yAxis:I

    return v0
.end method
