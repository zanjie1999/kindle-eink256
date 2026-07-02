.class public Lcom/amazon/android/webkit/AmazonWebTimings;
.super Ljava/lang/Object;
.source "AmazonWebTimings.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final connectEnd:D

.field private final connectStart:D

.field private final domComplete:D

.field private final domContentLoadedEventEnd:D

.field private final domContentLoadedEventStart:D

.field private final domInteractive:D

.field private final domLoading:D

.field private final domainLookupEnd:D

.field private final domainLookupStart:D

.field private final fetchStart:D

.field private final loadEventEnd:D

.field private final loadEventStart:D

.field private final navigationStart:D

.field private final redirectCount:I

.field private final redirectEnd:D

.field private final redirectStart:D

.field private final requestStart:D

.field private final responseEnd:D

.field private final responseStart:D

.field private final unloadEventEnd:D


# direct methods
.method public constructor <init>(DDDDIDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 53
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->navigationStart:D

    move-wide v1, p3

    .line 54
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->unloadEventEnd:D

    move-wide v1, p5

    .line 55
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->redirectStart:D

    move-wide v1, p7

    .line 56
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->redirectEnd:D

    move v1, p9

    .line 57
    iput v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->redirectCount:I

    move-wide v1, p10

    .line 58
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->fetchStart:D

    move-wide v1, p12

    .line 59
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domainLookupStart:D

    move-wide/from16 v1, p14

    .line 60
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domainLookupEnd:D

    move-wide/from16 v1, p16

    .line 61
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->connectStart:D

    move-wide/from16 v1, p18

    .line 62
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->connectEnd:D

    move-wide/from16 v1, p20

    .line 63
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->requestStart:D

    move-wide/from16 v1, p22

    .line 64
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->responseStart:D

    move-wide/from16 v1, p24

    .line 65
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->responseEnd:D

    move-wide/from16 v1, p26

    .line 66
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domLoading:D

    move-wide/from16 v1, p28

    .line 67
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domInteractive:D

    move-wide/from16 v1, p30

    .line 68
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domContentLoadedEventStart:D

    move-wide/from16 v1, p32

    .line 69
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domContentLoadedEventEnd:D

    move-wide/from16 v1, p34

    .line 70
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->domComplete:D

    move-wide/from16 v1, p36

    .line 71
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->loadEventStart:D

    move-wide/from16 v1, p38

    .line 72
    iput-wide v1, v0, Lcom/amazon/android/webkit/AmazonWebTimings;->loadEventEnd:D

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/android/webkit/AmazonWebTimings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 157
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/webkit/AmazonWebTimings;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebTimings;->clone()Lcom/amazon/android/webkit/AmazonWebTimings;

    move-result-object v0

    return-object v0
.end method

.method public getConnectEnd()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->connectEnd:D

    return-wide v0
.end method

.method public getConnectStart()D
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->connectStart:D

    return-wide v0
.end method

.method public getDomComplete()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domComplete:D

    return-wide v0
.end method

.method public getDomContentLoadedEventEnd()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domContentLoadedEventEnd:D

    return-wide v0
.end method

.method public getDomContentLoadedEventStart()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domContentLoadedEventStart:D

    return-wide v0
.end method

.method public getDomInteractive()D
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domInteractive:D

    return-wide v0
.end method

.method public getDomLoading()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domLoading:D

    return-wide v0
.end method

.method public getDomainLookupEnd()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domainLookupEnd:D

    return-wide v0
.end method

.method public getDomainLookupStart()D
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->domainLookupStart:D

    return-wide v0
.end method

.method public getFetchStart()D
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->fetchStart:D

    return-wide v0
.end method

.method public getLoadEventEnd()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->loadEventEnd:D

    return-wide v0
.end method

.method public getLoadEventStart()D
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->loadEventStart:D

    return-wide v0
.end method

.method public getNavigationStart()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->navigationStart:D

    return-wide v0
.end method

.method public getRedirectCount()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->redirectCount:I

    return v0
.end method

.method public getRedirectEnd()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->redirectEnd:D

    return-wide v0
.end method

.method public getRedirectStart()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->redirectStart:D

    return-wide v0
.end method

.method public getRequestStart()D
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->requestStart:D

    return-wide v0
.end method

.method public getResponseEnd()D
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->responseEnd:D

    return-wide v0
.end method

.method public getResponseStart()D
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->responseStart:D

    return-wide v0
.end method

.method public getUnloadEventEnd()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/amazon/android/webkit/AmazonWebTimings;->unloadEventEnd:D

    return-wide v0
.end method
