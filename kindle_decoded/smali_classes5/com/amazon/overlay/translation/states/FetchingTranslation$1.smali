.class Lcom/amazon/overlay/translation/states/FetchingTranslation$1;
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


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/FetchingTranslation;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/states/AbstractState;->getUI()Lcom/amazon/overlay/translation/TranslationDialogUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/states/FetchingTranslation$1;->this$0:Lcom/amazon/overlay/translation/states/FetchingTranslation;

    invoke-virtual {v1}, Lcom/amazon/overlay/translation/states/AbstractState;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/oat/R$string;->error_message_connection:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
