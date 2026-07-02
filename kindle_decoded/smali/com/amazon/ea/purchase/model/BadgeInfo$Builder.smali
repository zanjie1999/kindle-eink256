.class public final Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;
.super Ljava/lang/Object;
.source "BadgeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/model/BadgeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private darkStiker:Ljava/lang/String;

.field private sticker:Ljava/lang/String;

.field protected yAxis:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->sticker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->darkStiker:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/ea/purchase/model/BadgeInfo;
    .locals 2

    .line 68
    new-instance v0, Lcom/amazon/ea/purchase/model/BadgeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/purchase/model/BadgeInfo;-><init>(Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;Lcom/amazon/ea/purchase/model/BadgeInfo$1;)V

    return-object v0
.end method

.method public setDarkSticker(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->darkStiker:Ljava/lang/String;

    return-object p0
.end method

.method public setSticker(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->sticker:Ljava/lang/String;

    return-object p0
.end method

.method public setyAxis(I)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;
    .locals 0

    .line 63
    iput p1, p0, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->yAxis:I

    return-object p0
.end method
