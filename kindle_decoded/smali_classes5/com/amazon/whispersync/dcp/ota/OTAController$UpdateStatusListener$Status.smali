.class public final Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;
.super Ljava/lang/Object;
.source "OTAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# instance fields
.field private final mDownloadProgress:F

.field private final mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field private final mManifest:Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

.field private final mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/UpdateState;Lcom/amazon/whispersync/dcp/ota/OTAFailure;F)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mManifest:Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 72
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    .line 73
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 74
    iput p4, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mDownloadProgress:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/UpdateState;Lcom/amazon/whispersync/dcp/ota/OTAFailure;FLcom/amazon/whispersync/dcp/ota/OTAController$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;-><init>(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;Lcom/amazon/whispersync/dcp/ota/UpdateState;Lcom/amazon/whispersync/dcp/ota/OTAFailure;F)V

    return-void
.end method


# virtual methods
.method public getDownloadProgress()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mDownloadProgress:F

    return v0
.end method

.method public getFailure()Lcom/amazon/whispersync/dcp/ota/OTAFailure;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    return-object v0
.end method

.method public getManifest()Lcom/amazon/whispersync/dcp/ota/UpdateManifest;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mManifest:Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    return-object v0
.end method

.method public getState()Lcom/amazon/whispersync/dcp/ota/UpdateState;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAController$UpdateStatusListener$Status;->mState:Lcom/amazon/whispersync/dcp/ota/UpdateState;

    return-object v0
.end method
