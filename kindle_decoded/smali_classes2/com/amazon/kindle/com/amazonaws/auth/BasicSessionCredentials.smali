.class public Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;
.super Ljava/lang/Object;
.source "BasicSessionCredentials.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSSessionCredentials;


# instance fields
.field private final awsAccessKey:Ljava/lang/String;

.field private final awsSecretKey:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;->awsAccessKey:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;->awsSecretKey:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;->sessionToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;->awsAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;->awsSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/BasicSessionCredentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method
