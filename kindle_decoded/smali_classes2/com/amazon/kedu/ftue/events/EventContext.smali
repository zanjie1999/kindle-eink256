.class public Lcom/amazon/kedu/ftue/events/EventContext;
.super Ljava/lang/Object;
.source "EventContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/ftue/events/EventContext$Trigger;
    }
.end annotation


# instance fields
.field private final bookContext:Lcom/amazon/kindle/krx/content/IBook;

.field private final dataManager:Lcom/amazon/kedu/ftue/data/IDataManager;

.field private final trigger:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

.field private final triggerKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/ftue/data/IDataManager;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kedu/ftue/events/EventContext$Trigger;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kedu/ftue/events/EventContext;->dataManager:Lcom/amazon/kedu/ftue/data/IDataManager;

    .line 31
    iput-object p2, p0, Lcom/amazon/kedu/ftue/events/EventContext;->bookContext:Lcom/amazon/kindle/krx/content/IBook;

    .line 32
    iput-object p3, p0, Lcom/amazon/kedu/ftue/events/EventContext;->trigger:Lcom/amazon/kedu/ftue/events/EventContext$Trigger;

    .line 33
    iput-object p4, p0, Lcom/amazon/kedu/ftue/events/EventContext;->triggerKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookContext()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/EventContext;->bookContext:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/EventContext;->dataManager:Lcom/amazon/kedu/ftue/data/IDataManager;

    invoke-interface {v0, p1}, Lcom/amazon/kedu/ftue/data/IDataManager;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object p1

    return-object p1
.end method

.method public isMobiOrTopaz()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/ftue/util/Utils;->isMobiOrTopaz(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method

.method public isReflowable()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/ftue/util/Utils;->isFixedFormat(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTextbook()Z
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/EventContext;->getBookContext()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/ftue/util/Utils;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method
