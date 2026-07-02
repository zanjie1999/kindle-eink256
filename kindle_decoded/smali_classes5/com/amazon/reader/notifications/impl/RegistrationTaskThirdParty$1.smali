.class Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;
.super Ljava/lang/Object;
.source "RegistrationTaskThirdParty.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;

.field final synthetic val$startSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;->this$0:Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;

    iput-object p2, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;->val$startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Fetching FCM registration token failed"

    invoke-static {v0, v1, p1}, Lcom/amazon/reader/notifications/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;->val$startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;->this$0:Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->access$102(Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got token from FCM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;->this$0:Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;

    invoke-static {v1}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->access$100(Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "going to unblock thread!"

    invoke-static {p1, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;->val$startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
