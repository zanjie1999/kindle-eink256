.class public Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;
.super Ljava/lang/Object;
.source "StartActionsAutoShelvingBlockingTutorialManager.java"


# static fields
.field private static final MAX_BLOCKING_TUTORIAL_COUNT:I = 0x2


# instance fields
.field private final asin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    const-string v0, "anyactions.autoshelving"

    const-string/jumbo v1, "startActionsBlockingTutorialEnabled"

    .line 50
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "startActionsBlockingTutorialNoticedAsins"

    .line 56
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringSetPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->asin:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 61
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public noticeBackButton()V
    .locals 5

    const-string/jumbo v0, "startActionsBlockingTutorialNoticedAsins"

    const-string v1, "anyactions.autoshelving"

    .line 36
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringSetPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/amazon/startactions/jit/StartActionsAutoShelvingBlockingTutorialManager;->asin:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v2, "startActionsBlockingTutorialEnabled"

    .line 41
    invoke-static {v1, v2, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v1, v0, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringSetPreference(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public noticeUserInteraction()V
    .locals 3

    const-string v0, "anyactions.autoshelving"

    const-string/jumbo v1, "startActionsBlockingTutorialEnabled"

    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v1, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
