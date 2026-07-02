.class public Lde/greenrobot/event/util/ThrowableFailureEvent;
.super Ljava/lang/Object;
.source "ThrowableFailureEvent.java"


# instance fields
.field private executionContext:Ljava/lang/Object;

.field protected final throwable:Ljava/lang/Throwable;


# virtual methods
.method public getExecutionScope()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->executionContext:Ljava/lang/Object;

    return-object v0
.end method
