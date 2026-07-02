.class public Lcom/amazon/kindle/ffs/utils/SingletonHolder;
.super Ljava/lang/Object;
.source "SingletonHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingletonHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingletonHolder.kt\ncom/amazon/kindle/ffs/utils/SingletonHolder\n*L\n1#1,28:1\n*E\n"
.end annotation


# instance fields
.field private creator:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->creator:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 15
    :cond_0
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->creator:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->instance:Ljava/lang/Object;

    .line 22
    iput-object v1, p0, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->creator:Lkotlin/jvm/functions/Function0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    return-object v0

    .line 20
    :cond_2
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    throw v0
.end method
