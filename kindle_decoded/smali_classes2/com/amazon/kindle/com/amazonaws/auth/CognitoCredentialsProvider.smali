.class public Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;
.super Ljava/lang/Object;
.source "CognitoCredentialsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field protected authRoleArn:Ljava/lang/String;

.field private cib:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

.field protected credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected customRoleArn:Ljava/lang/String;

.field private final identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

.field protected refreshThreshold:I

.field private final region:Ljava/lang/String;

.field protected securityTokenService:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;

.field protected sessionCredentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

.field protected sessionCredentialsExpiration:Ljava/util/Date;

.field protected sessionDuration:I

.field protected token:Ljava/lang/String;

.field protected unauthRoleArn:Ljava/lang/String;

.field protected useEnhancedFlow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/regions/Regions;)V
    .locals 7

    .line 215
    new-instance v6, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-direct {v6}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/regions/Regions;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/regions/Regions;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 7

    .line 139
    invoke-static {p6, p5}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->createIdentityClient(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/regions/Regions;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    move-result-object v5

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    new-instance p5, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;

    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {p5, v0, p6}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    :goto_0
    move-object v6, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 138
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p5, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 270
    invoke-virtual {p5}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getRegions()Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    .line 271
    iput-object p6, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 273
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 274
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    const/16 p6, 0xe10

    .line 275
    iput p6, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    const/16 p6, 0x1f4

    .line 276
    iput p6, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    const/4 p6, 0x1

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 278
    :goto_0
    iput-boolean p3, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    if-eqz p3, :cond_1

    .line 281
    new-instance p3, Lcom/amazon/kindle/com/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;

    invoke-direct {p3, p1, p2, p5}, Lcom/amazon/kindle/com/amazonaws/auth/AWSEnhancedCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    goto :goto_1

    .line 285
    :cond_1
    new-instance p3, Lcom/amazon/kindle/com/amazonaws/auth/AWSBasicCognitoIdentityProvider;

    invoke-direct {p3, p1, p2, p5}, Lcom/amazon/kindle/com/amazonaws/auth/AWSBasicCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    .line 288
    :goto_1
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1, p6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private appendUserAgent(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 0

    .line 866
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method private static createIdentityClient(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;Lcom/amazon/kindle/com/amazonaws/regions/Regions;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;
    .locals 2

    .line 146
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V

    .line 147
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/regions/Region;->getRegion(Lcom/amazon/kindle/com/amazonaws/regions/Regions;)Lcom/amazon/kindle/com/amazonaws/regions/Region;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->setRegion(Lcom/amazon/kindle/com/amazonaws/regions/Region;)V

    return-object v0
.end method

.method private populateCredentialsWithCognito(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 768
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 770
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getLoginsKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    .line 775
    :goto_0
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 776
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withIdentityId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 777
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withLogins(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withCustomRoleArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->getCredentialsForIdentity(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 789
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidationException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->retryGetCredentialsForIdentity()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1

    goto :goto_1

    .line 793
    :cond_1
    throw p1

    .line 786
    :catch_1
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->retryGetCredentialsForIdentity()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object p1

    .line 798
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v0

    .line 799
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    .line 801
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->setSessionCredentialsExpiration(Ljava/util/Date;)V

    .line 803
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 804
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->getIdentityId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private populateCredentialsWithSts(Ljava/lang/String;)V
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->authRoleArn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->unauthRoleArn:Ljava/lang/String;

    .line 819
    :goto_0
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;-><init>()V

    .line 820
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withWebIdentityToken(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 821
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    const-string p1, "ProviderSession"

    .line 822
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withRoleSessionName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    iget p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionDuration:I

    .line 823
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;->withDurationSeconds(Ljava/lang/Integer;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;

    .line 824
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->appendUserAgent(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 825
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->securityTokenService:Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;

    .line 826
    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/AWSSecurityTokenService;->assumeRoleWithWebIdentity(Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;

    move-result-object p1

    .line 827
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;->getCredentials()Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;

    move-result-object p1

    .line 829
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;

    .line 830
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    .line 833
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/services/securitytoken/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->setSessionCredentialsExpiration(Ljava/util/Date;)V

    return-void
.end method

.method private retryGetCredentialsForIdentity()Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 3

    .line 741
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 746
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getLoginsKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    .line 751
    :goto_0
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    invoke-direct {v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;-><init>()V

    .line 752
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withIdentityId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 753
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withLogins(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->customRoleArn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;->withCustomRoleArn(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;

    .line 755
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->cib:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->getCredentialsForIdentity(Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v0

    return-object v0
.end method

.method private retryRefresh()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clearCredentials()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 660
    :try_start_0
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    .line 661
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 664
    throw v0
.end method

.method public bridge synthetic getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->startSession()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 470
    throw v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;->getLogins()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginsKey()Ljava/lang/String;
    .locals 2

    .line 725
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazon/kindle/com/amazonaws/regions/Regions;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cognito-identity.cn-north-1.amazonaws.com.cn"

    return-object v0

    :cond_0
    const-string v0, "cognito-identity.amazonaws.com"

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected needsNewSession()Z
    .locals 6

    .line 847
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 850
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 851
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->getGlobalTimeOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 852
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 854
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->refreshThreshold:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public refresh()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->startSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 634
    throw v0
.end method

.method public registerIdentityChangedListener(Lcom/amazon/kindle/com/amazonaws/auth/IdentityChangedListener;)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;->registerIdentityChangedListener(Lcom/amazon/kindle/com/amazonaws/auth/IdentityChangedListener;)V

    return-void
.end method

.method protected setIdentityId(Ljava/lang/String;)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;->identityChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setSessionCredentialsExpiration(Ljava/util/Date;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 436
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 439
    throw p1
.end method

.method protected startSession()V
    .locals 3

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->identityProvider:Lcom/amazon/kindle/com/amazonaws/auth/AWSCognitoIdentityProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/com/amazonaws/auth/AWSIdentityProvider;->refresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/kindle/com/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 685
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidationException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    goto :goto_0

    .line 689
    :cond_0
    throw v0

    .line 682
    :catch_1
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->retryRefresh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    .line 693
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->useEnhancedFlow:Z

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->populateCredentialsWithCognito(Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->token:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCredentialsProvider;->populateCredentialsWithSts(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
