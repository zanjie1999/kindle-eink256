.class public Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;
.super Lcom/amazon/kindle/krx/tutorial/BaseCustomTutorialCallback;
.source "CustomTutorialStateCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private tutorialId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/BaseCustomTutorialCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTutorialDismissed()V
    .locals 4

    .line 31
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    .line 32
    sget-object v0, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Tutorials unlocked. Tutorial %s was dismissed."

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;->tutorialId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return-void
.end method

.method public setCurrentCustomTutorial(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;->tutorialId:Ljava/lang/String;

    return-void
.end method
