.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDefaultProcessName:Ljava/lang/String;

.field mExceptionHandler:Landroidx/work/InitializationExceptionHandler;

.field mExecutor:Ljava/util/concurrent/Executor;

.field mInputMergerFactory:Landroidx/work/InputMergerFactory;

.field mLoggingLevel:I

.field mMaxJobSchedulerId:I

.field mMaxSchedulerLimit:I

.field mMinJobSchedulerId:I

.field mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field mTaskExecutor:Ljava/util/concurrent/Executor;

.field mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 303
    iput v0, p0, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    const v0, 0x7fffffff

    .line 305
    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    const/16 v0, 0x14

    .line 306
    iput v0, p0, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Configuration;
    .locals 1

    .line 509
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method
