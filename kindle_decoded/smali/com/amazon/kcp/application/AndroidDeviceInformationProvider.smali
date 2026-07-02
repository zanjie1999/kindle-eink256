.class public Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;
.super Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;
.source "AndroidDeviceInformationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDeviceInformationProvider;


# static fields
.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "Kindle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private resources:Landroid/content/res/Resources;

.field private security:Lcom/mobipocket/android/library/reader/AndroidSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/android/library/reader/AndroidSecurity;Lcom/amazon/kcp/application/IAmazonDeviceType;Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p3}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->security:Lcom/mobipocket/android/library/reader/AndroidSecurity;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device Type is set to \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" in AndroidDeviceInformationProvider"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeFromId(Ljava/lang/String;)Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->security:Lcom/mobipocket/android/library/reader/AndroidSecurity;

    invoke-virtual {v0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTypeId()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->security:Lcom/mobipocket/android/library/reader/AndroidSecurity;

    invoke-virtual {v0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getPID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
