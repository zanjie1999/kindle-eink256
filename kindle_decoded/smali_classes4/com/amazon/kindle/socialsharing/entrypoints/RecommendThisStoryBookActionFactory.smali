.class public Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookActionFactory;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;
.source "RecommendThisStoryBookActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;


# static fields
.field private static final FALKOR_STORY_SHARE_WEBLAB:Ljava/lang/String; = "KINDLE_ANDROID_FOS_FALKOR_RECOMMEND_THIS_STORY_294462"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryBookActionContext;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/library/LibraryBookAction;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    .line 45
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string v2, "KINDLE_ANDROID_FOS_FALKOR_RECOMMEND_THIS_STORY_294462"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 46
    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 48
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getStoryAsinForFalkorEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1, v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->isBookFalkorStory(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 56
    new-instance p1, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;

    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookAction;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 60
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createActions(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/RecommendThisStoryBookActionFactory;->createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
