.class public Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;
.super Ljava/lang/Object;
.source "AmazonDocumentLoadTimes.java"


# instance fields
.field private final commitLoadTime:D

.field private final finishDocumentLoadTime:D

.field private final finishLoadTime:D

.field private final firstPaintAfterLoadTime:D

.field private final firstPaintTime:D

.field private final navigationType:Ljava/lang/String;

.field private final npnNegotiatedProtocol:Ljava/lang/String;

.field private final requestTime:D

.field private final startLoadTime:D

.field private final wasAlternateProtocolAvailable:Z

.field private final wasFetchedViaSpdy:Z

.field private final wasNpnNegotiated:Z


# direct methods
.method public constructor <init>(DDDDDDDLjava/lang/String;ZZLjava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 36
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->requestTime:D

    move-wide v1, p3

    .line 37
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->startLoadTime:D

    move-wide v1, p5

    .line 38
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->commitLoadTime:D

    move-wide v1, p7

    .line 39
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->finishDocumentLoadTime:D

    move-wide v1, p9

    .line 40
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->finishLoadTime:D

    move-wide v1, p11

    .line 41
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->firstPaintTime:D

    move-wide/from16 v1, p13

    .line 42
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->firstPaintAfterLoadTime:D

    move-object/from16 v1, p15

    .line 43
    iput-object v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->navigationType:Ljava/lang/String;

    move/from16 v1, p16

    .line 44
    iput-boolean v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->wasFetchedViaSpdy:Z

    move/from16 v1, p17

    .line 45
    iput-boolean v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->wasNpnNegotiated:Z

    move-object/from16 v1, p18

    .line 46
    iput-object v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->npnNegotiatedProtocol:Ljava/lang/String;

    move/from16 v1, p19

    .line 47
    iput-boolean v1, v0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->wasAlternateProtocolAvailable:Z

    return-void
.end method


# virtual methods
.method public getCommitLoadTime()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->commitLoadTime:D

    return-wide v0
.end method

.method public getFinishDocumentLoadTime()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->finishDocumentLoadTime:D

    return-wide v0
.end method

.method public getFinishLoadTime()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->finishLoadTime:D

    return-wide v0
.end method

.method public getFirstPaintAfterLoadTime()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->firstPaintAfterLoadTime:D

    return-wide v0
.end method

.method public getFirstPaintTime()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->firstPaintTime:D

    return-wide v0
.end method

.method public getNavigationType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->navigationType:Ljava/lang/String;

    return-object v0
.end method

.method public getNegociationProtocol()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->npnNegotiatedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->requestTime:D

    return-wide v0
.end method

.method public getStartLoadTime()D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->startLoadTime:D

    return-wide v0
.end method

.method public getWasAlternateProtocolAvailable()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->wasAlternateProtocolAvailable:Z

    return v0
.end method

.method public getWasFetchedViaSpdy()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->wasFetchedViaSpdy:Z

    return v0
.end method

.method public getWasNpnNegociated()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;->wasNpnNegotiated:Z

    return v0
.end method
