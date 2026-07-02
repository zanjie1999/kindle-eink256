.class public Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations;
.super Ljava/lang/Object;
.source "UniqueAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;
    }
.end annotation


# static fields
.field private static final nextUniqueValue:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations;->nextUniqueValue:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations;->nextUniqueValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations;->create(I)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method static create(I)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;-><init>(I)V

    return-object v0
.end method
