.class Lcom/amazon/kcp/accounts/SignInHelper$2;
.super Ljava/lang/Object;
.source "SignInHelper.java"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/accounts/SignInHelper;->showWebViewSigninAfterAppConfig(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/accounts/SignInHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/accounts/SignInHelper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/accounts/SignInHelper$2;->this$0:Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/accounts/SignInHelper$2;->this$0:Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-static {v0, p1}, Lcom/amazon/kcp/accounts/SignInHelper;->access$102(Lcom/amazon/kcp/accounts/SignInHelper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
