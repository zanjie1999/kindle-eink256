.class public Lcom/amazon/krf/platform/ContentDecoration;
.super Ljava/lang/Object;
.source "ContentDecoration.java"


# instance fields
.field private mPayload:Lcom/amazon/krf/platform/ContentDecorationPayload;

.field private mPositionRange:Lcom/amazon/krf/platform/PositionRange;

.field private mStyle:Lcom/amazon/krf/platform/ContentDecorationStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    .line 27
    iput-object p2, p0, Lcom/amazon/krf/platform/ContentDecoration;->mStyle:Lcom/amazon/krf/platform/ContentDecorationStyle;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;Lcom/amazon/krf/platform/ContentDecorationPayload;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    .line 39
    iput-object p2, p0, Lcom/amazon/krf/platform/ContentDecoration;->mStyle:Lcom/amazon/krf/platform/ContentDecorationStyle;

    .line 40
    iput-object p3, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPayload:Lcom/amazon/krf/platform/ContentDecorationPayload;

    return-void
.end method


# virtual methods
.method public getPayload()Lcom/amazon/krf/platform/ContentDecorationPayload;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPayload:Lcom/amazon/krf/platform/ContentDecorationPayload;

    return-object v0
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    return-object v0
.end method

.method public getStyle()Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/krf/platform/ContentDecoration;->mStyle:Lcom/amazon/krf/platform/ContentDecorationStyle;

    return-object v0
.end method

.method public setPayload(Lcom/amazon/krf/platform/ContentDecorationPayload;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPayload:Lcom/amazon/krf/platform/ContentDecorationPayload;

    return-void
.end method

.method public setPositionRange(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/krf/platform/ContentDecoration;->mPositionRange:Lcom/amazon/krf/platform/PositionRange;

    return-void
.end method

.method public setStyle(Lcom/amazon/krf/platform/ContentDecorationStyle;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/krf/platform/ContentDecoration;->mStyle:Lcom/amazon/krf/platform/ContentDecorationStyle;

    return-void
.end method
