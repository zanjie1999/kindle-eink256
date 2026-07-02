.class public Lcom/facebook/widget/FacebookDialog;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FacebookDialog$PendingCall;,
        Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,
        Lcom/facebook/widget/FacebookDialog$Builder;,
        Lcom/facebook/widget/FacebookDialog$OnPresentCallback;,
        Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$DialogFeature;,
        Lcom/facebook/widget/FacebookDialog$Callback;
    }
.end annotation


# static fields
.field private static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field private static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field private static final EXTRA_DIALOG_COMPLETION_ID_KEY:Ljava/lang/String; = "com.facebook.platform.extra.POST_ID"

.field private static attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    .line 291
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroidx/fragment/app/Fragment;

    .line 292
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 293
    iput-object p4, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Iterable;)I
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/facebook/widget/FacebookDialog;->getMinVersionForFeatures(Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .line 48
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    return-object v0
.end method

.method private static getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 445
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 448
    invoke-interface {p0}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .line 428
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 431
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    return-object v0
.end method

.method private static getEventName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    .line 462
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.platform.extra.PHOTOS"

    .line 463
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    .line 464
    invoke-static {v0, p0}, Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getEventName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    .line 470
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "fb_dialogs_present_share_photo"

    goto :goto_0

    :cond_0
    const-string p0, "fb_dialogs_present_share"

    goto :goto_0

    :cond_1
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    .line 474
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "fb_dialogs_present_message_photo"

    goto :goto_0

    :cond_2
    const-string p0, "fb_dialogs_present_message"

    goto :goto_0

    :cond_3
    const-string p1, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    .line 478
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "fb_dialogs_present_share_og"

    goto :goto_0

    :cond_4
    const-string p1, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    .line 480
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "fb_dialogs_present_message_og"

    :goto_0
    return-object p0

    .line 483
    :cond_5
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "An unspecified action was presented"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMinVersionForFeatures(Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)I"
        }
    .end annotation

    .line 436
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 438
    invoke-interface {v1}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getMinVersion()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    .line 269
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNativeDialogDidComplete(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.facebook.platform.extra.DID_COMPLETE"

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getNativeDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.extra.POST_ID"

    .line 280
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 424
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAction(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 1

    .line 336
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 340
    :cond_0
    sget-object p2, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-eqz p2, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V

    :cond_1
    if-eqz p4, :cond_3

    .line 345
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 346
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getErrorFromResult(Landroid/content/Intent;)Ljava/lang/Exception;

    move-result-object p0

    .line 349
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p4, p1, p0, p2}, Lcom/facebook/widget/FacebookDialog$Callback;->onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Lcom/facebook/widget/FacebookDialog$Callback;->onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static logDialogActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object p0

    .line 456
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fb_dialog_outcome"

    .line 457
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 458
    invoke-virtual {p0, p2, p3, p1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public present()Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/FacebookDialog;->getEventName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Completed"

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/facebook/widget/FacebookDialog$OnPresentCallback;->onPresent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 316
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-object v0
.end method
