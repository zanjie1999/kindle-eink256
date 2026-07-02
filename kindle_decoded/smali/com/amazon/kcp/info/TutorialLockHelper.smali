.class public final Lcom/amazon/kcp/info/TutorialLockHelper;
.super Ljava/lang/Object;
.source "TutorialLockHelper.kt"


# static fields
.field private static final lock:Lcom/amazon/kcp/info/TutorialLockImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/kcp/info/TutorialLockHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/info/TutorialLockHelper;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kcp/info/TutorialLockImpl;

    new-instance v1, Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;

    invoke-direct {v1}, Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/info/TutorialLockImpl;-><init>(Lcom/amazon/kcp/info/TutorialDebugFlagWrapper;)V

    sput-object v0, Lcom/amazon/kcp/info/TutorialLockHelper;->lock:Lcom/amazon/kcp/info/TutorialLockImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLock()Lcom/amazon/kcp/info/TutorialLock;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kcp/info/TutorialLockHelper;->lock:Lcom/amazon/kcp/info/TutorialLockImpl;

    return-object v0
.end method
