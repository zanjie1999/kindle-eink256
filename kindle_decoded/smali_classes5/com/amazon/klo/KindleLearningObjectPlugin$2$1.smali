.class Lcom/amazon/klo/KindleLearningObjectPlugin$2$1;
.super Ljava/lang/Object;
.source "KindleLearningObjectPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin$2;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin$2;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/amazon/klo/KindleLearningObjectPlugin$2$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent:Z

    const/4 v0, 0x1

    .line 327
    sput-boolean v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresentCached:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 333
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->HIGH:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
