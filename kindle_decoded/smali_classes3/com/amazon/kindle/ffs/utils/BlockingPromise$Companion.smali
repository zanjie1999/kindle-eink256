.class public final Lcom/amazon/kindle/ffs/utils/BlockingPromise$Companion;
.super Ljava/lang/Object;
.source "BlockingPromise.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/utils/BlockingPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/utils/BlockingPromise$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final completed(Ljava/lang/Object;)Lcom/amazon/kindle/ffs/utils/BlockingPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/amazon/kindle/ffs/utils/BlockingPromise<",
            "TT;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    return-object v0
.end method
