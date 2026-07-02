.class public Lcom/facebook/Session$AuthorizationRequest;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private isLegacy:Z

.field private final loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

.field private statusCallback:Lcom/facebook/Session$StatusCallback;

.field private validateSameFbidAsToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    const v0, 0xface

    .line 1888
    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    .line 1890
    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1892
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1895
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    .line 1899
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$1;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    const v0, 0xface

    .line 1888
    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    .line 1890
    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1892
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1895
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    .line 1913
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$2;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    const v0, 0xface

    .line 1888
    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    const/4 v0, 0x0

    .line 1890
    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1891
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1892
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1895
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    .line 1932
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$3;

    invoke-direct {v0, p0}, Lcom/facebook/Session$AuthorizationRequest$3;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1945
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1946
    iput p2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1947
    iput-object p3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1948
    invoke-static {p4}, Lcom/facebook/SessionDefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/SessionDefaultAudience;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1949
    iput-boolean p5, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1950
    iput-object p6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    .line 1951
    iput-object p7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/Session$1;)V
    .locals 0

    .line 1882
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/Session$StartActivityDelegate;
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 0

    .line 1882
    iget-boolean p0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/Session$AuthorizationRequest;)I
    .locals 0

    .line 1882
    iget p0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return p0
.end method

.method static synthetic access$900(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2073
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Cannot readObject, serialization proxy required"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getAuthId()Ljava/lang/String;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .locals 11

    .line 2049
    new-instance v8, Lcom/facebook/Session$AuthorizationRequest$4;

    invoke-direct {v8, p0}, Lcom/facebook/Session$AuthorizationRequest$4;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 2060
    new-instance v10, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-boolean v3, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v4, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AuthorizationClient$StartActivityDelegate;Ljava/lang/String;)V

    return-object v10
.end method

.method getCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .line 1984
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

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

    .line 2010
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    .line 1995
    iget v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-object v0
.end method

.method setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 2033
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-void
.end method

.method setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/Session$StatusCallback;

    return-object p0
.end method

.method setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 2015
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    :cond_0
    return-object p0
.end method

.method setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 1978
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    :cond_0
    return-object p0
.end method

.method setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$AuthorizationRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2000
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 10

    .line 2066
    new-instance v9, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-object v3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/Session$1;)V

    return-object v9
.end method
