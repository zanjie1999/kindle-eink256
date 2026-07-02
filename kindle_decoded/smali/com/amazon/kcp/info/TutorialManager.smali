.class public Lcom/amazon/kcp/info/TutorialManager;
.super Ljava/lang/Object;
.source "TutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/TutorialManager$JITTutorial;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/info/TutorialManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/TutorialManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/info/TutorialManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method


# virtual methods
.method public clearTutorialHistory()V
    .locals 6

    .line 205
    invoke-static {}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->values()[Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 206
    iget-object v5, p0, Lcom/amazon/kcp/info/TutorialManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    iget-object v4, v4, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->key:Ljava/lang/String;

    invoke-virtual {v5, v4, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/model/content/ContentClass;->values()[Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 210
    iget-object v5, p0, Lcom/amazon/kcp/info/TutorialManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->clearTutorials()V

    return-void
.end method

.method public getCurrentTutorialVersion(Lcom/amazon/kcp/info/TutorialManager$JITTutorial;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
