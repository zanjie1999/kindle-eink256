.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;
.super Ljava/lang/Object;
.source "RxModule.java"


# static fields
.field public static final BACKGROUND_SCHEDULER:Ljava/lang/String; = "background-scheduler"

.field public static final MAIN_THREAD_SCHEDULER:Ljava/lang/String; = "main-scheduler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesBackgroundWorkerScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 27
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public providesMainThreadScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 33
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
