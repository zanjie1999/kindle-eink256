.class public Lcom/amazon/reader/notifications/message/ActivePeriod;
.super Ljava/lang/Object;
.source "ActivePeriod.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/ActivePeriod;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/ActivePeriod;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/ActivePeriod;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/ActivePeriod;->startTime:Ljava/lang/String;

    return-void
.end method
