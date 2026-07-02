.class Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;
.super Ljava/lang/Object;
.source "WeblabClientBase.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/WeblabClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;


# direct methods
.method private constructor <init>(Lcom/amazon/weblab/mobile/WeblabClientBase;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/weblab/mobile/WeblabClientBase;Lcom/amazon/weblab/mobile/WeblabClientBase$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;-><init>(Lcom/amazon/weblab/mobile/WeblabClientBase;)V

    return-void
.end method


# virtual methods
.method public notifyMismatchAllocation(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/weblab/mobile/WeblabClientBase;->access$100(Lcom/amazon/weblab/mobile/WeblabClientBase;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/amazon/weblab/mobile/model/MobileWeblabException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
