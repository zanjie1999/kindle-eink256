.class public final Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatusChecker;
.super Ljava/lang/Object;
.source "CredentialStatusChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResponse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;
    .locals 3

    .line 14
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusOK:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    .line 16
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatusChecker;->getErrorText(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatusChecker;->getWarningText(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "invalid_credentials"

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusInvalid:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    goto :goto_0

    :cond_0
    const-string v2, "expired_credentials"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusInvalid:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "stale_credentials"

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusStale:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 35
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusUnknownError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 39
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;->CredentialStatusUnknownWarning:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getErrorText(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Ljava/lang/String;
    .locals 1

    const-string v0, "X-ADP-Error"

    .line 47
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWarningText(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Ljava/lang/String;
    .locals 1

    const-string v0, "X-ADP-Warn"

    .line 52
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
