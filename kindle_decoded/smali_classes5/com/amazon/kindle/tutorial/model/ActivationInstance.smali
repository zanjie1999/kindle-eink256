.class public Lcom/amazon/kindle/tutorial/model/ActivationInstance;
.super Ljava/lang/Object;
.source "ActivationInstance.java"


# static fields
.field public static final HIGHEST_PRIORITY_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/tutorial/model/ActivationInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activationConfig:Lcom/amazon/kindle/tutorial/model/ActivationConfig;

.field private final tutorialConfig:Lcom/amazon/kindle/tutorial/model/TutorialConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/kindle/tutorial/model/ActivationInstance$1;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/model/ActivationInstance$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->HIGHEST_PRIORITY_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/tutorial/model/ActivationConfig;Lcom/amazon/kindle/tutorial/model/TutorialConfig;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->activationConfig:Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->tutorialConfig:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    return-void
.end method


# virtual methods
.method public getActivationConfig()Lcom/amazon/kindle/tutorial/model/ActivationConfig;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->activationConfig:Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    return-object v0
.end method

.method public getTutorialConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->tutorialConfig:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->activationConfig:Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->getTriggerConfig()Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->tutorialConfig:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/model/ActivationInstance;->tutorialConfig:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getPriority()I

    move-result v3

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const-string v0, "ActivationInstance{topic:%s,event:%s,id:%s,priority:%d}"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
