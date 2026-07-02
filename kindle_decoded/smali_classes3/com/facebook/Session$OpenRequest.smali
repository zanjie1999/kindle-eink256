.class public final Lcom/facebook/Session$OpenRequest;
.super Lcom/facebook/Session$AuthorizationRequest;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2126
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;
    .locals 0

    .line 2137
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;
    .locals 0

    .line 2201
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;
    .locals 0

    .line 2150
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$OpenRequest;"
        }
    .end annotation

    .line 2177
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    return-object p0
.end method
