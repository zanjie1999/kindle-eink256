.class public final enum Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;
.super Ljava/lang/Enum;
.source "FeedbackStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

.field public static final enum already_known:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

.field public static final enum hard_words:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

.field public static final enum helpful:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

.field public static final enum wrong_meaning:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

.field public static final enum wrong_meaning_no_alternates:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    const/4 v1, 0x0

    const-string v2, "already_known"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->already_known:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    .line 14
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    const/4 v2, 0x1

    const-string v3, "hard_words"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->hard_words:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    .line 15
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    const/4 v3, 0x2

    const-string v4, "helpful"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->helpful:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    .line 16
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    const/4 v4, 0x3

    const-string/jumbo v5, "wrong_meaning"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    .line 17
    new-instance v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    const/4 v5, 0x4

    const-string/jumbo v6, "wrong_meaning_no_alternates"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning_no_alternates:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    .line 9
    sget-object v7, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->already_known:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->hard_words:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->helpful:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->wrong_meaning:Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->$VALUES:[Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->$VALUES:[Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/wordwise/feedback/FeedbackStatus;

    return-object v0
.end method
