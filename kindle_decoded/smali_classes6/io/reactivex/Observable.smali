.class public abstract Lio/reactivex/Observable;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lio/reactivex/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferSize()I
    .locals 1

    .line 168
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    return v0
.end method

.method public static concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1184
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1185
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ObservableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1186
    invoke-static {v0}, Lio/reactivex/Observable;->concatArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1217
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 1218
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 1219
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/ObservableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1220
    invoke-static {v0}, Lio/reactivex/Observable;->concatArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1279
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1280
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 1282
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1283
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 1285
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableConcatMap;

    invoke-static {p0}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->identity()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v2

    sget-object v3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableConcatMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableOnSubscribe<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1634
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1635
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Lio/reactivex/ObservableOnSubscribe;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1666
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1667
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDefer;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableDefer;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private doOnEach(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 8135
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 8136
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 8137
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 8138
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8139
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static empty()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1690
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex/Observable;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 1741
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1742
    invoke-static {p0}, Lio/reactivex/internal/functions/Functions;->justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1715
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1716
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableError;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    .line 1765
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1766
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1767
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 1769
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1770
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 1772
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFromArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableFromArray;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1983
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1984
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFromIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 2389
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2390
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableJust;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableJust;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 2416
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 2417
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 2419
    invoke-static {v0}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3070
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 3071
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3072
    invoke-static {v1}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->identity()Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;ZI)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 2893
    invoke-static {p0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->identity()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 3590
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableNever;->INSTANCE:Lio/reactivex/Observable;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 3619
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3622
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3627
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRange;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRange;-><init>(II)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 3625
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3616
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    .line 13805
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 13806
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13807
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;-><init>(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3948
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 3977
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3978
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3980
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimer;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/ObservableTimer;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 4085
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4086
    instance-of v0, p0, Lio/reactivex/Observable;

    if-eqz v0, :cond_0

    .line 4087
    check-cast p0, Lio/reactivex/Observable;

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 4089
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFromUnsafeSource;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableFromUnsafeSource;-><init>(Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "+TT1;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT2;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 4250
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4251
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4252
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->toFunction(Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;

    move-result-object p2

    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, Lio/reactivex/Observable;->zipArray(Lio/reactivex/functions/Function;ZI[Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lio/reactivex/functions/Function;ZI[Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 4931
    array-length v0, p3

    if-nez v0, :cond_0

    .line 4932
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4934
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4935
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 4936
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableZip;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableZip;-><init>([Lio/reactivex/ObservableSource;Ljava/lang/Iterable;Lio/reactivex/functions/Function;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cast(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/Observable<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 6323
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6324
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->castFunction(Ljava/lang/Class;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableTransformer<",
            "-TT;+TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    .line 6417
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/ObservableTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/ObservableTransformer;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6442
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lio/reactivex/functions/Function;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;I)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 6469
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 6470
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 6471
    instance-of v0, p0, Lio/reactivex/internal/fuseable/ScalarCallable;

    if-eqz v0, :cond_1

    .line 6473
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/fuseable/ScalarCallable;

    invoke-interface {p2}, Lio/reactivex/internal/fuseable/ScalarCallable;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6475
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 6477
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->scalarXMap(Ljava/lang/Object;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 6479
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableConcatMap;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/observable/ObservableConcatMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7183
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7184
    invoke-static {p0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 8017
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8018
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 8068
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8069
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDoFinally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDoFinally;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 8116
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/Observable;->doOnEach(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 8219
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-direct {p0, v0, p1, v1, v1}, Lio/reactivex/Observable;->doOnEach(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnLifecycle(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 8242
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 8243
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8244
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableDoOnLifecycle;-><init>(Lio/reactivex/Observable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 8264
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-direct {p0, p1, v0, v1, v1}, Lio/reactivex/Observable;->doOnEach(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 8287
    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->doOnLifecycle(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final elementAtOrError(J)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 8399
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;-><init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 8397
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 8421
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8422
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFilter;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFilter;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final firstOrError()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 8481
    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->elementAtOrError(J)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8507
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/functions/Function;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;Z)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 8536
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;ZI)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/functions/Function;ZI)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 8569
    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8605
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 8606
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 8607
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 8608
    instance-of v0, p0, Lio/reactivex/internal/fuseable/ScalarCallable;

    if-eqz v0, :cond_1

    .line 8610
    move-object p2, p0

    check-cast p2, Lio/reactivex/internal/fuseable/ScalarCallable;

    invoke-interface {p2}, Lio/reactivex/internal/fuseable/ScalarCallable;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8612
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 8614
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->scalarXMap(Ljava/lang/Object;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 8616
    :cond_1
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableFlatMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8916
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;Z)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lio/reactivex/functions/Function;Z)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;Z)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 8936
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8937
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9057
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lio/reactivex/functions/Function;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;Z)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9079
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9080
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 9459
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableHide;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableHide;-><init>(Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lio/reactivex/Completable;
    .locals 1

    .line 9477
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable;-><init>(Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 9780
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9781
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 9825
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9826
    invoke-static {p0, p1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 9925
    invoke-static {}, Lio/reactivex/Observable;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;ZI)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/Scheduler;ZI)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            "ZI)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 9990
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 9991
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 9992
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;ZI)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final ofType(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/Observable<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 10013
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10014
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->isInstanceOf(Ljava/lang/Class;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 10049
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10050
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableOnErrorNext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableOnErrorNext;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 10118
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10119
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final publish(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 10256
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10257
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final publish()Lio/reactivex/observables/ConnectableObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    .line 10231
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/ObservablePublish;->create(Lio/reactivex/ObservableSource;)Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Lio/reactivex/observables/ConnectableObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 10819
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 10820
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay;->create(Lio/reactivex/ObservableSource;I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 11224
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11225
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRetryWhen;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Ljava/lang/Object;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    .line 11501
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11502
    invoke-static {p1}, Lio/reactivex/internal/functions/Functions;->justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->scanWith(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final scanWith(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 11536
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    .line 11537
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11538
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableScanSeed;-><init>(Lio/reactivex/ObservableSource;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final share()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 11587
    invoke-virtual {p0}, Lio/reactivex/Observable;->publish()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/observables/ConnectableObservable;->refCount()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final singleElement()Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 11606
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe;-><init>(Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrError()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 11650
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSingleSingle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/ObservableSingleSingle;-><init>(Lio/reactivex/ObservableSource;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 11673
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 11675
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSkip;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/ObservableSource;J)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 12058
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ObservableSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 12059
    invoke-static {v0}, Lio/reactivex/Observable;->concatArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 12082
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ObservableSource;

    .line 12083
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/Observable;->concatArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/disposables/Disposable;
    .locals 4

    .line 12130
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;

    sget-object v2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 12181
    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 12246
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 12247
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 12248
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    .line 12249
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12251
    new-instance v0, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)V

    .line 12253
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 12261
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12263
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 12265
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12267
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeActual(Lio/reactivex/Observer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12271
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 12274
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 12276
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12277
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12278
    throw v0

    :catch_0
    move-exception p1

    .line 12269
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/Observer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 12343
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12344
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/Observer<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 12319
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-object p1
.end method

.method public final take(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 12738
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTake;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableTake;-><init>(Lio/reactivex/ObservableSource;J)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 12736
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    .line 13124
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13125
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 13635
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/Observable;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 13662
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13663
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/Observable;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/BackpressureStrategy;",
            ")",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 14314
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFromObservable;-><init>(Lio/reactivex/Observable;)V

    .line 14316
    sget-object v1, Lio/reactivex/Observable$1;->$SwitchMap$io$reactivex$BackpressureStrategy:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 14326
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onBackpressureBuffer()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 14324
    :cond_0
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError;-><init>(Lio/reactivex/Flowable;)V

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 14320
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onBackpressureLatest()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 14318
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onBackpressureDrop()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "+TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 15351
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15352
    invoke-static {p0, p1, p2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
