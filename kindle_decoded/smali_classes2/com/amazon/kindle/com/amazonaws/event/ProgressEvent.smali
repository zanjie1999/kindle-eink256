.class public Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# instance fields
.field protected bytesTransferred:J

.field protected eventCode:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->bytesTransferred:J

    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->bytesTransferred:J

    return-wide v0
.end method

.method public getEventCode()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->eventCode:I

    return v0
.end method

.method public setEventCode(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->eventCode:I

    return-void
.end method
