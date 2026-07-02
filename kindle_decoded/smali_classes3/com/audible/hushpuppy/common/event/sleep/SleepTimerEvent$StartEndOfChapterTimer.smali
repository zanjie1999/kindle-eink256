.class public final Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;
.super Ljava/lang/Object;
.source "SleepTimerEvent.java"


# static fields
.field public static final CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

.field private static final INSTANCE:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer$1;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    .line 74
    new-instance v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;->INSTANCE:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;
    .locals 1

    .line 61
    sget-object v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;->INSTANCE:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    const-class v0, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
