.class Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TabViewAdapter;
.super Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;
.source "EntityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabViewAdapter"
.end annotation


# static fields
.field private static final FRAGMENT_ALL_MENTIONS:Ljava/lang/String; = "allMentions"

.field private static final FRAGMENT_ALL_OF_TYPE:Ljava/lang/String; = "allOfType"

.field private static final FRAGMENT_IMAGES:Ljava/lang/String; = "images"

.field private static final FRAGMENT_TOP_MENTIONS:Ljava/lang/String; = "topMentions"


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Landroidx/fragment/app/FragmentManager;Lcom/amazon/xray/model/loader/EntityDetailTask$Result;)V
    .locals 9

    .line 424
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TabViewAdapter;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    .line 425
    invoke-direct {p0, p2}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 428
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    const-string v0, "XrayReadingSession"

    invoke-static {p2, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p2

    .line 431
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v0

    const/4 v1, 0x1

    .line 474
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 434
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 435
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "EntityId"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasExcerpts()Z

    move-result v3

    const-string v4, "entityId"

    if-eqz v3, :cond_3

    .line 439
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->newInstance(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;

    move-result-object v3

    .line 440
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 441
    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$400(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    .line 445
    invoke-static {}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->getCurrentPageEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 447
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    const-string v7, "location"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    :cond_1
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 453
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getExcerptsTabLabel()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 455
    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_notable_clips_tab_title:I

    invoke-virtual {p1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string/jumbo v6, "topMentions"

    .line 457
    invoke-virtual {p0, v3, v6, v5}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->addTab(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PressedTab_topMentions"

    .line 459
    invoke-virtual {p2, v3}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v3, "HasTab_TopMentions"

    .line 461
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v1, :cond_4

    .line 466
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->newInstance(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    move-result-object v3

    .line 467
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 468
    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$400(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 470
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_all_mentions_tab_title:I

    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "allMentions"

    invoke-virtual {p0, v3, v5, v4}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->addTab(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PressedTab_allMentions"

    .line 472
    invoke-virtual {p2, v3}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v3, "HasTab_AllMentions"

    .line 474
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_4
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntityTypes()Ljava/util/List;

    move-result-object v3

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 480
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/xray/model/object/EntityType;

    .line 481
    new-instance v5, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {v5}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;-><init>()V

    .line 482
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 483
    invoke-virtual {v4}, Lcom/amazon/xray/model/object/EntityType;->getId()I

    move-result v7

    const-string v8, "entityType"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allOfType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/xray/model/object/EntityType;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazon/xray/model/object/EntityType;->getPluralLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->addTab(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PressedTab_allOfType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/xray/model/object/EntityType;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HasTab_AllOfType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/xray/model/object/EntityType;->getId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 494
    invoke-virtual {p3}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->hasImages()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 495
    new-instance p3, Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment;

    invoke-direct {p3}, Lcom/amazon/xray/ui/fragment/ImageExcerptsFragment;-><init>()V

    .line 498
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 499
    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$600(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "initialFocusedImageId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$700(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)I

    move-result v4

    const-string v5, "initialFocusedExcerptId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    invoke-virtual {p3, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 503
    sget v3, Lcom/amazon/kindle/xray/R$string;->xray_images_tab_title:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "images"

    invoke-virtual {p0, p3, v3, p1}, Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;->addTab(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PressedTab_images"

    .line 505
    invoke-virtual {p2, p1}, Lcom/amazon/xray/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string p1, "HasTab_Images"

    .line 507
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_6
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 512
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    if-eqz v1, :cond_7

    const-string p2, "XrayBookView"

    goto :goto_2

    :cond_7
    const-string p2, "XrayEntityView"

    .line 513
    :goto_2
    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
