.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$QueueHolder;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueHolder"
.end annotation


# static fields
.field static final queue:Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 787
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$QueueHolder;->queue:Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
