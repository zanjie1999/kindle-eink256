.class public final Lcom/amazon/kcp/application/FatalErrorActivity;
.super Landroid/app/Activity;
.source "FatalErrorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/FatalErrorActivity$Companion;
    }
.end annotation


# static fields
.field public static final BODY_MESSAGE:Ljava/lang/String; = "BODY_MESSAGE"

.field public static final Companion:Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

.field public static final TITLE_MESSAGE:Ljava/lang/String; = "TITLE_MESSAGE"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/FatalErrorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/application/FatalErrorActivity;->Companion:Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final showFatalErrorActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/amazon/kcp/application/FatalErrorActivity;->Companion:Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/kcp/application/FatalErrorActivity$Companion;->showFatalErrorActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final showMissingResourceErrorActivity(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/amazon/kcp/application/FatalErrorActivity;->Companion:Lcom/amazon/kcp/application/FatalErrorActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/FatalErrorActivity$Companion;->showMissingResourceErrorActivity(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/application/FatalErrorActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kcp/application/FatalErrorActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/FatalErrorActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/FatalErrorActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/FatalErrorActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TITLE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BODY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 34
    sget v0, Lcom/amazon/kindle/krl/R$string;->fatal_screen_button:I

    sget-object v1, Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;->INSTANCE:Lcom/amazon/kcp/application/FatalErrorActivity$onCreate$dialog$1$1;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "dialog"

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
