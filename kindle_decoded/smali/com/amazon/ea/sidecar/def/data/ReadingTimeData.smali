.class public Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;
.super Ljava/lang/Object;
.source "ReadingTimeData.java"


# instance fields
.field public final formattedTime:Ljava/lang/String;

.field public final hours:I

.field public final minutes:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->hours:I

    .line 26
    iput p2, p0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->minutes:I

    .line 27
    iput-object p3, p0, Lcom/amazon/ea/sidecar/def/data/ReadingTimeData;->formattedTime:Ljava/lang/String;

    return-void
.end method
