.class public final Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;
.super Ljava/lang/Object;
.source "RequestValidationHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "[a-zA-z0-9]*"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "[0-9]*"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidDeviceSerialNumber(Ljava/lang/String;)Z
    .locals 2

    .line 32
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceSerialNumber: returning false because a null or empty device serial number was given."

    .line 34
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceSerialNumber: returning false because a non alpha numeric serial number was given."

    .line 41
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x33

    if-le p0, v0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceSerialNumber: returning false because a serial number that is too long (more than 51 characters) was given."

    .line 47
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidDeviceType(Ljava/lang/String;)Z
    .locals 2

    .line 14
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceType: returning false because a null or empty device type was given."

    .line 16
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isValidDeviceType: returning false because a non alpha numeric device type was given."

    .line 22
    invoke-static {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
