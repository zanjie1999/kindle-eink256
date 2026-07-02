.class public Lcom/amazon/reader/notifications/message/DealValidPeriod;
.super Ljava/lang/Object;
.source "DealValidPeriod.java"


# instance fields
.field private dealEndTime:J

.field private dealStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDealEndTime()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/amazon/reader/notifications/message/DealValidPeriod;->dealEndTime:J

    return-wide v0
.end method

.method public getDealStartTime()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/amazon/reader/notifications/message/DealValidPeriod;->dealStartTime:J

    return-wide v0
.end method

.method public setDealEndTime(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/amazon/reader/notifications/message/DealValidPeriod;->dealEndTime:J

    return-void
.end method

.method public setDealStartTime(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/amazon/reader/notifications/message/DealValidPeriod;->dealStartTime:J

    return-void
.end method
