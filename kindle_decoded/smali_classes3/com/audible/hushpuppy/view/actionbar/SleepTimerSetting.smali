.class final enum Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;
.super Ljava/lang/Enum;
.source "SleepTimerSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

.field public static final enum END_OF_CHAPTER:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

.field public static final enum FIFTEEN_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

.field public static final enum OFF:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

.field public static final enum SIXTY_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

.field public static final enum TEN_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

.field public static final enum THIRTY_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;


# instance fields
.field private final accessibilityStringResourceId:I

.field private final displayStringResourceId:I

.field private final eventFunctor:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

.field private final sleepDurationMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v6, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->sleep_timer_none:I

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_sleep_timer_button_none:I

    sget-object v5, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    const-string v1, "OFF"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;)V

    sput-object v6, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->OFF:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    sget v10, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->sleep_timer_ten:I

    sget v11, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_sleep_timer_button:I

    sget-object v12, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    const-wide/32 v1, 0x927c0

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v8, "TEN_MINUTES"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;Ljava/lang/Long;)V

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->TEN_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    .line 26
    new-instance v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->sleep_timer_fifteen:I

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_sleep_timer_button:I

    sget-object v6, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    const-wide/32 v1, 0xdbba0

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v2, "FIFTEEN_MINUTES"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;Ljava/lang/Long;)V

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->FIFTEEN_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    .line 30
    new-instance v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    sget v11, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->sleep_timer_thirty:I

    sget v12, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_sleep_timer_button:I

    sget-object v13, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    const-wide/32 v1, 0x1b7740

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v9, "THIRTY_MINUTES"

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;Ljava/lang/Long;)V

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->THIRTY_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->sleep_timer_sixty:I

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_sleep_timer_button:I

    sget-object v6, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    const-wide/32 v1, 0x36ee80

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v2, "SIXTY_MINUTES"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;Ljava/lang/Long;)V

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->SIXTY_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    sget v11, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->sleep_timer_end_of_chapter:I

    sget v12, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->accessibility_sleep_timer_button_end_of_chapter:I

    sget-object v13, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;->CREATE_FUNCTOR:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    const-string v9, "END_OF_CHAPTER"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;)V

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->END_OF_CHAPTER:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    .line 16
    sget-object v2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->OFF:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->TEN_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->FIFTEEN_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->THIRTY_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->SIXTY_MINUTES:Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->$VALUES:[Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;-><init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->displayStringResourceId:I

    .line 63
    iput p4, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->accessibilityStringResourceId:I

    .line 64
    iput-object p5, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->eventFunctor:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    .line 65
    iput-object p6, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->sleepDurationMillis:Ljava/lang/Long;

    return-void
.end method

.method public static fromOrdinal(I)Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;
    .locals 5

    .line 116
    invoke-static {}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->values()[Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 117
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->displayStringResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getDisplayStringArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    .line 131
    invoke-static {}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->values()[Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    move-result-object v0

    .line 132
    array-length v1, v0

    .line 133
    new-array v1, v1, [Ljava/lang/String;

    .line 136
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 137
    invoke-direct {v5, p0}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->getDisplayString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;
    .locals 1

    .line 16
    const-class v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;
    .locals 1

    .line 16
    sget-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->$VALUES:[Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;

    return-object v0
.end method


# virtual methods
.method public getAccessiblityString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->sleepDurationMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->accessibilityStringResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->accessibilityStringResourceId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->getDisplayString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->eventFunctor:Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$ICreateFunctor;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerSetting;->sleepDurationMillis:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/misc/IFunctor;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
