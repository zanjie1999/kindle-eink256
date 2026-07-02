.class public Lcom/amazon/startactions/jit/SequenceBoundedCounter;
.super Ljava/lang/Object;
.source "SequenceBoundedCounter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.jit.SequenceBoundedCounter"


# instance fields
.field private counter:I

.field private final counterName:Ljava/lang/String;

.field private final sequence:[Ljava/lang/Integer;

.field private sequenceIndex:I

.field private final sequenceName:Ljava/lang/String;

.field private final type:Lcom/amazon/startactions/jit/SubtleJitType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/startactions/jit/SubtleJitType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->type:Lcom/amazon/startactions/jit/SubtleJitType;

    .line 41
    iput-object p2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequence:[Ljava/lang/Integer;

    .line 45
    invoke-direct {p0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 3

    .line 149
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from shared preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    const-string v1, "anyactions.autoshelving"

    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getIntegerPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getIntegerPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    iput v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceIndex:I

    return-void
.end method

.method private save()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "and Sequence index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to shared preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    const-string v2, "anyactions.autoshelving"

    invoke-static {v2, v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setIntPreference(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceName:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceIndex:I

    invoke-static {v2, v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setIntPreference(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCurrentUpperBound()I
    .locals 3

    .line 102
    iget v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceIndex:I

    iget-object v1, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequence:[Ljava/lang/Integer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 103
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method public getType()Lcom/amazon/startactions/jit/SubtleJitType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->type:Lcom/amazon/startactions/jit/SubtleJitType;

    return-object v0
.end method

.method public incrementCounter()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->isCounterAtUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reached upper bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    .line 65
    iget v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->sequenceIndex:I

    .line 68
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    sget-object v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increment counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2
    iget v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    .line 72
    invoke-direct {p0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->save()V

    return-void
.end method

.method public isCounterAtUpperBound()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    invoke-virtual {p0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->getCurrentUpperBound()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetCounter()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->counter:I

    .line 117
    invoke-direct {p0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->save()V

    return-void
.end method
