.class public final Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;
.super Ljava/lang/Object;
.source "SleepTimerEvent.java"


# static fields
.field public static final CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

.field private static final INSTANCE:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer$1;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    .line 106
    new-instance v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;->INSTANCE:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;
    .locals 1

    .line 93
    sget-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;->INSTANCE:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    const-class v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
