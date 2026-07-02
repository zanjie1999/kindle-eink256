.class public final Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;
.super Ljava/lang/Object;
.source "CompanionMappingBroadcaster.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastAddedCompanions(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.audible.hushpuppy.action.COMPANION_ADDED"

    .line 52
    invoke-virtual {p0, v0, p2, p1}, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;->buildAndBroadcastIntent(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected broadcastDeletedCompanions(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.audible.hushpuppy.action.COMPANION_DELETED"

    .line 63
    invoke-virtual {p0, v0, p2, p1}, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;->buildAndBroadcastIntent(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public broadcastModifications(Landroid/content/Context;Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V
    .locals 1

    .line 41
    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;->broadcastAddedCompanions(Landroid/content/Context;Ljava/util/List;)V

    .line 42
    invoke-virtual {p2}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToDelete()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;->broadcastDeletedCompanions(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected buildAndBroadcastIntent(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 79
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 81
    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p2, "AUDIOBOOK_ASINS"

    .line 89
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "EBOOK_ASINS"

    .line 90
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 95
    new-instance v1, Landroid/content/ComponentName;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    return-void
.end method
