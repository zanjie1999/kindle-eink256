.class public Lcom/facebook/widget/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/WebDialog$FeedDialogBuilder;,
        Lcom/facebook/widget/WebDialog$Builder;,
        Lcom/facebook/widget/WebDialog$BuilderBase;,
        Lcom/facebook/widget/WebDialog$DialogWebViewClient;,
        Lcom/facebook/widget/WebDialog$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_GRAY:I = -0x34000000

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private isDetached:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 82
    iput-boolean p1, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    if-nez p3, :cond_0

    .line 136
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string p1, "redirect_uri"

    const-string p4, "fbconnect://success"

    .line 140
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "display"

    const-string p4, "touch"

    .line 142
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dialog/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/WebDialog;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    return p0
.end method

.method static synthetic access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private calculateSize()V
    .locals 6

    .line 250
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 251
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 256
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 257
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_1

    move v2, v3

    .line 259
    :cond_1
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    const/16 v5, 0x320

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/facebook/widget/WebDialog;->getScaledSize(IFII)I

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 262
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/facebook/widget/WebDialog;->getScaledSize(IFII)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 266
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private createCrossImage()V
    .locals 2

    .line 320
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 322
    new-instance v1, Lcom/facebook/widget/WebDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/WebDialog$3;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$drawable;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getScaledSize(IFII)I
    .locals 4

    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-int p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-gt p2, p3, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    if-lt p2, p4, :cond_1

    goto :goto_0

    :cond_1
    sub-int p2, p4, p2

    int-to-double v2, p2

    sub-int/2addr p4, p3

    int-to-double p2, p4

    div-double/2addr v2, p2

    mul-double v2, v2, v0

    add-double/2addr v0, v2

    :goto_0
    int-to-double p1, p1

    mul-double p1, p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private sendCancelToListener()V
    .locals 1

    .line 316
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    .line 306
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_0

    .line 307
    check-cast p1, Lcom/facebook/FacebookException;

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    :cond_1
    return-void
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 297
    iput-boolean v1, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    const/4 v1, 0x0

    .line 298
    invoke-interface {v0, p1, v1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 5

    .line 339
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 340
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 342
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 343
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/facebook/widget/WebDialog$DialogWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 344
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 345
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 350
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 352
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 p1, -0x34000000    # -3.3554432E7f

    .line 354
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 355
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 192
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 197
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 199
    new-instance p1, Lcom/facebook/widget/WebDialog$1;

    invoke-direct {p1, p0}, Lcom/facebook/widget/WebDialog$1;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 206
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 208
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$string;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/widget/WebDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/WebDialog$2;-><init>(Lcom/facebook/widget/WebDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 218
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 221
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->calculateSize()V

    .line 222
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 231
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->createCrossImage()V

    .line 236
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 238
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->setUpWebView(I)V

    .line 243
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object p1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    .line 186
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method
