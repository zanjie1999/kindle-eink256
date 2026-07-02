.class public Lcom/amazon/kindle/com/amazonaws/auth/AWSBasicCognitoIdentityProvider;
.super Lcom/amazon/kindle/com/amazonaws/auth/AWSAbstractCognitoIdentityProvider;
.source "AWSBasicCognitoIdentityProvider.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method


# virtual methods
.method public refresh()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->setToken(Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
