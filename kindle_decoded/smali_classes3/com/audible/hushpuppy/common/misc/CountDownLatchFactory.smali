.class public final Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;
.super Ljava/lang/Object;
.source "CountDownLatchFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory1<",
        "Ljava/util/concurrent/CountDownLatch;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;->get(Ljava/lang/Integer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Integer;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method
