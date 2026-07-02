.class Lcom/facebook/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginButtonProperties"
.end annotation


# instance fields
.field private authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionStatusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 105
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/Session$StatusCallback;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    return-object p0
.end method

.method private validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/internal/SessionAuthorizationType;",
            "Lcom/facebook/Session;",
            ")Z"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Permissions for publish actions cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 153
    invoke-virtual {p3}, Lcom/facebook/Session;->isOpened()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p3}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 155
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot set additional permissions when session is already open."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

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

    .line 163
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")V"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 141
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 142
    sget-object p1, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")V"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 131
    sget-object p1, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-void
.end method
