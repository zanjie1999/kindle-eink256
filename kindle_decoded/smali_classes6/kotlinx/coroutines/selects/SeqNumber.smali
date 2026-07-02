.class public final Lkotlinx/coroutines/selects/SeqNumber;
.super Ljava/lang/Object;
.source "Select.kt"


# static fields
.field private static final synthetic number$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic number:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/selects/SeqNumber;

    const-string v1, "number"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SeqNumber;->number$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 227
    iput-wide v0, p0, Lkotlinx/coroutines/selects/SeqNumber;->number:J

    return-void
.end method


# virtual methods
.method public final next()J
    .locals 2

    .line 228
    sget-object v0, Lkotlinx/coroutines/selects/SeqNumber;->number$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
