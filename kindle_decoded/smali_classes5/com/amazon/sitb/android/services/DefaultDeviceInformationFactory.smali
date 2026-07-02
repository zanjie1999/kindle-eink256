.class public Lcom/amazon/sitb/android/services/DefaultDeviceInformationFactory;
.super Ljava/lang/Object;
.source "DefaultDeviceInformationFactory.java"

# interfaces
.implements Lcom/amazon/sitb/android/services/DeviceInformationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 0

    .line 15
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object p1

    return-object p1
.end method
