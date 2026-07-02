.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowFailureUpdateHandler.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZeroTouchWorkflowFailureUpdateHandler"


# instance fields
.field private final mDebugMode:Z

.field private final mFailedAttemptsTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

.field private final mFailedDSSCallTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

.field private final mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/util/FireOSUtil;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;ZJJJJ)V
    .locals 8

    move-object v0, p0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 38
    iput-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    move v1, p3

    .line 39
    iput-boolean v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mDebugMode:Z

    .line 40
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;JJ)V

    iput-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mFailedAttemptsTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    .line 41
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    move-object v1, v7

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;JJ)V

    iput-object v7, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mFailedDSSCallTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mDebugMode:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Lcom/amazon/whisperjoin/util/FireOSUtil;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mFailedDSSCallTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->mFailedAttemptsTracker:Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
