.class public Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;
.super Ljava/lang/Object;
.source "RequestStatusEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;
    }
.end annotation


# instance fields
.field private status:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field private type:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->type:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    .line 41
    iput-object p2, p0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->status:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->status:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object v0
.end method

.method public getType()Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;->type:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
