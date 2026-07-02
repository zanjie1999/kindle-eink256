.class Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;
.super Ljava/lang/Object;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountState"
.end annotation


# instance fields
.field mAccountId:Ljava/lang/String;

.field mActiveLeafNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/observablemodel/ListenerSet<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;",
            "Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mContentFilterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/observablemodel/ListenerSet<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Lcom/amazon/kindle/observablemodel/ModelCountUpdate;",
            "Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;",
            ">;"
        }
    .end annotation
.end field

.field mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/observablemodel/ListenerSet<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;",
            "Lcom/amazon/kindle/observablemodel/LibraryGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field mHasPreloaded:Z

.field mItemDetailListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/observablemodel/ListenerSet<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Object;",
            "Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;",
            ">;"
        }
    .end annotation
.end field

.field mItemDetailRequestQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation
.end field

.field mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mAccountId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mHasPreloaded:Z

    .line 43
    new-instance p1, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    .line 44
    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mContentFilterSet:Ljava/util/Set;

    .line 45
    new-instance p1, Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-direct {p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailRequestQueue:Ljava/util/Set;

    .line 47
    new-instance p1, Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-direct {p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    .line 48
    new-instance p1, Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-direct {p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    .line 49
    new-instance p1, Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-direct {p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    .line 50
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mActiveLeafNames:Ljava/util/Set;

    return-void
.end method
