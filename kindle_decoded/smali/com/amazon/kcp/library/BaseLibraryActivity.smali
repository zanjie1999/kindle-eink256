.class public abstract Lcom/amazon/kcp/library/BaseLibraryActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "BaseLibraryActivity.java"


# static fields
.field protected static actionModeStarted:Z = false

.field private static currActionMode:Landroidx/appcompat/view/ActionMode; = null

.field private static libraryActivitiesStarted:I = 0x0

.field private static updatingCovers:Z = false


# instance fields
.field protected toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private notifyCoverManager()V
    .locals 1

    .line 78
    sget-boolean v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->updatingCovers:Z

    if-nez v0, :cond_0

    sget v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    if-lez v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->resumeUpdates()V

    const/4 v0, 0x1

    .line 80
    sput-boolean v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->updatingCovers:Z

    goto :goto_0

    .line 81
    :cond_0
    sget-boolean v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->updatingCovers:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    if-nez v0, :cond_1

    .line 82
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->pauseUpdates()V

    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->updatingCovers:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 28
    sget-boolean v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->actionModeStarted:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->setupToolbarOnActionModeStarted()V

    .line 31
    :cond_0
    sget v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->notifyCoverManager()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 38
    sget v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    const/4 v1, 0x0

    .line 40
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->libraryActivitiesStarted:I

    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->notifyCoverManager()V

    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V

    const/4 p1, 0x0

    .line 69
    sput-boolean p1, Lcom/amazon/kcp/library/BaseLibraryActivity;->actionModeStarted:Z

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->currActionMode:Landroidx/appcompat/view/ActionMode;

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseLibraryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->actionModeStarted:Z

    .line 48
    sput-object p1, Lcom/amazon/kcp/library/BaseLibraryActivity;->currActionMode:Landroidx/appcompat/view/ActionMode;

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->setupToolbarOnActionModeStarted()V

    return-void
.end method

.method protected recreateActivity()V
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/kcp/library/BaseLibraryActivity;->currActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivity()V

    return-void
.end method

.method protected setupToolbarOnActionModeStarted()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseLibraryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseLibraryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
