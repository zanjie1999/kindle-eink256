.class public final Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;
.super Landroid/os/AsyncTask;
.source "AuthenticationDebugMenuPage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "voids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;

    iget-object p1, p1, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;->access$getSdk$p(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.applicationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object p1

    const-string/jumbo v0, "sdk.applicationManager.deviceInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;

    iget-object v0, v0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetOAuthAccessTokenOption$1;->$textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
