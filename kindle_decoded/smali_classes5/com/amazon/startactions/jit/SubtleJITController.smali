.class public Lcom/amazon/startactions/jit/SubtleJITController;
.super Ljava/lang/Object;
.source "SubtleJITController.java"


# static fields
.field private static final AUTO_SHELF_DISABLED_SEQUENCE:[Ljava/lang/Integer;

.field private static final AUTO_SHELF_ENABLED_SEQUENCE:[Ljava/lang/Integer;

.field private static final SENSITIVE_BOOK_SEQUENCE:[Ljava/lang/Integer;


# instance fields
.field private activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

.field private final autoShelfDisabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

.field private final autoShelfEnabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

.field private final sensitiveBookCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v0, v7

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v2

    sput-object v0, Lcom/amazon/startactions/jit/SubtleJITController;->AUTO_SHELF_ENABLED_SEQUENCE:[Ljava/lang/Integer;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v5, v0, v3

    aput-object v6, v0, v4

    aput-object v8, v0, v1

    .line 24
    sput-object v0, Lcom/amazon/startactions/jit/SubtleJITController;->AUTO_SHELF_DISABLED_SEQUENCE:[Ljava/lang/Integer;

    new-array v0, v4, [Ljava/lang/Integer;

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/startactions/jit/SubtleJITController;->SENSITIVE_BOOK_SEQUENCE:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    sget-object v1, Lcom/amazon/startactions/jit/SubtleJitType;->AUTO_SHELF_EXPERIENCE_ENABLED:Lcom/amazon/startactions/jit/SubtleJitType;

    sget-object v2, Lcom/amazon/startactions/jit/SubtleJITController;->AUTO_SHELF_ENABLED_SEQUENCE:[Ljava/lang/Integer;

    const-string v3, "autoShelfEnabledSubtleJITCounter"

    const-string v4, "autoShelfEnabledSubtleJITSequence"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;-><init>(Lcom/amazon/startactions/jit/SubtleJitType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfEnabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    .line 38
    new-instance v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    sget-object v1, Lcom/amazon/startactions/jit/SubtleJitType;->AUTO_SHELF_EXPERIENCE_DISABLED:Lcom/amazon/startactions/jit/SubtleJitType;

    sget-object v2, Lcom/amazon/startactions/jit/SubtleJITController;->AUTO_SHELF_DISABLED_SEQUENCE:[Ljava/lang/Integer;

    const-string v3, "autoShelfDisabledSubtleJITCounter"

    const-string v4, "autoShelfDisabledSubtleJITSequence"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;-><init>(Lcom/amazon/startactions/jit/SubtleJitType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfDisabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    .line 39
    new-instance v0, Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    sget-object v1, Lcom/amazon/startactions/jit/SubtleJitType;->SENSITIVE_BOOK_EXPERIENCE:Lcom/amazon/startactions/jit/SubtleJitType;

    sget-object v2, Lcom/amazon/startactions/jit/SubtleJITController;->SENSITIVE_BOOK_SEQUENCE:[Ljava/lang/Integer;

    const-string/jumbo v3, "sensitiveBookSubtleJITCounter"

    const-string/jumbo v4, "sensitiveBookSubtleJITSequence"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;-><init>(Lcom/amazon/startactions/jit/SubtleJitType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/amazon/startactions/jit/SubtleJITController;->sensitiveBookCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    return-void
.end method


# virtual methods
.method public getSubtleJITType(Z)Lcom/amazon/startactions/jit/SubtleJitType;
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->sensitiveBookCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->isCounterAtUpperBound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->sensitiveBookCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->getType()Lcom/amazon/startactions/jit/SubtleJitType;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->isCounterAtUpperBound()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->getType()Lcom/amazon/startactions/jit/SubtleJitType;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    sget-object p1, Lcom/amazon/startactions/jit/SubtleJitType;->NONE:Lcom/amazon/startactions/jit/SubtleJitType;

    return-object p1
.end method

.method public onAutoShelfExperienceWasShown(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/amazon/startactions/jit/SubtleJITController;->sensitiveBookCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    invoke-virtual {p2}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->incrementCounter()V

    :cond_0
    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfEnabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfDisabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    :goto_0
    iput-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    .line 56
    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->incrementCounter()V

    return-void
.end method

.method public onAutoShelfToggleChange(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfEnabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfDisabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    :goto_0
    iput-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->resetCounter()V

    :cond_1
    return-void
.end method

.method public onBlockingJITWasDismissed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfEnabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->autoShelfDisabledCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    :goto_0
    iput-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    .line 95
    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->resetCounter()V

    .line 96
    iget-object p1, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->incrementCounter()V

    return-void
.end method

.method public onSensitiveJITWasShown()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/startactions/jit/SubtleJITController;->activeAutoShelfCounter:Lcom/amazon/startactions/jit/SequenceBoundedCounter;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/amazon/startactions/jit/SequenceBoundedCounter;->resetCounter()V

    :cond_0
    return-void
.end method
