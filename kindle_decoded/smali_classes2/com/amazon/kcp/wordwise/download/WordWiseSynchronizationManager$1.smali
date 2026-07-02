.class Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "WordWiseSynchronizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->downloadWordWiseSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final downloadStartTime:J

.field final synthetic this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field final synthetic val$tempName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$tempName:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$handler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    iput-object p5, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p6, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$guid:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$asin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->downloadStartTime:J

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;)J
    .locals 2

    .line 442
    iget-wide v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->downloadStartTime:J

    return-wide v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$tempName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 487
    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1$1;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;->val$url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
