.class Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;
.super Ljava/lang/Object;
.source "TranslationCallbacks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->showPromptWANWarning(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;Landroid/widget/CheckBox;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;->this$0:Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;

    iput-object p2, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 85
    invoke-static {p1}, Lcom/amazon/overlay/translation/states/TranslationCallbacks;->access$002(Z)Z

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;->this$0:Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;

    iget-object p1, p1, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    new-instance p2, Lcom/amazon/overlay/translation/states/FetchingSpeak;

    iget-object v0, p0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$2;->this$0:Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;

    iget-object v0, v0, Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->val$stateMachine:Lcom/amazon/overlay/translation/states/TranslationStateMachine;

    invoke-direct {p2, v0}, Lcom/amazon/overlay/translation/states/FetchingSpeak;-><init>(Lcom/amazon/overlay/translation/states/TranslationStateMachine;)V

    invoke-virtual {p1, p2}, Lcom/amazon/overlay/translation/states/TranslationStateMachine;->transitionTo(Lcom/amazon/overlay/translation/states/AbstractState;)V

    return-void
.end method
