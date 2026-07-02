.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;
.super Ljava/lang/Object;
.source "IntervalLogCode.java"


# static fields
.field private static final CODE_INTERVAL_EMPTY:I = 0x1

.field private static final CODE_INTERVAL_LOGGED:I = 0x2

.field private static final CODE_INTERVAL_NOT_LOGGED:I = 0x4

.field public static final INTERVAL_LOGGED:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_CONTROLLER_OFF:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_FIRST_INTERVAL:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_GOTO_JUMP:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_CURRENT_SCREEN:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_INTERVAL:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_PERCENT_READ:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_SCREEN_READ:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_STATE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_TRANSITION_TYPE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_INVALID_WORDS:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_PREV_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field public static final INTERVAL_NOT_LOGGED_REREAD_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

.field private static final REASON_BOOK_STATE_INVALID:I = 0x400

.field private static final REASON_CONTROLLER_OFF:I = 0x1000

.field private static final REASON_EMPTY:I = 0x1

.field private static final REASON_FIRST_INTERVAL:I = 0x8

.field private static final REASON_GOTO_JUMP:I = 0x10

.field private static final REASON_INVALID_CURRENT_SCREEN:I = 0x200

.field private static final REASON_INVALID_PERCENT_READ:I = 0x4

.field private static final REASON_INVALID_SCREEN_READ:I = 0x100

.field private static final REASON_INVALID_TIME_INTERVAL:I = 0x40

.field private static final REASON_INVALID_TRANSITION_TYPE:I = 0x800

.field private static final REASON_INVALID_WORDS_IN_SCREEN:I = 0x2

.field private static final REASON_PREV_PAGE:I = 0x20

.field private static final REASON_REREAD_PAGE:I = 0x80


# instance fields
.field private code:I

.field private reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    .line 136
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_LOGGED:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 141
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_WORDS:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 147
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    invoke-direct {v0, v1, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_PERCENT_READ:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 154
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_FIRST_INTERVAL:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 160
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_INTERVAL:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 171
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_REREAD_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 176
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_SCREEN_READ:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 181
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_CURRENT_SCREEN:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 186
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_GOTO_JUMP:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 191
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_PREV_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 196
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_STATE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 202
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_INVALID_TRANSITION_TYPE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    .line 207
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;-><init>(II)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->INTERVAL_NOT_LOGGED_CONTROLLER_OFF:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->code:I

    .line 47
    iput p2, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CODE: "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->code:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Interval Not Logged"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "Interval Logged"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "No valid Code present"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ". REASON: "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    const-string v1, "No valid Reason provided."

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_3
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    const-string v1, "Invalid number of words in screen."

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_4
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const-string v1, "Invalid percentage read."

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_5
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    const-string v1, "First Interval."

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_6
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    const-string v1, "Go to jump."

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_7
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const-string v1, "Previous page."

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_8
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    const-string v1, "Invalid time interval."

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_9
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    const-string v1, "Page was re-read."

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_a
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    const-string v1, "Invalid screen to log."

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_b
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    const-string v1, "Current screen is invalid."

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_c
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_d

    const-string v1, "Invalid book state."

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_d
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_e

    const-string v1, "Invalid Transition Type."

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_e
    iget v1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/IntervalLogCode;->reason:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_f

    const-string v1, "Controller state is OFF."

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
