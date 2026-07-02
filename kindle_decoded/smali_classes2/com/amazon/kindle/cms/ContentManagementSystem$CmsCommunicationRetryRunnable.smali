.class abstract Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.super Ljava/lang/Object;
.source "ContentManagementSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CmsCommunicationRetryRunnable"
.end annotation


# instance fields
.field private taskDescription:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->taskDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method onCommunicationFailure(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V
    .locals 1

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->taskDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has failed talking to CMS. Will Retry "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentManagementSystem"

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->triggerAndWaitForConnection()V

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->execute()V
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 726
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v2

    .line 727
    sget-object v3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 730
    :cond_1
    sget-object v3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    if-ne v2, v3, :cond_0

    :cond_2
    const-string v2, "ContentManagementSystem"

    const-string v3, "Something other than connection error occured with CMS. We are exiting without retry. Bug it if you see this."

    .line 732
    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 729
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/CommunicationException;->getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->onCommunicationFailure(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    goto :goto_0

    :cond_4
    return-void
.end method
