.class public Lcom/facebook/widget/UserSettingsFragment;
.super Lcom/facebook/widget/FacebookFragment;
.source "UserSettingsFragment.java"


# static fields
.field private static final FIELDS:Ljava/lang/String; = "fields"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"

.field private static final REQUEST_FIELDS:Ljava/lang/String;


# instance fields
.field private connectedStateLabel:Landroid/widget/TextView;

.field private loginButton:Lcom/facebook/widget/LoginButton;

.field private loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoSession:Lcom/facebook/Session;

.field private userProfilePic:Landroid/graphics/drawable/Drawable;

.field private userProfilePicID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "id"

    const-string v1, "name"

    const-string v2, "picture"

    .line 59
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/UserSettingsFragment;->REQUEST_FIELDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/facebook/widget/FacebookFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/model/GraphUser;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    return-object p0
.end method

.method static synthetic access$002(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/widget/UserSettingsFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/widget/LoginButton;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/widget/UserSettingsFragment;Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/UserSettingsFragment;->processImageResponse(Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method private fetchUserInfo()V
    .locals 5

    .line 343
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/facebook/widget/UserSettingsFragment;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v1, :cond_1

    .line 346
    new-instance v1, Lcom/facebook/widget/UserSettingsFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/UserSettingsFragment$1;-><init>(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/Session;)V

    invoke-static {v0, v1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    .line 358
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 359
    sget-object v3, Lcom/facebook/widget/UserSettingsFragment;->REQUEST_FIELDS:Ljava/lang/String;

    const-string v4, "fields"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 361
    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 362
    iput-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->userInfoSession:Lcom/facebook/Session;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    :cond_1
    :goto_0
    return-void
.end method

.method private getImageRequest()Lcom/facebook/internal/ImageRequest;
    .locals 6

    .line 416
    :try_start_0
    new-instance v0, Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v2}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_usersettingsfragment_profile_picture_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/android/R$dimen;->com_facebook_usersettingsfragment_profile_picture_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    .line 423
    invoke-virtual {v0, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    new-instance v1, Lcom/facebook/widget/UserSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/UserSettingsFragment$2;-><init>(Lcom/facebook/widget/UserSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private processImageResponse(Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 439
    invoke-virtual {p2}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_usersettingsfragment_profile_picture_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_usersettingsfragment_profile_picture_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 445
    iput-object v1, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePic:Landroid/graphics/drawable/Drawable;

    .line 446
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePicID:Ljava/lang/String;

    .line 447
    iget-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->isSessionOpen()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$color;->com_facebook_usersettingsfragment_connected_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/android/R$color;->com_facebook_usersettingsfragment_connected_shadow_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 378
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    if-eqz v0, :cond_3

    .line 379
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->getImageRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v1

    .line 383
    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v3}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePicID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    .line 392
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/android/R$string;->com_facebook_usersettingsfragment_logged_in:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$drawable;->com_facebook_profile_default_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_usersettingsfragment_profile_picture_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_usersettingsfragment_profile_picture_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    iget-object v1, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 403
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/android/R$color;->com_facebook_usersettingsfragment_not_connected_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 404
    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 406
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/android/R$string;->com_facebook_usersettingsfragment_not_logged_in:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    sget p3, Lcom/facebook/android/R$layout;->com_facebook_usersettingsfragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Lcom/facebook/android/R$id;->com_facebook_usersettingsfragment_login_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    .line 74
    iget-object p3, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {p2, p3}, Lcom/facebook/widget/LoginButton;->setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V

    .line 75
    iget-object p2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    invoke-virtual {p2, p0}, Lcom/facebook/widget/LoginButton;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 76
    iget-object p2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    const-string p3, "fb_user_settings_vc_usage"

    invoke-virtual {p2, p3}, Lcom/facebook/widget/LoginButton;->setLoginLogoutEventName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getSession()Lcom/facebook/Session;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 79
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/Session;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 80
    iget-object p3, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    invoke-virtual {p3, p2}, Lcom/facebook/widget/LoginButton;->setSession(Lcom/facebook/Session;)V

    .line 82
    :cond_0
    sget p2, Lcom/facebook/android/R$id;->com_facebook_usersettingsfragment_profile_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/facebook/android/R$color;->com_facebook_blue:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :goto_0
    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V

    .line 106
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2

    .line 329
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V

    .line 330
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    .line 332
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
