.class Lcom/amazon/overlay/translation/states/FetchingSpeak$1;
.super Ljava/lang/Object;
.source "FetchingSpeak.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/states/FetchingSpeak;->onComplete(Lcom/amazon/kcp/translation/service/SpeakResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/states/FetchingSpeak;

.field final synthetic val$response:Lcom/amazon/kcp/translation/service/SpeakResponse;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/FetchingSpeak;Lcom/amazon/kcp/translation/service/SpeakResponse;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iput-object p2, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->val$response:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->val$response:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/SpeakResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iget-object v0, v0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/SpeakSuccess;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iget-object v2, v2, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->val$response:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-direct {v1, v2, v3}, Lcom/amazon/overlay/translation/states/SpeakSuccess;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/SpeakResponse;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iget-object v0, v0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/SpeakFail;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iget-object v2, v2, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/FetchingSpeak$1;->val$response:Lcom/amazon/kcp/translation/service/SpeakResponse;

    invoke-direct {v1, v2, v3}, Lcom/amazon/overlay/translation/states/SpeakFail;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/SpeakResponse;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    :goto_0
    return-void
.end method
