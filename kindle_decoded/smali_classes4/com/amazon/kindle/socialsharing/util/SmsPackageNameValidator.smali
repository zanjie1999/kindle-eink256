.class public Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;
.super Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;
.source "SmsPackageNameValidator.java"


# instance fields
.field protected final readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static getDefaultSmsAppPackageName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 1

    .line 36
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_default_application"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getValidPackageName()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledPackageNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->getValidPackageNameFromActivityNames(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValidPackageNameFromActivityNames(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;->getDefaultSmsAppPackageName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
