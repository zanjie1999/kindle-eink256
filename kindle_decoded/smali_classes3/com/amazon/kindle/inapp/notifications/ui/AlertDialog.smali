.class public final Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;
.super Ljava/lang/Object;
.source "AlertDialog.kt"


# instance fields
.field private final alertBuilder:Landroid/app/AlertDialog$Builder;

.field private final alertDialog:Landroid/app/AlertDialog;

.field private final alertLayout:Landroid/view/View;

.field private final body:Ljava/lang/String;

.field private final bodyView:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private final primaryButton:Landroid/widget/Button;

.field private final secondaryButton:Landroid/widget/Button;

.field private final title:Ljava/lang/String;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->body:Ljava/lang/String;

    .line 29
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertBuilder:Landroid/app/AlertDialog$Builder;

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/inapp/notifications/R$layout;->alert_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertLayout:Landroid/view/View;

    .line 31
    sget p2, Lcom/amazon/kindle/inapp/notifications/R$id;->alert_dialog_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->titleView:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertLayout:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/inapp/notifications/R$id;->alert_dialog_body:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->bodyView:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertLayout:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/inapp/notifications/R$id;->alert_dialog_primary_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->primaryButton:Landroid/widget/Button;

    .line 34
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertLayout:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/inapp/notifications/R$id;->alert_dialog_secondary_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->secondaryButton:Landroid/widget/Button;

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertBuilder:Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    return-void

    .line 34
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic setButtonData$default(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->setButtonData(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public final setButtonData(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;)V
    .locals 2

    const-string v0, "primaryButtonData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->primaryButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->primaryButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_0

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->secondaryButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->secondaryButton:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->secondaryButton:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final show()V
    .locals 6

    .line 61
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    const-string v2, "alertDialog"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v3, "alertDialog.window"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/inapp/notifications/R$dimen;->alert_dialog_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 64
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 66
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/inapp/notifications/R$attr;->dim_value:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 67
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->bodyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->body:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 74
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
