.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy<",
        "TK;TV;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)V
    .locals 2

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$100(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 429
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$200(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 430
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$300(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->expirationNanos:J

    .line 432
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$400(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->buildMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$100(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 438
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$200(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 439
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$300(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->expirationNanos:J

    .line 441
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$400(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->buildComputingMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 695
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 696
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 698
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 699
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 701
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 659
    iget-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 665
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 549
    :try_start_0
    invoke-interface {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->setValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " returned null for key "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$NullOutputExceptionReference;

    invoke-direct {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$NullOutputExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V

    .line 561
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$NullOutputException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$NullOutputException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 551
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ComputationExceptionReference;

    invoke-direct {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V

    .line 553
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$ComputationException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Object;
    .locals 0

    .line 419
    check-cast p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 503
    invoke-interface {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    .line 504
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$500()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-interface {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    .line 507
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;

    invoke-direct {p3, p0, p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V

    invoke-interface {p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V

    return-object p1

    .line 511
    :cond_0
    invoke-interface {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getHash()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    .line 513
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;->copyFor(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V

    return-object p1
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 419
    check-cast p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    check-cast p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHash(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)I
    .locals 0

    .line 493
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getHash()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 0

    .line 419
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->getHash(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)I

    move-result p1

    return p1
.end method

.method public getKey(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 489
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 419
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->getKey(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNext(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 642
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getNext()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 419
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->getNext(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 541
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object p1

    .line 542
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 419
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->getValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public newEntry(Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->newEntry(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 419
    check-cast p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 463
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 464
    sget-object p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$ExpirationTimer;->instance:Ljava/util/Timer;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public setInternals(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    return-void
.end method

.method public setValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->referenceValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V

    .line 447
    iget-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 448
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 419
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->setValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 574
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$500()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V

    if-eqz v0, :cond_1

    .line 577
    monitor-enter p1

    .line 578
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 579
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public waitForValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 524
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    .line 525
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$500()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 526
    monitor-enter p1

    .line 528
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$500()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 529
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 531
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 419
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->waitForValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
