.class public final Lcom/amazon/kindle/setting/provider/RegistrationSettingItemProvider$createSignInItem$1;
.super Ljava/lang/Object;
.source "RegistrationHandlerSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/RegistrationSettingItemProvider;->createSignInItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/trial/TrialModeSignInActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lcom/amazon/kindle/trial/TrialModeMetricsManager;->getInstance()Lcom/amazon/kindle/trial/TrialModeMetrics;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/trial/SignInLocation;->MORE_TAB:Lcom/amazon/kindle/trial/SignInLocation;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/trial/TrialModeMetrics;->customerRequestedSignIn(Lcom/amazon/kindle/trial/SignInLocation;)V

    return-void
.end method
