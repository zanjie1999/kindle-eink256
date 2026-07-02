.class public Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;
.super Ljava/lang/Object;
.source "WordWiseDownloadStatusEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private asinForSidecar:Ljava/lang/String;

.field private errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private type:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;-><init>(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->type:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 39
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->asinForSidecar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsinForSidecar()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->asinForSidecar:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/wordwise/download/DownloadStatusType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;->type:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
