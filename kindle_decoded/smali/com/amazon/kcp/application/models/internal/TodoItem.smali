.class public Lcom/amazon/kcp/application/models/internal/TodoItem;
.super Lcom/amazon/foundation/internal/WebServiceModel;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;,
        Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;,
        Lcom/amazon/kcp/application/models/internal/TodoItem$Type;,
        Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static todoItemTypeFactory:Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;


# instance fields
.field protected action:Ljava/lang/String;

.field protected contentType:Ljava/lang/String;

.field private creationTimestamp:J

.field protected excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

.field protected failureCode:Ljava/lang/String;

.field protected guid:Ljava/lang/String;

.field protected incremental:Z

.field protected itemAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected key:Ljava/lang/String;

.field protected priority:I

.field protected sequence:I

.field protected title:Ljava/lang/String;

.field protected type:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-class v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem;->TAG:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem;->todoItemTypeFactory:Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;

    .line 197
    const-class v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;->register(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 453
    invoke-direct {p0}, Lcom/amazon/foundation/internal/WebServiceModel;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->guid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->itemAttributes:Ljava/util/Map;

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->creationTimestamp:J

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;
    .locals 0

    .line 222
    invoke-static {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->getBookTypeForTodoType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    return-object p0
.end method

.method public static getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 0

    .line 209
    invoke-static {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 1

    .line 176
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem;->todoItemTypeFactory:Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/models/internal/TodoItem$ExtensibleTypeFactory;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p0

    return-object p0
.end method

.method public static isDocument(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z
    .locals 1

    .line 226
    instance-of v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    if-eqz v0, :cond_0

    .line 227
    check-cast p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isDocument()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isReaderContent(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z
    .locals 1

    .line 233
    instance-of v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    if-eqz v0, :cond_0

    .line 234
    check-cast p0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->isReaderContent()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->getAction(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    .line 540
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "non-supported action type !"

    invoke-static {v1, v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .line 463
    iget-wide v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->creationTimestamp:J

    return-wide v0
.end method

.method public getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getItemAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->itemAttributes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 607
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    return v0
.end method

.method public getServerFailureCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->itemAttributes:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setTitle(Ljava/lang/String;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isIncremental()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    return v0
.end method

.method public setAction(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 552
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    goto :goto_1

    .line 553
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/application/models/internal/TodoItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "non supported action !"

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setActionString(Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->action:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExcludedTransportMethods(Ljava/lang/String;)V
    .locals 0

    .line 503
    invoke-static {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->getTransportMethod(Ljava/lang/String;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->excludedTransportMethod:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    .line 736
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->guid:Ljava/lang/String;

    return-void
.end method

.method public setIncremental(Z)V
    .locals 0

    .line 651
    iput-boolean p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->incremental:Z

    return-void
.end method

.method public setItemAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->key:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 634
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->priority:I

    return-void
.end method

.method public setRemoveBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 681
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 615
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->sequence:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 704
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 594
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    goto :goto_1

    .line 595
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/application/models/internal/TodoItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "non supported type !"

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setTypeString(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 666
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->url:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 713
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem;->value:Ljava/lang/String;

    return-void
.end method
