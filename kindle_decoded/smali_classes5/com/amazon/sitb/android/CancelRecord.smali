.class public Lcom/amazon/sitb/android/CancelRecord;
.super Ljava/lang/Object;
.source "CancelRecord.java"


# instance fields
.field private timeCached:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/sitb/android/CancelRecord;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/amazon/sitb/android/CancelRecord;->timeCached:J

    return-void
.end method


# virtual methods
.method public getTimeCached()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/amazon/sitb/android/CancelRecord;->timeCached:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timeCached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/sitb/android/CancelRecord;->timeCached:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
