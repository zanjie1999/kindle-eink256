.class Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;
.super Ljava/lang/Object;
.source "FFSArcusClient.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;

.field final synthetic val$singleEmitter:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationModified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
    .locals 6

    .line 63
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationModified"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;ZJ)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConfigurationUnmodified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
    .locals 6

    .line 72
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationUnmodified"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;ZJ)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 81
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFailure"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onThrottle(J)V
    .locals 3

    .line 90
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onThrottle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;

    invoke-direct {v1, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/ArcusSyncThrottled;-><init>(J)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
