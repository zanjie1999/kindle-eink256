.class final Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$1;
.super Ljava/lang/Object;
.source "AwsSdkMetrics.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->setCredentialFile0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cred:Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$1;->val$cred:Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics$1;->val$cred:Lcom/amazon/kindle/com/amazonaws/auth/PropertiesCredentials;

    return-object v0
.end method
