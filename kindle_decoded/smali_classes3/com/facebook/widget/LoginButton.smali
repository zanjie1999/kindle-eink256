.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/LoginButton$LoginButtonCallback;,
        Lcom/facebook/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/widget/LoginButton$OnErrorListener;,
        Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;,
        Lcom/facebook/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/widget/LoginButton$ToolTipMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private listenerCallback:Landroid/view/View$OnClickListener;

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private nuxChecked:Z

.field private nuxDisplayTime:J

.field private nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

.field private nuxPopup:Lcom/facebook/widget/ToolTipPopup;

.field private nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

.field private parentFragment:Landroidx/fragment/app/Fragment;

.field private properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

.field private userInfoSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 218
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 84
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 91
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    const-string v0, "fb_login_view_usage"

    .line 92
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 96
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const-wide/16 v0, 0x1770

    .line 97
    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 219
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 221
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 84
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 91
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    const-string v0, "fb_login_view_usage"

    .line 92
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 96
    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const-wide/16 v0, 0x1770

    .line 97
    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 232
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x11

    .line 236
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 237
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 238
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 240
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string v0, "Log in with Facebook"

    .line 246
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_0
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_button_blue:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 249
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_inverse_icon:I

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 250
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 252
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 258
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 259
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_2

    .line 260
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 270
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 81
    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 84
    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 91
    new-instance p3, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {p3}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    const-string p3, "fb_login_view_usage"

    .line 92
    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 95
    sget-object p3, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 96
    sget-object p3, Lcom/facebook/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object p3, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const-wide/16 v0, 0x1770

    .line 97
    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 271
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-object p0
.end method

.method static synthetic access$502(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-object p1
.end method

.method static synthetic access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/widget/LoginButton;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/widget/LoginButton;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method private checkNuxSettings()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/widget/LoginButton$ToolTipMode;

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 674
    new-instance v1, Lcom/facebook/widget/LoginButton$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 686
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private displayNux(Ljava/lang/String;)V
    .locals 2

    .line 661
    new-instance v0, Lcom/facebook/widget/ToolTipPopup;

    invoke-direct {v0, p1, p0}, Lcom/facebook/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    .line 662
    iget-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ToolTipPopup;->setStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V

    .line 663
    iget-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    iget-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/widget/ToolTipPopup;->setNuxDisplayTime(J)V

    .line 664
    iget-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {p1}, Lcom/facebook/widget/ToolTipPopup;->show()V

    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .line 760
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v1, :cond_1

    .line 764
    new-instance v1, Lcom/facebook/widget/LoginButton$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/LoginButton$2;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V

    invoke-static {v0, v1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 778
    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 779
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 783
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    if-eqz v1, :cond_1

    .line 784
    invoke-interface {v1, v0}, Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/model/GraphUser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private finishInit()V
    .locals 5

    .line 613
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 615
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/facebook/widget/LoginButton$LoginButtonCallback;

    invoke-direct {v3, p0, v1}, Lcom/facebook/widget/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 617
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    :cond_0
    return-void
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 746
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result p1

    return p1

    .line 751
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 756
    :cond_2
    invoke-static {p1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 723
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 724
    sget v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view_confirm_logout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    .line 725
    sget v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view_fetch_user_info:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    .line 726
    sget v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view_login_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 727
    sget v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view_logout_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 728
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setButtonText()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private showNuxPerSettings(Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getNuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getNuxContent()Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissToolTip()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->dismiss()V

    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/ToolTipPopup;

    :cond_0
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    .line 543
    iget-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 894
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    check-cast p1, Lcom/facebook/FacebookException;

    invoke-interface {v0, p1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 635
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 636
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    .line 638
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 639
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 693
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 694
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 645
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 647
    iget-boolean p1, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/widget/LoginButton$ToolTipMode;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 648
    iput-boolean p1, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    .line 649
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->checkNuxSettings()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 608
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 609
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 702
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    :cond_0
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V

    return-void
.end method

.method setLoginLogoutEventName(Ljava/lang/String;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V

    return-void
.end method

.method setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 602
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 603
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 0

    .line 535
    iput-wide p1, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    return-void
.end method

.method public setToolTipMode(Lcom/facebook/widget/LoginButton$ToolTipMode;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/LoginButton$ToolTipMode;

    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-void
.end method
