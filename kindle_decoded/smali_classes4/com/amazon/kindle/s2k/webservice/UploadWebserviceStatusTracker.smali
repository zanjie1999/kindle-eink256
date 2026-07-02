.class public Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;
.super Lcom/amazon/foundation/AbstractStatusTracker;
.source "UploadWebserviceStatusTracker.java"


# instance fields
.field private hasState:Z

.field private state:Ljava/lang/String;

.field private substate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/foundation/AbstractStatusTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubstate()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->substate:Ljava/lang/String;

    return-object v0
.end method

.method public hasState()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->hasState:Z

    return v0
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->state:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->substate:Ljava/lang/String;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->hasState:Z

    return-void
.end method
