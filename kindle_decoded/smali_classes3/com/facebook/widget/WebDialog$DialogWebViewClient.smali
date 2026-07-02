.class Lcom/facebook/widget/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 443
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 452
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 453
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookSDK.WebDialog"

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 436
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v0, Lcom/facebook/FacebookDialogException;

    invoke-direct {v0, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 416
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/widget/WebDialog;->dismiss()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 424
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 426
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance p3, Lcom/facebook/FacebookDialogException;

    const/4 v0, 0x0

    const/16 v1, -0xb

    invoke-direct {p3, v0, v1, v0}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p1, p3}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 427
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 428
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/widget/WebDialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirect URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacebookSDK.WebDialog"

    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fbconnect://success"

    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 364
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 366
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "error_type"

    .line 368
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, "error_msg"

    .line 371
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "error_description"

    .line 373
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "error_code"

    .line 375
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_2

    .line 379
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v2, -0x1

    .line 385
    :goto_0
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v2, v4, :cond_3

    .line 387
    iget-object p2, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p2, p1}, Lcom/facebook/widget/WebDialog;->access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    const-string p1, "access_denied"

    .line 388
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "OAuthAccessDeniedException"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 390
    :cond_4
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    goto :goto_1

    .line 392
    :cond_5
    new-instance p1, Lcom/facebook/FacebookRequestError;

    invoke-direct {p1, v2, p2, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object p2, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, p1, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 396
    :goto_1
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/widget/WebDialog;->dismiss()V

    return v0

    :cond_6
    const-string p1, "fbconnect://cancel"

    .line 398
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 399
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    .line 400
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/widget/WebDialog;->dismiss()V

    return v0

    :cond_7
    const-string p1, "touch"

    .line 402
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 406
    :cond_8
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method
