.class final Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimateTransitionsSettingView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;->$context:Landroid/content/Context;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(ILjava/lang/String;Z)Landroid/widget/TextView;
    .locals 4

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_setting_seekbar_button:I

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 60
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    or-int/lit8 p1, p1, 0x10

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$createButton$1;->invoke(ILjava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method
