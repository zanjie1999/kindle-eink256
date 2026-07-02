.class public Lcom/amazon/kcp/info/StandaloneTutorialManager;
.super Lcom/amazon/kcp/info/TutorialManager;
.source "StandaloneTutorialManager.java"


# static fields
.field private static final MAPPINGS:Lcom/amazon/kcp/info/TutorialMappings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kcp/info/StandaloneTutorialManager$1;

    invoke-direct {v0}, Lcom/amazon/kcp/info/StandaloneTutorialManager$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/info/StandaloneTutorialManager;->MAPPINGS:Lcom/amazon/kcp/info/TutorialMappings;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/info/TutorialManager;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCurrentTutorialVersion(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)I
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/kcp/info/StandaloneTutorialManager;->MAPPINGS:Lcom/amazon/kcp/info/TutorialMappings;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/info/TutorialMappings;->getTutorialVersionId(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/info/TutorialManager;->getCurrentTutorialVersion(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)I

    move-result p1

    :goto_0
    return p1
.end method
