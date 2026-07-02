.class public abstract Lcom/amazon/kedu/ftue/events/FTUEEvent;
.super Ljava/lang/Object;
.source "FTUEEvent.java"


# static fields
.field private static priorityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kedu/ftue/events/FTUEEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;

.field private final metricKey:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/amazon/kedu/ftue/events/FTUEEvent$1;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/events/FTUEEvent$1;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->priorityComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->key:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->priority:I

    .line 26
    iput-object p3, p0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->metricKey:Ljava/lang/String;

    return-void
.end method

.method public static getPriorityComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/amazon/kedu/ftue/events/FTUEEvent;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->priorityComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public abstract evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->metricKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/kedu/ftue/events/FTUEEvent;->priority:I

    return v0
.end method
