.class Lcom/amazon/kcp/accounts/SignInHelper$1;
.super Ljava/lang/Object;
.source "SignInHelper.java"

# interfaces
.implements Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/accounts/SignInHelper;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$callback:Lcom/amazon/foundation/IStringCallback;

.field final synthetic val$extraOption:Landroid/os/Bundle;

.field final synthetic val$fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/accounts/SignInHelper;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/accounts/SignInHelper$1;->this$0:Lcom/amazon/kcp/accounts/SignInHelper;

    iput-object p2, p0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$extraOption:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$callback:Lcom/amazon/foundation/IStringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppConfigRequestComplete()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/accounts/SignInHelper$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/accounts/SignInHelper$1$1;-><init>(Lcom/amazon/kcp/accounts/SignInHelper$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
