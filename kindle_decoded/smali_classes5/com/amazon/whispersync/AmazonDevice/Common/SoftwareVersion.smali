.class public Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;
.super Ljava/lang/Object;
.source "SoftwareVersion.java"


# instance fields
.field private final mSoftwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 10
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->isValidVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->mSoftwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SoftwareVersion: constructed with invalid software version. Was not set."

    .line 26
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->mSoftwareVersion:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static isValidVersion(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "SoftwareVersion: isValidVersion: returning false because a null version was given."

    .line 37
    invoke-static {v1, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x25

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNumeric(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "SoftwareVersion: isValidVersion: returning false because version contains invalid characters (can only contain digits)"

    .line 50
    invoke-static {v1, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    return v2

    :cond_3
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "SoftwareVersion: isValidVersion: returning false because an invalid length was given (must be between 1 and 37 characters)."

    .line 43
    invoke-static {v1, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersion;->mSoftwareVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SoftwareVersion: isValid: returning false because a valid software version has not been set."

    .line 62
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
