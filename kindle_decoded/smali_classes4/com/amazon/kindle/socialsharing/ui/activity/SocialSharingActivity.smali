.class public Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;
.super Landroid/app/Activity;
.source "SocialSharingActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final OVERFLOW_ACTIVITY_REQUEST_CODE:I = 0x1

.field private static final WAS_ANIMATION_SHOWN_TAG:Ljava/lang/String; = "wasAnimationShown"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private final fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

.field private gridItemClickListener:Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

.field private shareActionClickListenerFactory:Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

.field private final shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

.field private shareType:Ljava/lang/String;

.field private themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

.field private wasAnimationShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->getInstance()Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    .line 93
    new-instance v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private animateDialogShow()V
    .locals 5

    .line 416
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->relativelayout_share_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 417
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$id;->linearlayout_empty_space:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 419
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 421
    sget v3, Lcom/amazon/kindle/socialsharing/common/R$anim;->slidein:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 423
    sget v4, Lcom/amazon/kindle/socialsharing/common/R$anim;->fadein:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 425
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 428
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 429
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 431
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->start()V

    return-void
.end method

.method private hideDialog()V
    .locals 2

    .line 269
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->relativelayout_share_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private initializeListeners(Landroid/os/Bundle;)V
    .locals 3

    .line 305
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->gvApplications:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 307
    sget v1, Lcom/amazon/kindle/socialsharing/common/R$id;->linearlayout_empty_space:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 309
    new-instance v2, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$2;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareActionClickListenerFactory:Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

    invoke-virtual {v1, p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->create(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->gridItemClickListener:Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->gridItemClickListener:Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 323
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_generic_error:I

    .line 324
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showGenericErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/socialsharing/ui/gridItem/BookNullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 327
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Book cannot be null"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 329
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_whoops:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_book_null:I

    .line 330
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showGenericErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private performApiValidations(Landroid/os/Bundle;)Z
    .locals 4

    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peform validations for sharetype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    sget-object p1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ShareType cannot be null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 207
    sget-object p1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ASIN cannot be null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private prepareDialog(Z)V
    .locals 2

    .line 373
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->gvApplications:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 375
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->getWhitelistedApps(Z)Ljava/util/List;

    move-result-object p1

    .line 376
    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetsGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->setDialogTitle(Ljava/lang/String;)V

    return-void
.end method

.method private setDialogTitle(Ljava/lang/String;)V
    .locals 3

    .line 359
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->tv_sharedialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_DIALOG_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setShareDialogTheme()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "UNKNOWN"

    .line 291
    :cond_0
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->performAction(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportShareContextType(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->linearlayout_share_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 295
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getDialogBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 297
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->tv_sharedialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 298
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getDialogTextTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->linearlayout_empty_space:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 301
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getEmptySpaceAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 277
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$id;->relativelayout_share_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showGenericErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 342
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$3;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V

    .line 343
    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    move-result-object p1

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showGoodreadsShareTarget(Landroid/os/Bundle;)Z
    .locals 4

    .line 175
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->isGoodreadsSupported(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    .line 182
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QUOTE"

    .line 183
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 184
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 185
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v2, "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

    .line 189
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canGetProgress(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private updateSystemUI(ZLandroid/view/View;)V
    .locals 3

    .line 244
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v0, 0x2000

    .line 254
    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    if-eqz p1, :cond_2

    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    :cond_2
    or-int/lit8 v0, v0, 0x10

    .line 262
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateTheme()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->getThemeResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->isDarkThemed()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->updateSystemUI(ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 540
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getThemeResourceId()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->isDarkThemed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$style;->Theme_SocialSharing_Dark:I

    return v0

    .line 232
    :cond_0
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$style;->Theme_SocialSharing_Light:I

    return v0
.end method

.method public getWhitelistedApps(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getGridItemFiltersFromExtras(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareType:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getGridItemList(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 390
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$4;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$integer;->max_items:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 400
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v1, 0x0

    .line 401
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 405
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->shouldShowMoreButton(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 410
    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getMoreButton(Landroid/content/Context;Ljava/util/List;)Lcom/amazon/kindle/socialsharing/ui/gridItem/MoreButtonShareTargetGridItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 449
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->finish()V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->initializeActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 554
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$layout;->share_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 557
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->setShareDialogTheme()V

    .line 558
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showGoodreadsShareTarget(Landroid/os/Bundle;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->prepareDialog(Z)V

    .line 559
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->initializeListeners(Landroid/os/Bundle;)V

    .line 560
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Intent cannot be null"

    .line 103
    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v1, "wasAnimationShown"

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    goto :goto_0

    .line 109
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareType:Ljava/lang/String;

    .line 114
    const-class v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    .line 115
    new-instance v2, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/DarkModeHelper;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;->getThemeForShareEntryPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->setThemeUtil(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 118
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->updateTheme()V

    .line 119
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$layout;->share_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 120
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->setShareDialogTheme()V

    .line 122
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->hideDialog()V

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->createLifecycleHelper(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->performApiValidations(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    sget-object p1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Share attempt failed API validations. Exiting..."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 133
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_generic_error:I

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showGenericErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ConnectivityHelper;->hasNetworkConnection()Z

    move-result p1

    if-nez p1, :cond_2

    .line 139
    sget-object p1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No network connectivity"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ShareErrorSharingWhileNoConnection"

    .line 141
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->performAction(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportNoConnectivity()V

    .line 143
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_no_connection_title:I

    .line 144
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_no_connection_message:I

    .line 145
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V

    .line 143
    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->hideDialog()V

    return-void

    .line 159
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->getInstance()Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareActionClickListenerFactory:Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;

    .line 161
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showGoodreadsShareTarget(Landroid/os/Bundle;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->prepareDialog(Z)V

    .line 162
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->extras:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->initializeListeners(Landroid/os/Bundle;)V

    .line 164
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->isStarted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->reset()V

    .line 166
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->start()V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 500
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->onDestroy()V

    .line 509
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    .line 511
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    .line 513
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "READER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "QUOTE"

    .line 514
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_START_POSITION"

    .line 515
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_END_POSITION"

    .line 516
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 522
    sget-object v2, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->selectText(IILcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)Z

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->stop()V

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 529
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareDialogVisibilityStopWatch:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VisibilityTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->recordMetadata(Ljava/util/Map;)V

    .line 534
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->hideContext()V

    .line 535
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportShareDialogDismissed()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 492
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 493
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->onPause()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 482
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "wasAnimationShown"

    .line 483
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 486
    iput-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 463
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->onResume()V

    .line 464
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->shareType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->setDialogTitle(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->gridItemClickListener:Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->resetItemClicked()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 472
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 473
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->fbHelper:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 477
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    const-string v1, "wasAnimationShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 565
    new-instance p1, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$5;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$5;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 436
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 438
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showDialog()V

    .line 440
    iget-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    if-nez p1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->animateDialogShow()V

    const/4 p1, 0x1

    .line 442
    iput-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->wasAnimationShown:Z

    :cond_0
    return-void
.end method

.method public setThemeUtil(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 171
    invoke-static {p1, p2}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->themeUtil:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    return-void
.end method
