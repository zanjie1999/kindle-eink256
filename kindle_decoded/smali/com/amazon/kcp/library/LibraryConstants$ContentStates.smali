.class public Lcom/amazon/kcp/library/LibraryConstants$ContentStates;
.super Ljava/lang/Object;
.source "LibraryConstants.java"


# static fields
.field public static final ON_DEVICE_CONTENT_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/ContentState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/amazon/kindle/model/content/ContentState;

    .line 34
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REQUIRED_COMPLETE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_OPTIONAL_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_DEFERRED_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->CONVERTING:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->CONVERSION_FAILED:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->ON_DEVICE_CONTENT_STATES:Ljava/util/List;

    return-void
.end method

.method public static names(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/ContentState;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/content/ContentState;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
