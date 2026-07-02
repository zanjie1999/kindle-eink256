.class Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;
.super Ljava/lang/Object;
.source "MAPCustomerAttributeRepositoryImpl.java"

# interfaces
.implements Lcom/audible/mobile/identity/CustomerAttributeRepository$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->getAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

.field final synthetic val$builder:Ljava/lang/StringBuilder;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$directId:Ljava/lang/String;

.field final synthetic val$keyName:Ljava/lang/String;

.field final synthetic val$preferDefault:Z


# direct methods
.method constructor <init>(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;ZLjava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    iput-boolean p2, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$preferDefault:Z

    iput-object p3, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$builder:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$keyName:Ljava/lang/String;

    iput-object p6, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$directId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->this$0:Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    invoke-static {v0}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;->access$000(Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;)Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    iget-object v2, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$keyName:Ljava/lang/String;

    iget-object v3, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$directId:Ljava/lang/String;

    const-string v4, "Exception retrieving attribute {} for directId {}"

    invoke-interface {v0, v1, v4, v2, v3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 53
    iget-boolean v0, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$preferDefault:Z

    if-nez v0, :cond_0

    .line 54
    iget-object p2, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 56
    iget-object p1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
