.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
.super Ljava/lang/Object;
.source "WJWorkflowStateStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$Mutator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WJWorkflowStateStore"


# instance fields
.field private final mActiveSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoveredDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDiscoveryActive:Z

.field private final mLastWJResult:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Ljava/util/List;ZLjava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Ljava/util/List;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;",
            ">;Z",
            "Ljava/util/Map<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mLastWJResult:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    .line 49
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mDiscoveredDevices:Ljava/util/List;

    .line 50
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mActiveSessions:Ljava/util/Map;

    .line 51
    iput-boolean p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mIsDiscoveryActive:Z

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Active Sessions can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DiscoveredDevices can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Ljava/util/List;ZLjava/util/Map;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;Ljava/util/List;ZLjava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mLastWJResult:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mDiscoveredDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mActiveSessions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mIsDiscoveryActive:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getActiveSessions()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mActiveSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoveredDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mDiscoveredDevices:Ljava/util/List;

    return-object v0
.end method

.method public getLastWJResult()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mLastWJResult:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    return-object v0
.end method

.method public getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mActiveSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    return-object p1
.end method

.method public isDiscoveryActive()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mIsDiscoveryActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mLastWJResult:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    const-string v2, "mLastWJResult"

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mDiscoveredDevices:Ljava/util/List;

    const-string v2, "mDiscoveredDevices"

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mIsDiscoveryActive:Z

    const-string v2, "mIsDiscoveryActive"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->mActiveSessions:Ljava/util/Map;

    const-string v2, "mActiveSessions"

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 81
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
