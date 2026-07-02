.class public Lcom/amazon/kcp/library/LibraryContentListener;
.super Lcom/amazon/kcp/library/PausableListener;
.source "LibraryContentListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;,
        Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/library/LibraryContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;ZLcom/amazon/kcp/library/query/ILibraryQueryModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/PausableListener$Callback;ZLcom/amazon/kcp/library/query/ILibraryQueryModel;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/PausableListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    .line 61
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentListener;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    return-void
.end method

.method private compare(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;
    .locals 5

    if-ne p1, p2, :cond_0

    .line 96
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SAME:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    return-object p1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentListener;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentListener;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    invoke-interface {v1, p2}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentListener;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    .line 102
    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->isSortFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    :cond_1
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SORT_OR_FILTER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    return-object p1

    .line 106
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentListener;->sortFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentListener;->filterFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 112
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isKept()Z

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isKept()Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object p2

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 116
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SAME:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->OTHER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    :goto_1
    return-object p1

    .line 107
    :cond_6
    :goto_2
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;->SORT_OR_FILTER_FIELD_CHANGED:Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    return-object p1
.end method

.method private filterFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 5

    .line 141
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private sortFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 129
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method declared-synchronized getRefreshType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 67
    :try_start_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ALL:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 73
    :try_start_2
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ALL:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 75
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 79
    :cond_4
    :try_start_4
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentListener$1;->$SwitchMap$com$amazon$kcp$library$LibraryContentListener$CompareResult:[I

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryContentListener;->compare(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kcp/library/LibraryContentListener$CompareResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 86
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ITEM:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 88
    :cond_5
    :try_start_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string/jumbo p2, "never happening"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 84
    :cond_6
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->REFRESH_ALL:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 81
    :cond_7
    :try_start_6
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;->NO_REFRESH:Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppressing library refresh for bookID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 208
    :cond_0
    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    :cond_1
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 178
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 179
    sget-object v2, Lcom/amazon/kcp/library/LibraryContentListener$1;->$SwitchMap$com$amazon$kcp$library$LibraryContentListener$RefreshType:[I

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/amazon/kcp/library/LibraryContentListener;->getRefreshType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kcp/library/LibraryContentListener$RefreshType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string/jumbo v0, "never happening"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/PausableListener;->refreshItem(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 193
    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onGroupAdd(Lcom/amazon/kindle/content/GroupAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "GROUP_ADD"
    .end annotation

    .line 167
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    :cond_0
    return-void
.end method

.method public onGroupContentSettingsChangeEvent(Lcom/amazon/kcp/groupcontent/GroupContentSettingChangeEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 225
    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method

.method public onGroupDelete(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "GROUP_DELETE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    :cond_0
    return-void
.end method

.method public onLibraryContentAddPayload(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 157
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppressing library refresh for bookID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 161
    :cond_1
    sget-object p1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    :cond_2
    return-void
.end method
