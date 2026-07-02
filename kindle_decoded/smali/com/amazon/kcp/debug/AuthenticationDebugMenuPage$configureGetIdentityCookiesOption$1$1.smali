.class public final Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1$1;
.super Landroid/os/AsyncTask;
.source "AuthenticationDebugMenuPage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;->onClick(Landroid/view/View;)V
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
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1$1;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "voids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;

    iget-object p1, p1, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage;

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

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getIdentityCookies()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1$1;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 10

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1$1;->this$0:Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;

    iget-object v0, v0, Lcom/amazon/kcp/debug/AuthenticationDebugMenuPage$configureGetIdentityCookiesOption$1;->$textView:Landroid/widget/TextView;

    const-string v2, " ;"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
