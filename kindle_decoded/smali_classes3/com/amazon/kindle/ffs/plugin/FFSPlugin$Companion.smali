.class public final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
    .locals 1

    .line 72
    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getInstance$cp()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    return-object v0
.end method
