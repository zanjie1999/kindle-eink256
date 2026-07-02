.class public Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;
.super Ljava/lang/Object;
.source "TutorialLockHelper.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areTutorialsEnabled()Z
    .locals 1

    .line 98
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areTutorialsEnabled()Z

    move-result v0

    return v0
.end method
