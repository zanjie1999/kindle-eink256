.class Lcom/amazon/overlay/translation/states/FetchingTranslation$2;
.super Ljava/lang/Object;
.source "FetchingTranslation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/states/FetchingTranslation;->onComplete(Lcom/amazon/kcp/translation/service/TranslationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

.field final synthetic val$response:Lcom/amazon/kcp/translation/service/TranslationResponse;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/FetchingTranslation;Lcom/amazon/kcp/translation/service/TranslationResponse;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iput-object p2, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->val$response:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->val$response:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-virtual {v0}, Lcom/amazon/kcp/translation/service/TranslationResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iget-object v0, v0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/TranslationSuccess;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iget-object v2, v2, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->val$response:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-direct {v1, v2, v3}, Lcom/amazon/overlay/translation/states/TranslationSuccess;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/TranslationResponse;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iget-object v0, v0, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance v1, Lcom/amazon/overlay/translation/states/TranslationFail;

    iget-object v2, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    iget-object v2, v2, Lcom/amazon/overlay/translation/states/AbstractState;->m_stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    iget-object v3, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$2;->val$response:Lcom/amazon/kcp/translation/service/TranslationResponse;

    invoke-direct {v1, v2, v3}, Lcom/amazon/overlay/translation/states/TranslationFail;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;Lcom/amazon/kcp/translation/service/TranslationResponse;)V

    invoke-virtual {v0, v1}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    :goto_0
    return-void
.end method
