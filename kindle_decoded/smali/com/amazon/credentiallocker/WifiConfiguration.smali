.class public Lcom/amazon/credentiallocker/WifiConfiguration;
.super Lcom/amazon/credentiallocker/WifiNetworkInfo;
.source "WifiConfiguration.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private credentialConfiguration:Lcom/amazon/credentiallocker/CredentialConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.credentiallocker.WifiConfiguration"

    aput-object v2, v0, v1

    .line 18
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/credentiallocker/WifiConfiguration;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/credentiallocker/WifiNetworkInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 36
    instance-of v0, p1, Lcom/amazon/credentiallocker/WifiConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/credentiallocker/WifiConfiguration;

    .line 43
    invoke-super {p0, p1}, Lcom/amazon/credentiallocker/WifiNetworkInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/credentiallocker/WifiConfiguration;->credentialConfiguration:Lcom/amazon/credentiallocker/CredentialConfiguration;

    iget-object v0, v0, Lcom/amazon/credentiallocker/WifiConfiguration;->credentialConfiguration:Lcom/amazon/credentiallocker/CredentialConfiguration;

    .line 44
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCredentialConfiguration()Lcom/amazon/credentiallocker/CredentialConfiguration;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/credentiallocker/WifiConfiguration;->credentialConfiguration:Lcom/amazon/credentiallocker/CredentialConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-super {p0}, Lcom/amazon/credentiallocker/WifiNetworkInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/credentiallocker/WifiConfiguration;->classNameHashCode:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/credentiallocker/WifiConfiguration;->credentialConfiguration:Lcom/amazon/credentiallocker/CredentialConfiguration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCredentialConfiguration(Lcom/amazon/credentiallocker/CredentialConfiguration;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/credentiallocker/WifiConfiguration;->credentialConfiguration:Lcom/amazon/credentiallocker/CredentialConfiguration;

    return-void
.end method
