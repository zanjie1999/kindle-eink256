.class public final Lcom/amazon/kindle/com/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;
.super Lcom/amazon/kindle/com/amazonaws/auth/AWSAbstractCognitoIdentityProvider;
.source "AWSEnhancedCognitoIdentityProvider.java"


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

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
