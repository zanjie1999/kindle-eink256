.class public Lcom/amazon/krf/platform/KRFPosition;
.super Ljava/lang/Object;
.source "KRFPosition.java"

# interfaces
.implements Lcom/amazon/krf/platform/Position;


# instance fields
.field private mLongPosition:Ljava/lang/String;

.field private mShortPosition:J

.field private mX:D

.field private mY:D


# direct methods
.method constructor <init>(JLjava/lang/String;DD)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/amazon/krf/platform/KRFPosition;->mShortPosition:J

    .line 12
    iput-object p3, p0, Lcom/amazon/krf/platform/KRFPosition;->mLongPosition:Ljava/lang/String;

    .line 13
    iput-wide p4, p0, Lcom/amazon/krf/platform/KRFPosition;->mX:D

    .line 14
    iput-wide p6, p0, Lcom/amazon/krf/platform/KRFPosition;->mY:D

    return-void
.end method

.method private native compareToChecked(Lcom/amazon/krf/platform/KRFPosition;)I
.end method


# virtual methods
.method public compareTo(Lcom/amazon/krf/platform/Position;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    check-cast p1, Lcom/amazon/krf/platform/KRFPosition;

    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFPosition;->compareToChecked(Lcom/amazon/krf/platform/KRFPosition;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/amazon/krf/platform/Position;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFPosition;->compareTo(Lcom/amazon/krf/platform/Position;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 37
    instance-of v1, p1, Lcom/amazon/krf/platform/KRFPosition;

    if-eqz v1, :cond_0

    .line 38
    check-cast p1, Lcom/amazon/krf/platform/KRFPosition;

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFPosition;->compareTo(Lcom/amazon/krf/platform/Position;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLongPosition()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFPosition;->mLongPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getShortPosition()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPosition;->mShortPosition:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 5

    .line 56
    iget-wide v0, p0, Lcom/amazon/krf/platform/KRFPosition;->mShortPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
