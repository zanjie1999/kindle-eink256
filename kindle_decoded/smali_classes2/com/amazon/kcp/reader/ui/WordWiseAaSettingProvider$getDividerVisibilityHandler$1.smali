.class final Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WordWiseAaSettingProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getDividerVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $model:Lcom/amazon/kcp/reader/ui/WordWiseModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;->$model:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;->$model:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getWordWiseState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;->$context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_state_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
