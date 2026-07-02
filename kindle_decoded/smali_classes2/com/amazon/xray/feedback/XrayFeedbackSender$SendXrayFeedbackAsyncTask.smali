.class public Lcom/amazon/xray/feedback/XrayFeedbackSender$SendXrayFeedbackAsyncTask;
.super Ljava/lang/Object;
.source "XrayFeedbackSender.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/feedback/XrayFeedbackSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SendXrayFeedbackAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final message:Lcom/amazon/xray/model/message/XrayCustomerFeedback;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/message/XrayCustomerFeedback;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/xray/feedback/XrayFeedbackSender$SendXrayFeedbackAsyncTask;->message:Lcom/amazon/xray/model/message/XrayCustomerFeedback;

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

    .line 54
    invoke-virtual {p0}, Lcom/amazon/xray/feedback/XrayFeedbackSender$SendXrayFeedbackAsyncTask;->call()Ljava/lang/Void;

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

    .line 75
    iget-object v0, p0, Lcom/amazon/xray/feedback/XrayFeedbackSender$SendXrayFeedbackAsyncTask;->message:Lcom/amazon/xray/model/message/XrayCustomerFeedback;

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/MessagingUtil;->send(Lcom/amazon/xray/plugin/util/MessagingUtil$Message;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
