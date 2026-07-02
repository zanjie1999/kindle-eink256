.class public Lcom/amazon/versioning/service/KCUPSHandler;
.super Ljava/lang/Object;
.source "KCUPSHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public placeGetUpdateSettingsCallWithListener(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
            "Lcom/amazon/versioning/data/UpdateSetting;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;

    invoke-direct {v0, p1}, Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;-><init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V

    .line 22
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    .line 23
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method

.method public placeGetUpdateStatusCallWithListener(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
            "Lcom/amazon/versioning/data/UpdatedContentItemLibrary;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;

    invoke-direct {v0, p1, p2}, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;-><init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    .line 48
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method

.method public placePostUpdateSettingCallWithListener(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
            "Lcom/amazon/versioning/data/UpdateSetting;",
            ">;",
            "Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;",
            ")V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;

    invoke-direct {v0, p1, p2}, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;-><init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    .line 36
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    .line 37
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method
