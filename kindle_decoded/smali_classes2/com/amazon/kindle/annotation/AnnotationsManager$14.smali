.class Lcom/amazon/kindle/annotation/AnnotationsManager$14;
.super Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;
.source "AnnotationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadReadingPositionAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field final synthetic val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

.field final synthetic val$model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

.field final synthetic val$positionType:Lcom/amazon/kindle/krx/sync/LPRSyncType;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p5, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    iput-object p6, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-object p7, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$positionType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    iput-object p8, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;-><init>(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 878
    invoke-super {p0}, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;->onRequestComplete()Z

    move-result v0

    .line 879
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->hasBeenPopulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v1, v2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$900(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;

    move-result-object v1

    .line 882
    iget-object v2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$positionType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;->updateServerReadingPosition(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    .line 884
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$positionType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v1, v2, :cond_0

    .line 885
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setFurthestPositionRead(I)V

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$14;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-eqz v1, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_1
    return v0
.end method
