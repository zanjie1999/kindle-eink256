.class public Lcom/amazon/kindle/model/content/LocalBookState;
.super Ljava/lang/Object;
.source "LocalBookState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;
    }
.end annotation


# static fields
.field private static isKeptUpdatedEvent:Lcom/amazon/foundation/internal/StringEventProvider;


# instance fields
.field private final bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private bookKept:Z

.field private bookRead:Z

.field private lastReadPage:I

.field private lastReadPageScrollOffset:Ljava/lang/String;

.field private lastReadViewMode:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private tocReadState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/amazon/foundation/internal/StringEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StringEventProvider;-><init>()V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalBookState;->isKeptUpdatedEvent:Lcom/amazon/foundation/internal/StringEventProvider;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 83
    iput-object p2, p0, Lcom/amazon/kindle/model/content/LocalBookState;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookRead:Z

    .line 85
    iput-boolean p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookKept:Z

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->tocReadState:Ljava/util/Map;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot initialized with null bookID or localStorage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getLastPageRead()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->lastReadPage:I

    return v0
.end method

.method public getLastPageReadScrollOfset()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->lastReadPageScrollOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getLastReadViewMode()Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->lastReadViewMode:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    return-object v0
.end method

.method public getTocReadMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->tocReadState:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isBookKept()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookKept:Z

    return v0
.end method

.method public isBookRead()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookRead:Z

    return v0
.end method

.method public isTocItemRead(I)Z
    .locals 2

    .line 119
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->tocReadState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public persist()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/ILocalStorage;->save(Lcom/amazon/kindle/model/content/LocalBookState;)V

    return-void
.end method

.method public setBookKept(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/model/content/LocalBookState;->setBookKept(ZZ)V

    return-void
.end method

.method public setBookKept(ZZ)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookKept:Z

    if-eqz p2, :cond_0

    .line 156
    sget-object p1, Lcom/amazon/kindle/model/content/LocalBookState;->isKeptUpdatedEvent:Lcom/amazon/foundation/internal/StringEventProvider;

    iget-object p2, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/foundation/internal/StringEventProvider;->notifyListeners(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBookRead(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->bookRead:Z

    return-void
.end method

.method public setLastPageReadScrollOfset(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->lastReadPageScrollOffset:Ljava/lang/String;

    return-void
.end method

.method public setLastReadPage(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->lastReadPage:I

    return-void
.end method

.method public setLastReadViewMode(Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazon/kindle/model/content/LocalBookState;->lastReadViewMode:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    return-void
.end method

.method public setTocItemReadState(IZ)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/model/content/LocalBookState;->tocReadState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
