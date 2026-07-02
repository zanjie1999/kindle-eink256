.class final Lcom/amazon/kindle/toast/DialogToast;
.super Ljava/lang/Object;
.source "KindleToast.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/KindleToast;


# instance fields
.field private final config:Lcom/amazon/kindle/toast/DialogToastConfig;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/toast/DialogToastConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    return-void
.end method


# virtual methods
.method public show()Lcom/amazon/kindle/toast/ToastDismissHandler;
    .locals 4

    .line 118
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/DialogToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/DialogToastConfig;->getButtonAction()Lcom/amazon/kindle/toast/KindleToastAction;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/DialogToastConfig;->getViewAction()Lcom/amazon/kindle/toast/KindleToastAction;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Lcom/amazon/kindle/toast/KindleToastAction;->actionText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/toast/DialogToast$show$1;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/toast/DialogToast$show$1;-><init>(Lcom/amazon/kindle/toast/KindleToastAction;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    if-eqz v1, :cond_2

    .line 129
    invoke-interface {v1}, Lcom/amazon/kindle/toast/KindleToastAction;->dismissText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/DialogToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->close:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "config.activity.getString(R.string.close)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :goto_1
    sget-object v2, Lcom/amazon/kindle/toast/DialogToast$show$2;->INSTANCE:Lcom/amazon/kindle/toast/DialogToast$show$2;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 134
    iget-object v1, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/DialogToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$layout;->kindle_toast_dialog_body:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    sget v2, Lcom/amazon/kindle/krl/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v3}, Lcom/amazon/kindle/toast/DialogToastConfig;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v3}, Lcom/amazon/kindle/toast/DialogToastConfig;->getMessageForAccessibility()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/amazon/kindle/toast/DialogToastDismissHandler;

    const-string v2, "dialog"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/amazon/kindle/toast/DialogToastDismissHandler;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    .line 144
    iget-object v2, p0, Lcom/amazon/kindle/toast/DialogToast;->config:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v2}, Lcom/amazon/kindle/toast/DialogToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-object v1

    .line 135
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
